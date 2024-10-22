delete from PROD_DNA_CORE.DBT_CLOUD_PR_5458_1220.VNMWKS_INTEGRATION__WKS_VIETNAM_REGIONAL_SELLOUT_BASE where DATA_SRC = 'POS';

insert into PROD_DNA_CORE.DBT_CLOUD_PR_5458_1220.VNMWKS_INTEGRATION__WKS_VIETNAM_REGIONAL_SELLOUT_BASE (
SELECT 'POS' AS DATA_SRC,
    'VN' AS    CNTRY_CD,
    'Vietnam' AS CNTRY_NM,
    TIME_DIM."year"::INT AS YEAR,
    time_dim.mnth_id::INT AS MNTH_ID,
     TO_DATE(pos.year||lpad(pos.month,2,'00')||'01','YYYYMMDD') AS DAY,
     time_dim.cal_year::INT as univ_year,
     time_dim.cal_mnth_no::INT as univ_month,
     pos.parameter_value as SOLDTO_CODE,
    'NA' AS DISTRIBUTOR_CODE,
    customername AS DISTRIBUTOR_NAME,
    shopcode AS STORE_CD,
    shopname AS STORE_NAME,
     channelname AS store_type,
    nvl(pos.barcode,'NA') AS EAN,
    --nvl(vtdp.jnj_sap_code,matsls.matl_num) AS MATL_NUM,
	coalesce(vtdp.jnj_sap_code,matsls.matl_num, matdim.matl_num) AS MATL_NUM,
     productname AS Customer_Product_Desc,
     stt AS region,
     area AS zone_or_area,
     pos.quantity::numeric(38,23) as SO_SLS_QTY,
     pos.amount::numeric(38,23) as SO_SLS_VALUE,
      nvl(pos.barcode,'NA') as msl_product_code,
      channelname as retail_env,
      'MT' as channel,
      current_timestamp() as crtd_dttm,
	current_timestamp() as updt_dttm
   FROM (select * from PROD_DNA_CORE.VNMITG_INTEGRATION.ITG_SPIRAL_MTI_OFFTAKE pos_inner,(select parameter_value from PROD_DNA_CORE.SGPITG_INTEGRATION.ITG_QUERY_PARAMETERS
   where country_code = 'VN' and parameter_name = 'vn_dksh_soldto_code')) pos
    LEFT JOIN (select * from (select distinct barcode, jnj_sap_code, row_number() OVER (PARTITION BY barcode order by jnj_sap_code DESC) rnk from PROD_DNA_CORE.VNMEDW_INTEGRATION.EDW_VW_VN_MT_DIST_PRODUCTS) where rnk=1) vtdp ON LTRIM(pos.barcode,'0') = LTRIM(vtdp.barcode,'0')
    LEFT JOIN (select matl_num,ean_num as matsls_ean from
       (Select ltrim(matl_num,'0') as matl_num,ltrim(ean_num,'0') as ean_num, row_number() over (partition by ltrim(ean_num,'0') order by crt_dttm desc) as rn
         from PROD_DNA_CORE.ASPEDW_INTEGRATION.EDW_MATERIAL_SALES_DIM where sls_org in
          (select distinct sls_org from PROD_DNA_CORE.ASPEDW_INTEGRATION.EDW_SALES_ORG_DIM where sls_org_co_cd in
            (select distinct co_cd from PROD_DNA_CORE.ASPEDW_INTEGRATION.EDW_COMPANY_DIM where crncy_key = 'VND' and ctry_key = 'VN' and ctry_group = 'Vietnam'))
      and (ean_num != 'N/A' and nullif(ean_num,'') is not null)) where rn = 1) matsls 
      ON LTRIM(matsls.matsls_ean,'0') = LTRIM(pos.barcode,'0')
	LEFT JOIN (select prmry_upc_cd as matdim_ean, matl_num from (select ltrim(prmry_upc_cd,'0') as prmry_upc_cd, ltrim(matl_num,'0') as matl_num, row_number() over (partition by ltrim(prmry_upc_cd,'0') order by crt_dttm desc) as rn from PROD_DNA_CORE.ASPEDW_INTEGRATION.EDW_MATERIAL_DIM) where rn = 1) matdim ON  LTRIM(matdim.matdim_ean,'0') = LTRIM(pos.barcode,'0')
    LEFT JOIN PROD_DNA_CORE.SGPEDW_INTEGRATION.EDW_VW_OS_TIME_DIM time_dim on TO_DATE(pos.year||lpad(pos.month,2,'00')|| '01','YYYYMMDD') = time_dim.cal_date
where NOT (nvl(so_sls_value, 0) = 0 and nvl(so_sls_qty, 0) = 0) AND day > (select to_date(param_value,'YYYY-MM-DD') from PROD_DNA_CORE.ASPITG_INTEGRATION.ITG_MDS_AP_CUSTOMER360_CONFIG where code='min_date') 
AND mnth_id>= (case when (select param_value from PROD_DNA_CORE.ASPITG_INTEGRATION.ITG_MDS_AP_CUSTOMER360_CONFIG where code='base_load_vn')='ALL' then '190001' else to_char(add_months(to_date(current_date::varchar, 'YYYY-MM-DD'), -((select param_value from PROD_DNA_CORE.ASPITG_INTEGRATION.ITG_MDS_AP_CUSTOMER360_CONFIG where code='base_load_vn')::integer)), 'YYYYMM')
end));

