create or replace view PROD_DNA_CORE.dbt_cloud_pr_5458_1492.ASPEDW_ACCESS_EDW_RPT_COPA_CUSTOMERGP_AGG(
	"fisc_yr",
	"fisc_yr_per",
	"fisc_day",
	"ctry_nm",
	"cluster",
	"prft_ctr",
	"obj_crncy_co_obj",
	"matl_num",
	"matl_desc",
	"matl_grp_cd",
	"mega_brnd_desc",
	"brnd_desc",
	"pka_sub_brand_desc",
	"sap_prod_mnr_desc",
	"varnt_desc",
	"sap_frnchse_desc",
	"pka_size_desc",
	"pka_package_desc",
	"pka_product_key_description",
	"gcph_franchise",
	"gcph_variant",
	"regional_portfolio",
	"loc_prod1",
	"loc_prod2",
	"loc_prod3",
	"loc_prod4",
	"loc_prod5",
	"loc_prod6",
	"loc_prod7",
	"loc_prod8",
	"loc_prod9",
	"loc_prod10",
	"market_portfolio",
	"cust_num",
	"parent customer",
	"banner",
	"banner format",
	"channel",
	"go to model",
	"sub channel",
	"retail_env",
	"loc_channel1",
	"loc_channel2",
	"loc_channel3",
	"loc_cust1",
	"loc_cust2",
	"loc_cust3",
	"customer_segmentation",
	"local_cust_segmentation",
	"local_cust_segmentation_2",
	"ntstt_lcy",
	"ntstt_usd",
	"ntstp_lcy",
	"ntstp_usd",
	"nts_lcy",
	"nts_usd",
	"gts_lcy",
	"gts_usd",
	"cfreegood_lcy",
	"cfreegood_usd",
	"stdcogs_lcy",
	"stdcogs_usd",
	"rtn_lcy",
	"rtn_usd",
	"glhd_lcy",
	"glhd_usd",
	"py_ntstt_lcy",
	"py_ntstt_usd",
	"py_ntstp_lcy",
	"py_ntstp_usd",
	"py_nts_lcy",
	"py_nts_usd",
	"py_gts_lcy",
	"py_gts_usd",
	"py_cfreegood_lcy",
	"py_cfreegood_usd",
	"py_stdcogs_lcy",
	"py_stdcogs_usd",
	"py_rtn_lcy",
	"py_rtn_usd",
	"py_glhd_lcy",
	"py_glhd_usd"
) as
select fisc_yr as "fisc_yr",
    fisc_yr_per as "fisc_yr_per",
    fisc_day as "fisc_day",
    ctry_nm as "ctry_nm",
    cluster as "cluster",
    prft_ctr as "prft_ctr",
    obj_crncy_co_obj as "obj_crncy_co_obj",
    matl_num as "matl_num",
    matl_desc as "matl_desc",
    matl_grp_cd as "matl_grp_cd",
    mega_brnd_desc as "mega_brnd_desc",
    brnd_desc as "brnd_desc",
    pka_sub_brand_desc as "pka_sub_brand_desc",
    sap_prod_mnr_desc as "sap_prod_mnr_desc",
    varnt_desc as "varnt_desc",
    sap_frnchse_desc as "sap_frnchse_desc",
    pka_size_desc as "pka_size_desc",
    pka_package_desc as "pka_package_desc",
    pka_product_key_description as "pka_product_key_description",
    gcph_franchise as "gcph_franchise",
    gcph_variant as "gcph_variant",
    regional_portfolio as "regional_portfolio",
    loc_prod1 as "loc_prod1",
    loc_prod2 as "loc_prod2",
    loc_prod3 as "loc_prod3",
    loc_prod4 as "loc_prod4",
    loc_prod5 as "loc_prod5",
    loc_prod6 as "loc_prod6",
    loc_prod7 as "loc_prod7",
    loc_prod8 as "loc_prod8",
    loc_prod9 as "loc_prod9",
    loc_prod10 as "loc_prod10",
    market_portfolio as "market_portfolio",
    cust_num as "cust_num",
    "parent customer" as "parent customer",
    banner as "banner",
    "banner format" as "banner format",
    channel as "channel",
    "go to model" as "go to model",
    "sub channel" as "sub channel",
    retail_env as "retail_env",
    loc_channel1 as "loc_channel1",
    loc_channel2 as "loc_channel2",
    loc_channel3 as "loc_channel3",
    loc_cust1 as "loc_cust1",
    loc_cust2 as "loc_cust2",
    loc_cust3 as "loc_cust3",
    customer_segmentation as "customer_segmentation",
    local_cust_segmentation as "local_cust_segmentation",
    local_cust_segmentation_2 as "local_cust_segmentation_2",
    ntstt_lcy as "ntstt_lcy",
    ntstt_usd as "ntstt_usd",
    ntstp_lcy as "ntstp_lcy",
    ntstp_usd as "ntstp_usd",
    nts_lcy as "nts_lcy",
    nts_usd as "nts_usd",
    gts_lcy as "gts_lcy",
    gts_usd as "gts_usd",
    cfreegood_lcy as "cfreegood_lcy",
    cfreegood_usd as "cfreegood_usd",
    stdcogs_lcy as "stdcogs_lcy",
    stdcogs_usd as "stdcogs_usd",
    rtn_lcy as "rtn_lcy",
    rtn_usd as "rtn_usd",
    glhd_lcy as "glhd_lcy",
    glhd_usd as "glhd_usd",
    py_ntstt_lcy as "py_ntstt_lcy",
    py_ntstt_usd as "py_ntstt_usd",
    py_ntstp_lcy as "py_ntstp_lcy",
    py_ntstp_usd as "py_ntstp_usd",
    py_nts_lcy as "py_nts_lcy",
    py_nts_usd as "py_nts_usd",
    py_gts_lcy as "py_gts_lcy",
    py_gts_usd as "py_gts_usd",
    py_cfreegood_lcy as "py_cfreegood_lcy",
    py_cfreegood_usd as "py_cfreegood_usd",
    py_stdcogs_lcy as "py_stdcogs_lcy",
    py_stdcogs_usd as "py_stdcogs_usd",
    py_rtn_lcy as "py_rtn_lcy",
    py_rtn_usd as "py_rtn_usd",
    py_glhd_lcy as "py_glhd_lcy",
    py_glhd_usd as "py_glhd_usd"
from  prod_dna_core.dbt_cloud_pr_5458_1492.aspedw_integration__edw_rpt_copa_customergp_agg;