------------------------------

delete from PROD_DNA_CORE.DBT_CLOUD_PR_5458_1220.VNMWKS_INTEGRATION__WKS_VIETNAM_REGIONAL_SELLOUT;

insert into PROD_DNA_CORE.DBT_CLOUD_PR_5458_1220.VNMWKS_INTEGRATION__WKS_VIETNAM_REGIONAL_SELLOUT(
with wks_vietnam_regional_sellout_base as (
select * from PROD_DNA_CORE.DBT_CLOUD_PR_5458_1220.VNMWKS_INTEGRATION__WKS_VIETNAM_REGIONAL_SELLOUT_BASE
),
edw_vw_os_time_dim as (
select * from PROD_DNA_CORE.sgpedw_integration.edw_vw_os_time_dim
),
edw_material_dim as (
select * from PROD_DNA_CORE.aspedw_integration.edw_material_dim
),
edw_gch_producthierarchy as (
select * from PROD_DNA_CORE.aspedw_integration.edw_gch_producthierarchy
),
edw_product_key_attributes as (
select * from PROD_DNA_CORE.aspedw_integration.edw_product_key_attributes
),
edw_gch_customerhierarchy as (
select * from PROD_DNA_CORE.aspedw_integration.edw_gch_customerhierarchy
),
edw_customer_sales_dim as (
select * from PROD_DNA_CORE.aspedw_integration.edw_customer_sales_dim
),
edw_customer_base_dim as (
select * from PROD_DNA_CORE.aspedw_integration.edw_customer_base_dim
),
edw_company_dim as (
select * from PROD_DNA_CORE.aspedw_integration.edw_company_dim
),
edw_dstrbtn_chnl as (
select * from PROD_DNA_CORE.aspedw_integration.edw_dstrbtn_chnl
),
edw_sales_org_dim as (
select * from PROD_DNA_CORE.aspedw_integration.edw_sales_org_dim
),
edw_code_descriptions as (
select * from PROD_DNA_CORE.aspedw_integration.edw_code_descriptions
),
edw_subchnl_retail_env_mapping as (
select * from PROD_DNA_CORE.aspedw_integration.edw_subchnl_retail_env_mapping
),
edw_code_descriptions_manual as (
select * from PROD_DNA_CORE.aspedw_integration.edw_code_descriptions_manual
),
vw_edw_reg_exch_rate as (
select * from PROD_DNA_CORE.aspedw_integration.vw_edw_reg_exch_rate
)

 select 
	year,
	qrtr_no,
	mnth_id,
	mnth_no,
	cal_date,
	univ_year,
	univ_month,
	country_code,	   
	country_name,
	data_source,
	soldto_code,
	distributor_code,
	distributor_name,
	store_code,
	store_name,
	store_type,
	distributor_additional_attribute1,
	distributor_additional_attribute2,
	distributor_additional_attribute3,
	sap_parent_customer_key,
	sap_parent_customer_description,
	sap_customer_channel_key,
	sap_customer_channel_description,
	sap_customer_sub_channel_key,
	sap_sub_channel_description,
	sap_go_to_mdl_key,
	sap_go_to_mdl_description,
	sap_banner_key,
	sap_banner_description,
	sap_banner_format_key,
	sap_banner_format_description,
	retail_environment,
	region,
	zone_or_area,
	customer_segment_key,
	customer_segment_description, 
	global_product_franchise,
	global_product_brand,
	global_product_sub_brand,
	global_product_variant,
	global_product_segment,
	global_product_subsegment,
	global_product_category,
	global_product_subcategory,
	global_put_up_description,
	ean,
	sku_code,
	sku_description,
	--greenlight_sku_flag,
	case when pka_product_key in ('N/A','NA') then 'NA'
		else pka_product_key end as pka_product_key,
	case when pka_product_key_description in ('N/A','NA') then 'NA'
		else pka_product_key_description end as pka_product_key_description,	
	--trim(nvl (nullif(product.sls_org,''),'NA')) as sls_org,
	customer_product_desc,
	from_currency,
	to_currency,
	exchange_rate,
	sellout_sales_quantity,
	sellout_sales_value,
	sellout_sales_value_usd,
    msl_product_code,
    msl_product_desc,
    retail_env,
    channel,
	crtd_dttm,
	updt_dttm
from
(select  
		cast(time.year as varchar(10)) as year,
	   cast(time.qrtr_no as varchar(14)) as qrtr_no,
	   cast(time.mnth_id as varchar(21)) as mnth_id,
	   cast(time.mnth_no as varchar(10)) as mnth_no,
	   sellout.day  as cal_date,
	   sellout.univ_year  as univ_year,
	   sellout.univ_month  as univ_month,
	   sellout.cntry_cd as country_code,	   
	   sellout.cntry_nm as country_name,
	   sellout.data_src as data_source,
	   trim(nvl (nullif(sellout.soldto_code,''),'NA')) as soldto_code,
	   distributor_code,
	   distributor_name,
	   store_cd as store_code,
	   trim(store_name) as store_name,
	   trim(nvl (nullif(sellout.store_type,''),'NA')) as store_type,
	   'NA' as distributor_additional_attribute1,
       'NA' as distributor_additional_attribute2,
       'NA' as distributor_additional_attribute3,
	   trim(nvl (nullif(cust.sap_prnt_cust_key,''),'NA')) as sap_parent_customer_key,
	   upper(trim(nvl (nullif(cust.sap_prnt_cust_desc,''),'NA'))) as sap_parent_customer_description,
	   trim(nvl (nullif(cust.sap_cust_chnl_key,''),'NA')) as sap_customer_channel_key,
	   upper(trim(nvl (nullif(cust.sap_cust_chnl_desc,''),'NA'))) as sap_customer_channel_description,
	   trim(nvl (nullif(cust.sap_cust_sub_chnl_key,''),'NA')) as sap_customer_sub_channel_key,
	   upper(trim(nvl (nullif(cust.sap_sub_chnl_desc,''),'NA'))) as sap_sub_channel_description,
	   trim(nvl (nullif(cust.sap_go_to_mdl_key,''),'NA')) as sap_go_to_mdl_key,
	   upper(trim(nvl (nullif(cust.sap_go_to_mdl_desc,''),'NA'))) as sap_go_to_mdl_description,
	   trim(nvl (nullif(cust.sap_bnr_key,''),'NA')) as sap_banner_key,
	   upper(trim(nvl (nullif(cust.sap_bnr_desc,''),'NA'))) as sap_banner_description,
	   trim(nvl (nullif(cust.sap_bnr_frmt_key,''),'NA')) as sap_banner_format_key,
	   upper(trim(nvl (nullif(cust.sap_bnr_frmt_desc,''),'NA'))) as sap_banner_format_description,
	   trim(nvl (nullif(cust.retail_env,''),'NA')) as retail_environment,
	   trim(nvl (nullif(cust.cust_segmt_key,''),'NA')) as customer_segment_key,
	   trim(nvl (nullif(cust.cust_segment_desc,''),'NA')) as customer_segment_description, 
	   trim(nvl (nullif(product.gph_prod_frnchse,''),'NA')) as global_product_franchise,
	   trim(nvl (nullif(product.gph_prod_brnd,''),'NA')) as global_product_brand,
	   trim(nvl (nullif(product.gph_prod_sub_brnd,''),'NA')) as global_product_sub_brand,
	   trim(nvl (nullif(product.gph_prod_vrnt,''),'NA')) as global_product_variant,
	   trim(nvl (nullif(product.gph_prod_sgmnt,''),'NA')) as global_product_segment,
	   trim(nvl (nullif(product.gph_prod_subsgmnt,''),'NA')) as global_product_subsegment,
	   trim(nvl (nullif(product.gph_prod_ctgry,''),'NA')) as global_product_category,
	   trim(nvl (nullif(product.gph_prod_subctgry,''),'NA')) as global_product_subcategory,
	   trim(nvl (nullif(product.gph_prod_put_up_desc,''),'NA')) as global_put_up_description,
	   sellout.ean as ean,
	   trim(nvl (nullif(product.sap_matl_num,''),'NA')) as sku_code,
	   upper(trim(nvl (nullif(product.sap_mat_desc,''),'NA'))) as sku_description,
	   --trim(nvl (nullif(product.greenlight_sku_flag,''),'NA')) as greenlight_sku_flag,
	   case when  trim(nvl (nullif(product.pka_product_key,''),'NA')) not in ('N/A','NA') then trim(nvl (nullif(product.pka_product_key,''),'NA'))
		when trim(nvl (nullif(prod_key1.pka_productkey,''),'NA')) not in ('N/A','NA') then trim(nvl (nullif(prod_key1.pka_productkey,''),'NA'))
		when trim(nvl (nullif(prod_key2.pka_productkey,''),'NA')) not in ('N/A','NA') then trim(nvl (nullif(prod_key2.pka_productkey,''),'NA'))
		else trim(nvl (nullif(product.pka_product_key,''),'NA')) end as pka_product_key,
	   case when  trim(nvl (nullif(product.pka_product_key,''),'NA')) not in ('N/A','NA') then trim(nvl (nullif(product.pka_product_key_description,''),'NA'))
		when trim(nvl (nullif(prod_key1.pka_productkey,''),'NA')) not in ('N/A','NA') then trim(nvl (nullif(prod_key1.pka_productdesc,''),'NA'))
		when trim(nvl (nullif(prod_key2.pka_productkey,''),'NA')) not in ('N/A','NA') then trim(nvl (nullif(prod_key2.pka_productdesc,''),'NA'))
		else trim(nvl (nullif(product.pka_product_key_description,''),'NA')) end as pka_product_key_description,	
	   --trim(nvl (nullif(product.pka_product_key,''),'NA')) as pka_product_key,
	   --trim(nvl (nullif(product.pka_product_key_description,''),'NA')) as pka_product_key_description,
	   --trim(nvl (nullif(product.sls_org,''),'NA')) as sls_org,
	   trim(nvl (nullif(sellout.customer_product_desc,''),'NA')) as customer_product_desc,
	   trim(nvl (nullif(sellout.region,''),'NA')) as region,
       trim(nvl (nullif(sellout.zone_or_area,''),'NA')) as zone_or_area,
	   cast('VND' as varchar) as from_currency,
	   'USD' as to_currency,
	   --c.exch_rate as exchange_rate,
	   (c.exch_rate/(c.from_ratio*c.to_ratio))::numeric(15,5) as exchange_rate,
		sum(so_sls_qty) sellout_sales_quantity,
		sum(so_sls_value) as sellout_sales_value,
		sum(so_sls_value*((c.exch_rate/(c.from_ratio*c.to_ratio))::numeric(15,5)))::numeric(38,11) sellout_sales_value_usd,
        CASE WHEN SELLOUT.DATA_SRC='POS' THEN TRIM(NVL (NULLIF(SELLOUT.msl_product_code,''),'NA'))
         ELSE TRIM(NVL (NULLIF(PRODUCT.SAP_MATL_NUM,''),'NA')) END AS msl_product_code,
        CASE WHEN (UPPER(PRODUCT.PKA_PACKAGE) IN ('MIX PACK', 'ASSORTED PACK') OR PRODUCT.PKA_PACKAGE IS NULL) THEN UPPER(TRIM(NVL (NULLIF(PRODUCT.SAP_MAT_DESC,''),'NA')))
        ELSE (CASE WHEN TRIM(NVL (NULLIF(PRODUCT.PKA_PRODUCT_KEY,''),'NA')) NOT IN ('N/A','NA') THEN TRIM(NVL (NULLIF(PRODUCT.PKA_PRODUCT_KEY_DESCRIPTION,''),'NA'))
            WHEN TRIM(NVL (NULLIF(PROD_KEY1.pka_productkey,''),'NA')) NOT IN ('N/A','NA') THEN TRIM(NVL (NULLIF(PROD_KEY1.pka_productdesc,''),'NA'))
            WHEN TRIM(NVL (NULLIF(PROD_KEY2.pka_productkey,''),'NA')) NOT IN ('N/A','NA') THEN TRIM(NVL (NULLIF(PROD_KEY2.pka_productdesc,''),'NA'))
            ELSE TRIM(NVL (NULLIF(PRODUCT.PKA_PRODUCT_KEY_DESCRIPTION,''),'NA')) END)
        END AS msl_product_desc,
        --TRIM(NVL (NULLIF(SELLOUT.store_grade,''),'NA')) AS store_grade,
        TRIM(NVL (NULLIF(SELLOUT.retail_env,''),'NA')) AS retail_env,
        TRIM(NVL (NULLIF(SELLOUT.channel,''),'NA')) AS channel,
	   sellout.crtd_dttm,
	   SELLOUT.updt_dttm
from wks_vietnam_regional_sellout_base sellout

left join (select distinct cal_year as year,
       cal_qrtr_no as qrtr_no,
       cal_mnth_id as mnth_id,
       cal_mnth_no as mnth_no
from edw_vw_os_time_dim) time
on sellout.mnth_id=time.mnth_id


--product selection
left join (select distinct 

          emd.matl_num as sap_matl_num,
          emd.matl_desc as sap_mat_desc,
          emd.matl_type_cd as sap_mat_type_cd,
          emd.matl_type_desc as sap_mat_type_desc,
          --emd.sap_base_uom_cd as sap_base_uom_cd,
          --emd.sap_prchse_uom_cd as sap_prchse_uom_cd,
          emd.prodh1 as sap_prod_sgmt_cd,
          emd.prodh1_txtmd as sap_prod_sgmt_desc,
          --emd.sap_base_prod_cd as sap_base_prod_cd,
          emd.base_prod_desc as sap_base_prod_desc,
          --emd.sap_mega_brnd_cd as sap_mega_brnd_cd,
          emd.mega_brnd_desc as sap_mega_brnd_desc,
          --emd.sap_brnd_cd as sap_brnd_cd,
          emd.brnd_desc as sap_brnd_desc,
          --emd.sap_vrnt_cd as sap_vrnt_cd,
          emd.varnt_desc as sap_vrnt_desc,
          --emd.sap_put_up_cd as sap_put_up_cd,
          emd.put_up_desc as sap_put_up_desc,
          emd.prodh2 as sap_grp_frnchse_cd,
          emd.prodh2_txtmd as sap_grp_frnchse_desc,
          emd.prodh3 as sap_frnchse_cd,
          emd.prodh3_txtmd as sap_frnchse_desc,
          emd.prodh4 as sap_prod_frnchse_cd,
          emd.prodh4_txtmd as sap_prod_frnchse_desc,
          emd.prodh5 as sap_prod_mjr_cd,
          emd.prodh5_txtmd as sap_prod_mjr_desc,
          emd.prodh5 as sap_prod_mnr_cd,
          emd.prodh5_txtmd as sap_prod_mnr_desc,
          emd.prodh6 as sap_prod_hier_cd,
          emd.prodh6_txtmd as sap_prod_hier_desc,
		  --emd.sls_org as sls_org,
		  --emd.greenlight_sku_flag as greenlight_sku_flag,
		  emd.pka_product_key as pka_product_key,
		  emd.pka_product_key_description as pka_product_key_description,
          egph."region" as gph_region,
          egph.regional_franchise as gph_reg_frnchse,
          egph.regional_franchise_group as gph_reg_frnchse_grp,
          egph.gcph_franchise as gph_prod_frnchse,
          egph.gcph_brand as gph_prod_brnd,
          egph.gcph_subbrand as gph_prod_sub_brnd,
          egph.gcph_variant as gph_prod_vrnt,
          egph.gcph_needstate as gph_prod_needstate,
          egph.gcph_category as gph_prod_ctgry,
          egph.gcph_subcategory as gph_prod_subctgry,
          egph.gcph_segment as gph_prod_sgmnt,
          egph.gcph_subsegment as gph_prod_subsgmnt,
          egph.put_up_code as gph_prod_put_up_cd,
          egph.put_up_description as gph_prod_put_up_desc,
          egph.size as gph_prod_size,
          egph.unit_of_measure as gph_prod_size_uom,
          EMD.PKA_PACKAGE_DESC AS PKA_PACKAGE,
          row_number() over( partition by sap_matl_num order by sap_matl_num) rnk           
          from 
		   
		  edw_material_dim EMD,
          EDW_GCH_PRODUCTHIERARCHY EGPH
          where LTRIM(EMD.MATL_NUM,0) = LTRIM(EGPH.MATERIALNUMBER(+),0)
          and   EMD.PROD_HIER_CD <> ''
          
	  ) product
 on ltrim(sellout.matl_num,'0') = ltrim(product.sap_matl_num,'0') and rnk=1
 
 --product key attribute selection
 left join
 (select a.ctry_nm, a.ean_upc, a.sku, a.pka_productkey, a.pka_productdesc
	from ( select ctry_nm, ltrim(ean_upc, '0') as ean_upc, ltrim(matl_num, '0') as sku, pka_productkey, pka_productdesc, lst_nts as nts_date
         from edw_product_key_attributes
        where (matl_type_cd = 'FERT' OR matl_type_cd = 'HALB' OR matl_type_cd = 'SAPR') and lst_nts is not null) a
	join ( select ctry_nm, ltrim(ean_upc, '0') as ean_upc, ltrim(matl_num, '0') as sku, lst_nts as latest_nts_date, 
      row_number() over( 
        partition by ctry_nm, ean_upc
        ORDER BY lst_nts DESC) as row_number
         from edw_product_key_attributes
        where (matl_type_cd = 'FERT' OR matl_type_cd = 'HALB' OR matl_type_cd = 'SAPR') and lst_nts is not null
        ) b
	on a.ctry_nm = b.ctry_nm and a.ean_upc = b.ean_upc and a.sku = b.sku
	and b.latest_nts_date = a.nts_date and b.row_number = 1 and a.ctry_nm = 'Vietnam') PROD_KEY1
on ltrim(SELLOUT.matl_num, '0') = ltrim(PROD_KEY1.sku, '0') 

left join
 (select a.ctry_nm, a.ean_upc, a.sku, a.pka_productkey, a.pka_productdesc
	from ( select ctry_nm, ltrim(ean_upc, '0') as ean_upc, ltrim(matl_num, '0') as sku, pka_productkey, pka_productdesc, lst_nts as nts_date
         from edw_product_key_attributes
        where (matl_type_cd = 'FERT' OR matl_type_cd = 'HALB' OR matl_type_cd = 'SAPR') and lst_nts is not null) a
	join ( select ctry_nm, ltrim(ean_upc, '0') as ean_upc, ltrim(matl_num, '0') as sku, lst_nts as latest_nts_date, 
      row_number() over( 
        partition by ctry_nm, ean_upc
        ORDER BY lst_nts DESC) as row_number
         from edw_product_key_attributes
        where (matl_type_cd = 'FERT' OR matl_type_cd = 'HALB' OR matl_type_cd = 'SAPR') and lst_nts is not null
        ) b
	on a.ctry_nm = b.ctry_nm and a.ean_upc = b.ean_upc and a.sku = b.sku
	and b.latest_nts_date = a.nts_date and b.row_number = 1 and a.ctry_nm = 'Vietnam') PROD_KEY2
on ltrim(SELLOUT.ean, '0') = ltrim(PROD_KEY2.ean_upc, '0') 
 
 ---customer selection
left join (select * from (select distinct ecbd.cust_num as sap_cust_id,
       ecbd.cust_nm as sap_cust_nm,
       ecsd.sls_org as sap_sls_org,
       ecd.company as sap_cmp_id,
       ecd.ctry_key as sap_cntry_cd,
       ecd.ctry_nm as sap_cntry_nm,
       ecsd.prnt_cust_key as sap_prnt_cust_key,
       cddes_pck.code_desc as sap_prnt_cust_desc,
       ecsd.chnl_key as sap_cust_chnl_key,
       cddes_chnl.code_desc as sap_cust_chnl_desc,
       ecsd.sub_chnl_key as sap_cust_sub_chnl_key,
       cddes_subchnl.code_desc as sap_sub_chnl_desc,
       ecsd.go_to_mdl_key as sap_go_to_mdl_key,
       cddes_gtm.code_desc as sap_go_to_mdl_desc,
       ecsd.bnr_key as sap_bnr_key,
       cddes_bnrkey.code_desc as sap_bnr_desc,
       ecsd.bnr_frmt_key as sap_bnr_frmt_key,
       cddes_bnrfmt.code_desc as sap_bnr_frmt_desc,
       subchnl_retail_env.retail_env,
       --regzone.region_name as region,
       --regzone.zone_name as zone_or_area,
       egch.gcgh_region as gch_region,
       egch.gcgh_cluster as gch_cluster,
       egch.gcgh_subcluster as gch_subcluster,
       egch.gcgh_market as gch_market,
       egch.gcch_retail_banner as gch_retail_banner,
       ecsd.segmt_key as cust_segmt_key,
       codes_segment.code_desc as cust_segment_desc,
       --row_number() over (partition by sap_cust_id order by sap_prnt_cust_key,cust_segmt_key asc nulls last) as rank
	   row_number() over (partition by sap_cust_id order by nullif(ecsd.prnt_cust_key,''),nullif(ecsd.bnr_key,''),nullif(ecsd.bnr_frmt_key,''),nullif(ecsd.segmt_key,'') asc nulls last) as rank
from edw_gch_customerhierarchy egch,
     edw_customer_sales_dim ecsd,
     edw_customer_base_dim ecbd,
     edw_company_dim ecd,
     edw_dstrbtn_chnl edc,
     edw_sales_org_dim esod,
     edw_code_descriptions cddes_pck,
     edw_code_descriptions cddes_bnrkey,
     edw_code_descriptions cddes_bnrfmt,
     edw_code_descriptions cddes_chnl,
     edw_code_descriptions cddes_gtm,
     edw_code_descriptions cddes_subchnl,
     edw_subchnl_retail_env_mapping subchnl_retail_env,
     edw_code_descriptions_manual codes_segment,
     (select distinct cust_num,rec_crt_dt,prnt_cust_key,row_number() over (partition by cust_num order by rec_crt_dt desc)rn from edw_customer_sales_dim) a
where egch.customer(+) = ecbd.cust_num
and   ecsd.cust_num = ecbd.cust_num

and   a.cust_num = ecsd.cust_num
and   ecsd.dstr_chnl = edc.distr_chan
and   ecsd.sls_org = esod.sls_org
and   esod.sls_org_co_cd = ecd.co_cd
and   a.rn=1
and   upper(trim(cddes_pck.code_type(+))) = 'PARENT CUSTOMER KEY'
and   cddes_pck.code(+) = ecsd.prnt_cust_key
and   upper(trim(cddes_bnrkey.code_type(+))) = 'BANNER KEY'
and   cddes_bnrkey.code(+) = ecsd.bnr_key
and   upper(trim(cddes_bnrfmt.code_type(+))) = 'BANNER FORMAT KEY'
and   cddes_bnrfmt.code(+) = ecsd.bnr_frmt_key
and   upper(trim(cddes_chnl.code_type(+))) = 'CHANNEL KEY'
and   cddes_chnl.code(+) = ecsd.chnl_key
and   upper(trim(cddes_gtm.code_type(+))) = 'GO TO MODEL KEY'
and   CDDES_GTM.CODE(+) = ECSD.GO_TO_MDL_KEY
and   upper(trim(cddes_subchnl.code_type(+))) = 'SUB CHANNEL KEY'
and   cddes_subchnl.code(+) = ecsd.sub_chnl_key
and   upper(subchnl_retail_env.sub_channel(+)) = upper(cddes_subchnl.code_desc)
--and   ltrim(ecsd.cust_num,'0') = regzone.customer_code(+)
and   CODES_SEGMENT.code_type(+) = 'Customer Segmentation Key'
and   codes_segment.code(+) = ecsd.segmt_key)
where rank = 1) cust
on ltrim(sellout.soldto_code,'0')=ltrim(cust.sap_cust_id,'0')

left join 

(select *
  from vw_edw_reg_exch_rate
  where cntry_key = 'VN'
  and   to_ccy = 'USD'
  and   jj_mnth_id = (select max(jj_mnth_id) from vw_edw_reg_exch_rate)
) C
 on   upper(sellout.cntry_nm) = upper(c.cntry_nm)  
            
where  c.from_ccy = 'VND' 
group by 
	  time.year,
	  time.qrtr_no,
	  sellout.day,
	  univ_year,
	  univ_month,
	  sellout.cntry_cd,	   
	  sellout.cntry_nm,
	  time.mnth_id,
	  time.mnth_no,
	  --concat(cast(time.mnth_id as varchar(21)),'01'),
	  sellout.data_src,
	  sellout.soldto_code, 
	  distributor_code,
	  distributor_name,
	  store_cd,
	  store_name,
	  store_type,
	  distributor_additional_attribute1,
	  distributor_additional_attribute2 ,
	  distributor_additional_attribute3 ,
	  cust.sap_prnt_cust_key, 
	  cust.sap_prnt_cust_desc, 
	  cust.sap_cust_chnl_key, 
	  cust.sap_cust_chnl_desc, 
	  cust.sap_cust_sub_chnl_key, 
	  cust.sap_sub_chnl_desc, 
	  cust.sap_go_to_mdl_key, 
	  cust.sap_go_to_mdl_desc, 
	  cust.sap_bnr_key, 
	  cust.sap_bnr_desc, 
	  cust.sap_bnr_frmt_key, 
	  cust.sap_bnr_frmt_desc, 
	  cust.retail_env, 
	  --cust.region, 
	  --cust.zone_or_area, 
	  cust.cust_segmt_key, 
	  cust.cust_segment_desc, 
	  product.gph_prod_frnchse, 
	  product.gph_prod_brnd, 
	  product.gph_prod_sub_brnd, 
	  product.gph_prod_vrnt, 
	  product.gph_prod_sgmnt, 
	  product.gph_prod_subsgmnt, 
	  product.gph_prod_ctgry, 
	  product.gph_prod_subctgry, 
	  product.gph_prod_put_up_desc, 
	  sellout.ean,
	  product.sap_matl_num, 
	  product.sap_mat_desc, 
	  --product.greenlight_sku_flag, 
	  --product.pka_product_key, 
	  --product.pka_product_key_description,
	  case when  trim(nvl (nullif(product.pka_product_key,''),'NA')) not in ('N/A','NA') then trim(nvl (nullif(product.pka_product_key,''),'NA'))
		when trim(nvl (nullif(prod_key1.pka_productkey,''),'NA')) not in ('N/A','NA') then trim(nvl (nullif(prod_key1.pka_productkey,''),'NA'))
		when trim(nvl (nullif(prod_key2.pka_productkey,''),'NA')) not in ('N/A','NA') then trim(nvl (nullif(prod_key2.pka_productkey,''),'NA'))
		else trim(nvl (nullif(product.pka_product_key,''),'NA')) end,
	  case when  trim(nvl (nullif(product.pka_product_key,''),'NA')) not in ('N/A','NA') then trim(nvl (nullif(product.pka_product_key_description,''),'NA'))
		when trim(nvl (nullif(prod_key1.pka_productkey,''),'NA')) not in ('N/A','NA') then trim(nvl (nullif(prod_key1.pka_productdesc,''),'NA'))
		when trim(nvl (nullif(prod_key2.pka_productkey,''),'NA')) not in ('N/A','NA') then trim(nvl (nullif(prod_key2.pka_productdesc,''),'NA'))
		else trim(nvl (nullif(product.pka_product_key_description,''),'NA')) end,
        PRODUCT.PKA_PACKAGE,
		  --product.sls_org,
		  sellout.customer_product_desc,
		  sellout.region, 
		  sellout.zone_or_area,
		  --c.exch_rate  
		(c.exch_rate/(c.from_ratio*c.to_ratio)),
          sellout.msl_product_code,
          --sellout.msl_product_desc,
          sellout.retail_env,
          sellout.channel,
		  sellout.crtd_dttm,
		  sellout.updt_dttm		  
having not (sum(sellout.so_sls_value) = 0 and sum(sellout.so_sls_qty) = 0)) 
);

----------------------------------

delete from PROD_DNA_CORE.DBT_CLOUD_PR_5458_1220.VNMWKS_INTEGRATION__WKS_VIETNAM_REGIONAL_SELLOUT_NPD;

insert into PROD_DNA_CORE.DBT_CLOUD_PR_5458_1220.VNMWKS_INTEGRATION__WKS_VIETNAM_REGIONAL_SELLOUT_NPD(
with wks_vietnam_regional_sellout as (
select * from PROD_DNA_CORE.DBT_CLOUD_PR_5458_1220.VNMWKS_INTEGRATION__WKS_VIETNAM_REGIONAL_SELLOUT
)
select *,
min(cal_date) over (partition by sap_parent_customer_key) as customer_min_date,
min(cal_date) over (partition by country_name) as market_min_date,
rank() over (partition by sap_parent_customer_key,pka_product_key order by cal_date) as rn_cus,
rank() over (partition by country_name,pka_product_key order by cal_date) as rn_mkt,
min(cal_date) over (partition by sap_parent_customer_key,pka_product_key) as customer_product_min_date, 
min(cal_date) over (partition by country_name,pka_product_key) as market_product_min_date
from wks_vietnam_regional_sellout);

-----------------------

delete from PROD_DNA_CORE.DBT_CLOUD_PR_5458_1220.VNMWKS_INTEGRATION__WKS_VIETNAM_REGIONAL_SELLOUT_OFFTAKE_NPD;

insert into PROD_DNA_CORE.DBT_CLOUD_PR_5458_1220.VNMWKS_INTEGRATION__WKS_VIETNAM_REGIONAL_SELLOUT_OFFTAKE_NPD(

with wks_vietnam_regional_sellout_npd as (
select * from PROD_DNA_CORE.DBT_CLOUD_PR_5458_1220.VNMWKS_INTEGRATION__WKS_VIETNAM_REGIONAL_SELLOUT_NPD
),
itg_mds_ap_customer360_config as (
select * from PROD_DNA_CORE.ASPITG_INTEGRATION.ITG_MDS_AP_CUSTOMER360_CONFIG
)

select *,
	   case when sellout_sales_quantity<>0 then sellout_sales_value/sellout_sales_quantity else 0 end as selling_price,
	   count(case when first_scan_flag_market_level = 'Y' then first_scan_flag_market_level end) over (partition by country_name,pka_product_key) as cnt_mkt from (
select *,
	   case when first_scan_flag_parent_customer_level_initial='Y' and rn_cus=1 then 'Y' else 'N' end as first_scan_flag_parent_customer_level,
	   case when first_scan_flag_market_level_initial='Y' and first_scan_flag_parent_customer_level_initial='Y' and rn_mkt=1 then 'Y' else 'N' end as first_scan_flag_market_level from (
select *,
	   -- CASE WHEN rn_cus=1 AND Customer_Product_Min_Date>dateadd(week,(select param_value from rg_sdl.sdl_mds_ap_customer360_config where code='npd_buffer_weeks')::integer,Customer_Min_Date) THEN 'Y' else 'N' END AS FIRST_SCAN_FLAG_PARENT_CUSTOMER_LEVEL,
	   -- CASE WHEN rn_mkt=1 AND Market_Product_Min_Date>dateadd(week,(select param_value from rg_sdl.sdl_mds_ap_customer360_config where code='npd_buffer_weeks')::integer,Market_Min_Date) THEN 'Y' else 'N' END AS FIRST_SCAN_FLAG_MARKET_LEVEL
	   case when customer_product_min_date>dateadd(week,(select param_value from itg_mds_ap_customer360_config where code='npd_buffer_weeks')::integer,customer_min_date) then 'Y' else 'N' end as first_scan_flag_parent_customer_level_initial,
	   case when market_product_min_date>dateadd(week,(select param_value from itg_mds_ap_customer360_config where code='npd_buffer_weeks')::integer,market_min_date) then 'Y' else 'N' end as first_scan_flag_market_level_initial
from (
select year,
       qrtr_no,
       mnth_id,
       mnth_no,
       cal_date,
	   univ_year,
	   univ_month,
	   country_code,
       country_name,
       data_source,
       soldto_code,
       distributor_code,
       distributor_name,
       store_code,
       store_name,
	   store_type,
       distributor_additional_attribute1,
       distributor_additional_attribute2,
       distributor_additional_attribute3,
       sap_parent_customer_key,
       sap_parent_customer_description,
       sap_customer_channel_key,
       sap_customer_channel_description,
       sap_customer_sub_channel_key,
       sap_sub_channel_description,
       sap_go_to_mdl_key,
       sap_go_to_mdl_description,
       sap_banner_key,
       sap_banner_description,
       sap_banner_format_key,
       sap_banner_format_description,
       retail_environment,
       region,
       zone_or_area,
       customer_segment_key,
       customer_segment_description,
       global_product_franchise,
       global_product_brand,
       global_product_sub_brand,
       global_product_variant,
       global_product_segment,
       global_product_subsegment,
       global_product_category,
       global_product_subcategory,
       global_put_up_description,
       ean,
       sku_code,
       sku_description,
       --greenlight_sku_flag,
       pka_product_key,
       pka_product_key_description,
	   --sls_org,
	   customer_product_desc,
       from_currency,
       to_currency,
       exchange_rate,
       sellout_sales_quantity,
       sellout_sales_value,
       sellout_sales_value_usd,
       0 as sellout_value_list_price,
       0 as sellout_value_list_price_usd,
	   customer_min_date,
	   customer_product_min_date,
	   market_min_date,
	   market_product_min_date,
	   rn_cus,
	   rn_mkt,
       msl_product_code,
       msl_product_desc,
       retail_env,
       channel,
	   crtd_dttm,
	   updt_dttm   	   
from wks_vietnam_regional_sellout_npd
 )))
);
