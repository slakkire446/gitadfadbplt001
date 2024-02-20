create or replace TABLE ASPITG_INTEGRATION.ITG_RG_TRAVEL_RETAIL_SELLOUT (
	CTRY_CD VARCHAR(2),
	CRNCY_CD VARCHAR(3),
	RETAILER_NAME VARCHAR(50),
	YEAR NUMBER(18,0),
	MONTH NUMBER(18,0),
	YEAR_MONTH VARCHAR(10),
	BRAND VARCHAR(50),
	SKU VARCHAR(50),
	PRODUCT_DESCRIPTION VARCHAR(100),
	DCL_CODE VARCHAR(50),
	EAN VARCHAR(50),
	RSP NUMBER(18,0),
	DOOR_NAME VARCHAR(50),
	SLS_QTY NUMBER(18,0),
	SLS_AMT NUMBER(21,5),
	STOCK_QTY NUMBER(18,0),
	STOCK_AMT NUMBER(21,5),
	CRT_DTTM TIMESTAMP_NTZ(9),
	UPDT_DTTM TIMESTAMP_NTZ(9),
	STORE_SLS_QTY NUMBER(18,0),
	STORE_SLS_AMT NUMBER(38,18),
	ECOMMERCE_SLS_QTY NUMBER(18,0),
	ECOMMERCE_SLS_AMT NUMBER(38,18),
	MEMBERSHIP_SLS_QTY NUMBER(18,0),
	MEMBERSHIP_SLS_AMT NUMBER(38,18)
);

CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_SAP_BILLING_CONDITION (		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_sap_billing_condition (
    bill_num varchar(10),		--//  ENCODE lzo // character varying
    bill_item varchar(6),		--//  ENCODE lzo // character varying
    zstepnum varchar(3),		--//  ENCODE lzo // character varying
    kncounter varchar(2),		--//  ENCODE lzo // character varying
    doc_number varchar(10),		--//  ENCODE lzo // character varying
    s_ord_item varchar(6),		--//  ENCODE lzo // character varying
    knart varchar(4),		--//  ENCODE lzo // character varying
    ch_on varchar(8),		--//  ENCODE lzo // character varying
    comp_code varchar(4),		--//  ENCODE lzo // character varying
    sales_dist varchar(6),		--//  ENCODE lzo // character varying
    bill_type varchar(4),		--//  ENCODE lzo // character varying
    bill_date varchar(8),		--//  ENCODE lzo // character varying
    bill_cat varchar(1),		--//  ENCODE lzo // character varying
    loc_currcy varchar(5),		--//  ENCODE lzo // character varying
    cust_group varchar(2),		--//  ENCODE lzo // character varying
    sold_to varchar(10),		--//  ENCODE lzo // character varying
    payer varchar(10),		--//  ENCODE lzo // character varying
    exrate_acc varchar(17),		--//  ENCODE lzo // character varying
    stat_curr varchar(5),		--//  ENCODE lzo // character varying
    doc_categ varchar(2),		--//  ENCODE lzo // character varying
    salesorg varchar(4),		--//  ENCODE lzo // character varying
    distr_chan varchar(2),		--//  ENCODE lzo // character varying
    doc_currcy varchar(5),		--//  ENCODE lzo // character varying
    createdon varchar(8),		--//  ENCODE lzo // character varying
    co_area varchar(4),		--//  ENCODE lzo // character varying
    costcenter varchar(10),		--//  ENCODE lzo // character varying
    trans_date varchar(8),		--//  ENCODE lzo // character varying
    exchg_rate varchar(25),		--//  ENCODE lzo // character varying
    cust_grp1 varchar(3),		--//  ENCODE lzo // character varying
    cust_grp2 varchar(3),		--//  ENCODE lzo // character varying
    cust_grp3 varchar(3),		--//  ENCODE lzo // character varying
    cust_grp4 varchar(3),		--//  ENCODE lzo // character varying
    cust_grp5 varchar(3),		--//  ENCODE lzo // character varying
    matl_group varchar(9),		--//  ENCODE lzo // character varying
    material varchar(18),		--//  ENCODE lzo // character varying
    mat_entrd varchar(18),		--//  ENCODE lzo // character varying
    matl_grp_1 varchar(3),		--//  ENCODE lzo // character varying
    matl_grp_2 varchar(3),		--//  ENCODE lzo // character varying
    matl_grp_3 varchar(3),		--//  ENCODE lzo // character varying
    matl_grp_4 varchar(3),		--//  ENCODE lzo // character varying
    matl_grp_5 varchar(3),		--//  ENCODE lzo // character varying
    billtoprty varchar(10),		--//  ENCODE lzo // character varying
    ship_to varchar(10),		--//  ENCODE lzo // character varying
    itm_type varchar(1),		--//  ENCODE lzo // character varying
    prod_hier varchar(18),		--//  ENCODE lzo // character varying
    prov_group varchar(2),		--//  ENCODE lzo // character varying
    price_date varchar(8),		--//  ENCODE lzo // character varying
    item_categ varchar(4),		--//  ENCODE lzo // character varying
    div_head varchar(2),		--//  ENCODE lzo // character varying
    division varchar(2),		--//  ENCODE lzo // character varying
    stat_date varchar(8),		--//  ENCODE lzo // character varying
    refer_doc varchar(10),		--//  ENCODE lzo // character varying
    refer_itm varchar(6),		--//  ENCODE lzo // character varying
    sales_off varchar(4),		--//  ENCODE lzo // character varying
    sales_grp varchar(3),		--//  ENCODE lzo // character varying
    wbs_elemt varchar(24),		--//  ENCODE lzo // character varying
    calday varchar(8),		--//  ENCODE lzo // character varying
    calmonth varchar(6),		--//  ENCODE lzo // character varying
    calweek varchar(6),		--//  ENCODE lzo // character varying
    fiscper varchar(7),		--//  ENCODE lzo // character varying
    fiscvarnt varchar(2),		--//  ENCODE lzo // character varying
    knclass varchar(4),		--//  ENCODE lzo // character varying
    knorigin varchar(4),		--//  ENCODE lzo // character varying
    kntyp varchar(4),		--//  ENCODE lzo // character varying
    knval numeric(17,3),		--//  ENCODE lzo
    kprice numeric(17,3),		--//  ENCODE lzo
    kinak varchar(1),		--//  ENCODE lzo // character varying
    kstat varchar(1),		--//  ENCODE lzo // character varying
    storno varchar(1),		--//  ENCODE lzo // character varying
    rt_promo varchar(10),		--//  ENCODE lzo // character varying
    rebate_grp varchar(2),		--//  ENCODE lzo // character varying
    bwapplnm varchar(30),		--//  ENCODE lzo // character varying
    processkey varchar(3),		--//  ENCODE lzo // character varying
    eanupc varchar(18),		--//  ENCODE lzo // character varying
    createdby varchar(12),		--//  ENCODE lzo // character varying
    serv_date varchar(8),		--//  ENCODE lzo // character varying
    inv_qty numeric(17,3),		--//  ENCODE lzo
    actual_quantity_pc numeric(17,3),		--//  ENCODE lzo
    forwagent varchar(10),		--//  ENCODE lzo // character varying
    salesemply varchar(8),		--//  ENCODE lzo // character varying
    sales_unit varchar(3),		--//  ENCODE lzo // character varying
    kappl varchar(2),		--//  ENCODE lzo // character varying
    acrn_id varchar(2),		--//  ENCODE lzo // character varying
    recordmode varchar(1),		--//  ENCODE lzo // character varying
    crt_dttm timestamp without time zone,		--//  ENCODE lzo
    source_file_name varchar(255)		--//  ENCODE lzo // character varying
)
;		--// DISTSTYLE EVEN;

--DROP TABLE ASPEDW_INTEGRATION.edw_calendar_dim;
CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.EDW_CALENDAR_DIM		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.edw_calendar_dim
(
	cal_day DATE
	,fisc_yr_vrnt VARCHAR(2)
	,wkday numeric(18,0)		--// INTEGER
	,cal_wk numeric(18,0)		--// INTEGER
	,cal_mo_1 numeric(18,0)		--// INTEGER
	,cal_mo_2 numeric(18,0)		--// INTEGER
	,cal_qtr_1 numeric(18,0)		--// INTEGER
	,cal_qtr_2 numeric(18,0)		--// INTEGER
	,half_yr numeric(18,0)		--// INTEGER
	,cal_yr numeric(18,0)		--// INTEGER
	,fisc_per numeric(18,0)		--// INTEGER
	,pstng_per numeric(18,0)		--// INTEGER
	,fisc_yr numeric(18,0)		--// INTEGER
	,rec_mode VARCHAR(1)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPEDW_INTEGRATION.edw_code_descriptions;
CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.EDW_CODE_DESCRIPTIONS		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.edw_code_descriptions
(
	source_type VARCHAR(10) NOT NULL 		--//  ENCODE lzo
	,code_type VARCHAR(50)  		--//  ENCODE lzo
	,code VARCHAR(15)  		--//  ENCODE lzo
	,code_desc VARCHAR(50)  		--//  ENCODE lzo
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPEDW_INTEGRATION.edw_company_dim;
CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.EDW_COMPANY_DIM		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.edw_company_dim
(
	clnt VARCHAR(3)
	,co_cd VARCHAR(4) NOT NULL
	,ctry_key VARCHAR(3)
	,ctry_nm VARCHAR(40)
	,crncy_key VARCHAR(5)
	,chrt_acct VARCHAR(4)
	,crdt_cntrl_area VARCHAR(4)
	,fisc_yr_vrnt VARCHAR(2)
	,company VARCHAR(6)
	,company_nm VARCHAR(100)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
	,ctry_group VARCHAR(40)  		--//  ENCODE lzo
	,cluster VARCHAR(100)  		--//  ENCODE lzo
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPEDW_INTEGRATION.edw_crncy_exch;
CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.EDW_CRNCY_EXCH		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.edw_crncy_exch
(
	clnt numeric(18,0) NOT NULL		--// INTEGER 
	,ex_rt_typ VARCHAR(4) NOT NULL
	,from_crncy VARCHAR(5) NOT NULL 		--//  ENCODE bytedict
	,to_crncy VARCHAR(5) NOT NULL 		--//  ENCODE bytedict
	,vld_from VARCHAR(8) NOT NULL 		--//  ENCODE zstd
	,ex_rt NUMERIC(9,5)  		--//  ENCODE zstd
	,from_ratio NUMERIC(9,0)  		--//  ENCODE zstd
	,to_ratio NUMERIC(9,0)  		--//  ENCODE zstd
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE zstd
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE zstd
	,PRIMARY KEY (clnt, ex_rt_typ, from_crncy, to_crncy, vld_from)
)
		--// DISTSTYLE ALL
;
--DROP TABLE ASPEDW_INTEGRATION.edw_customer_base_dim;
CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.EDW_CUSTOMER_BASE_DIM		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.edw_customer_base_dim
(
	clnt VARCHAR(150)  		--//  ENCODE zstd
	,cust_num VARCHAR(10) NOT NULL 		--//  ENCODE zstd
	,cust_nm VARCHAR(100)  		--//  ENCODE zstd
	,addr VARCHAR(150)  		--//  ENCODE zstd
	,title VARCHAR(150)  		--//  ENCODE zstd
	,cntrl_ordr_blk_cust VARCHAR(150)  		--//  ENCODE zstd
	,exp_train_stn VARCHAR(150)  		--//  ENCODE zstd
	,train_stn VARCHAR(150)  		--//  ENCODE zstd
	,intnl_loc_num1 numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,intnl_loc_num2 numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,auth_grp VARCHAR(150)  		--//  ENCODE zstd
	,indstr_key VARCHAR(150)  		--//  ENCODE zstd
	,chk_dig_intnl_loc_num numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,data_comm_line_no VARCHAR(150)  		--//  ENCODE zstd
	,dt_on_rec_crt DATE  		--//  ENCODE zstd
	,nm_prsn_crt_obj VARCHAR(150)  		--//  ENCODE zstd
	,unld_pt_exist_ind VARCHAR(150)  		--//  ENCODE zstd
	,cent_bill_blk_cust VARCHAR(150)  		--//  ENCODE zstd
	,acct_num_mstr_rec_fisc_addr VARCHAR(150)  		--//  ENCODE zstd
	,wrk_num_cal VARCHAR(150)  		--//  ENCODE zstd
	,acct_num_alt_pyr VARCHAR(150)  		--//  ENCODE zstd
	,grp_key VARCHAR(150)  		--//  ENCODE zstd
	,cust_acct_grp VARCHAR(150)  		--//  ENCODE zstd
	,cust_clsn VARCHAR(150)  		--//  ENCODE zstd
	,ctry_key VARCHAR(150)  		--//  ENCODE zstd
	,acct_num_vend VARCHAR(150)  		--//  ENCODE zstd
	,cent_delv_blk_cust VARCHAR(150)  		--//  ENCODE zstd
	,city_coordnt VARCHAR(150)  		--//  ENCODE zstd
	,cent_del_fl_mstr_rec VARCHAR(150)  		--//  ENCODE zstd
	,nm_1 VARCHAR(150)  		--//  ENCODE zstd
	,nm_2 VARCHAR(150)  		--//  ENCODE zstd
	,nm_3 VARCHAR(150)  		--//  ENCODE zstd
	,nm_4 VARCHAR(150)  		--//  ENCODE zstd
	,nlsn_id VARCHAR(150)  		--//  ENCODE zstd
	,city VARCHAR(150)  		--//  ENCODE zstd
	,dstrc VARCHAR(150)  		--//  ENCODE zstd
	,po_box VARCHAR(150)  		--//  ENCODE zstd
	,po_box_pstl_cd VARCHAR(150)  		--//  ENCODE zstd
	,pstl_cd VARCHAR(150)  		--//  ENCODE zstd
	,rgn VARCHAR(150)  		--//  ENCODE zstd
	,cnty_cd VARCHAR(150)  		--//  ENCODE zstd
	,city_cd VARCHAR(150)  		--//  ENCODE zstd
	,fcst_chnl VARCHAR(150)  		--//  ENCODE zstd
	,srt_fld VARCHAR(150)  		--//  ENCODE zstd
	,cent_pstng_blk VARCHAR(150)  		--//  ENCODE zstd
	,lang_key VARCHAR(150)  		--//  ENCODE zstd
	,tax_num_1 VARCHAR(150)  		--//  ENCODE zstd
	,tax_num_2 VARCHAR(150)  		--//  ENCODE zstd
	,busn_ptnr_subj_eqlztn_tax_ind VARCHAR(150)  		--//  ENCODE zstd
	,liab_for_vat VARCHAR(150)  		--//  ENCODE zstd
	,hs_num_and_street VARCHAR(150)  		--//  ENCODE zstd
	,telebox_num VARCHAR(150)  		--//  ENCODE zstd
	,fst_phn_num VARCHAR(150)  		--//  ENCODE zstd
	,sec_phn_num VARCHAR(150)  		--//  ENCODE zstd
	,fax_num VARCHAR(150)  		--//  ENCODE zstd
	,teletex_num VARCHAR(150)  		--//  ENCODE zstd
	,telex_num VARCHAR(150)  		--//  ENCODE zstd
	,trspn_zn_goods_delv VARCHAR(150)  		--//  ENCODE zstd
	,is_acct_one_time_acct_ind VARCHAR(150)  		--//  ENCODE zstd
	,alt_payee_doc_allw_ind VARCHAR(150)  		--//  ENCODE zstd
	,co_id_trad_ptnr VARCHAR(150)  		--//  ENCODE zstd
	,vat_regs_num VARCHAR(150)  		--//  ENCODE zstd
	,cmpt_ind VARCHAR(150)  		--//  ENCODE zstd
	,sls_ptnr_ind VARCHAR(150)  		--//  ENCODE zstd
	,sls_prosp_ind VARCHAR(150)  		--//  ENCODE zstd
	,for_cust_type4_ind VARCHAR(150)  		--//  ENCODE zstd
	,id_dflt_sold_to_prty VARCHAR(150)  		--//  ENCODE zstd
	,in_cnsmr VARCHAR(150)  		--//  ENCODE zstd
	,legal_sts VARCHAR(150)  		--//  ENCODE zstd
	,indstr_cd_1 VARCHAR(150)  		--//  ENCODE zstd
	,indstr_cd_2 VARCHAR(150)  		--//  ENCODE zstd
	,indstr_cd_3 VARCHAR(150)  		--//  ENCODE zstd
	,indstr_cd_4 VARCHAR(150)  		--//  ENCODE zstd
	,indstr_cd_5 VARCHAR(150)  		--//  ENCODE zstd
	,init_cntct VARCHAR(150)  		--//  ENCODE zstd
	,annl_sls_1 VARCHAR(150)  		--//  ENCODE zstd
	,yr_for_sls_gvn numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,crncy_sls_fig VARCHAR(150)  		--//  ENCODE zstd
	,yr_num_emp numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,yr_for_num_emp_gvn numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,attr_1 VARCHAR(150)  		--//  ENCODE zstd
	,attr_2 VARCHAR(150)  		--//  ENCODE zstd
	,attr_3 VARCHAR(150)  		--//  ENCODE zstd
	,attr_4 VARCHAR(150)  		--//  ENCODE zstd
	,attr_5 VARCHAR(150)  		--//  ENCODE zstd
	,attr_6 VARCHAR(150)  		--//  ENCODE zstd
	,attr_7 VARCHAR(150)  		--//  ENCODE zstd
	,attr_8 VARCHAR(150)  		--//  ENCODE zstd
	,attr_9 VARCHAR(150)  		--//  ENCODE zstd
	,attr_10 VARCHAR(150)  		--//  ENCODE zstd
	,ntrl_prsn VARCHAR(150)  		--//  ENCODE zstd
	,annl_sls_2 VARCHAR(150)  		--//  ENCODE zstd
	,tax_juris VARCHAR(150)  		--//  ENCODE zstd
	,srch_term_match_cd_srch1 VARCHAR(150)  		--//  ENCODE zstd
	,srch_term_match_cd_srch2 VARCHAR(150)  		--//  ENCODE zstd
	,srch_term_match_cd_srch3 VARCHAR(150)  		--//  ENCODE zstd
	,fisc_yr_vrnt VARCHAR(150)  		--//  ENCODE zstd
	,usg_ind VARCHAR(150)  		--//  ENCODE zstd
	,insp_carr_out_by_cust VARCHAR(150)  		--//  ENCODE zstd
	,insp_delv_note_after_outb_delv VARCHAR(150)  		--//  ENCODE zstd
	,ref_acct_grp_one_time_acct VARCHAR(150)  		--//  ENCODE zstd
	,po_box_city VARCHAR(150)  		--//  ENCODE zstd
	,plnt VARCHAR(150)  		--//  ENCODE zstd
	,data_med_exch_ind VARCHAR(150)  		--//  ENCODE zstd
	,instr_key_data_med_exch VARCHAR(150)  		--//  ENCODE zstd
	,sts_data_tfr_subsq_rlse VARCHAR(150)  		--//  ENCODE zstd
	,asgnmt_hier numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,pmt_blk VARCHAR(150)  		--//  ENCODE zstd
	,cust_grp VARCHAR(150)  		--//  ENCODE zstd
	,id_mn_non_mil_use VARCHAR(150)  		--//  ENCODE zstd
	,id_mn_mil_use VARCHAR(150)  		--//  ENCODE zstd
	,cust_cond_grp_1 VARCHAR(150)  		--//  ENCODE zstd
	,cust_cond_grp_2 VARCHAR(150)  		--//  ENCODE zstd
	,cust_cond_grp_3 VARCHAR(150)  		--//  ENCODE zstd
	,cust_cond_grp_4 VARCHAR(150)  		--//  ENCODE zstd
	,cust_cond_grp_5 VARCHAR(150)  		--//  ENCODE zstd
	,alt_pyr_acct_num_ind VARCHAR(150)  		--//  ENCODE zstd
	,tax_type VARCHAR(150)  		--//  ENCODE zstd
	,tax_num_type VARCHAR(150)  		--//  ENCODE zstd
	,tax_num3 VARCHAR(150)  		--//  ENCODE zstd
	,tax_num4 VARCHAR(150)  		--//  ENCODE zstd
	,cust_is_icms_expt VARCHAR(150)  		--//  ENCODE zstd
	,cust_is_ipi_expt VARCHAR(150)  		--//  ENCODE zstd
	,cust_grp_tax_subst VARCHAR(150)  		--//  ENCODE zstd
	,cust_cfop_cat VARCHAR(150)  		--//  ENCODE zstd
	,tax_law_icms VARCHAR(150)  		--//  ENCODE zstd
	,tax_law_ipi VARCHAR(150)  		--//  ENCODE zstd
	,biochem_wf_ind VARCHAR(150)  		--//  ENCODE zstd
	,nuclr_np_ind VARCHAR(150)  		--//  ENCODE zstd
	,natl_scty_ind VARCHAR(150)  		--//  ENCODE zstd
	,missile_tech_ind VARCHAR(150)  		--//  ENCODE zstd
	,cent_sls_blk_cust VARCHAR(150)  		--//  ENCODE zstd
	,unifm_rsrs_lctr VARCHAR(132)  		--//  ENCODE zstd
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE zstd
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE zstd
	,PRIMARY KEY (cust_num)
)
		--// DISTSTYLE ALL
;
--DROP TABLE ASPEDW_INTEGRATION.edw_customer_sales_dim;
CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.EDW_CUSTOMER_SALES_DIM		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.edw_customer_sales_dim
(
	clnt VARCHAR(3)  		--//  ENCODE zstd
	,cust_num VARCHAR(10) NOT NULL 		--//  ENCODE zstd
	,sls_org VARCHAR(4) NOT NULL 		--//  ENCODE bytedict
	,dstr_chnl VARCHAR(2) NOT NULL 		--//  ENCODE zstd
	,div VARCHAR(2) NOT NULL 		--//  ENCODE zstd
	,obj_crt_prsn VARCHAR(12)  		--//  ENCODE bytedict
	,rec_crt_dt DATE  		--//  ENCODE zstd
	,auth_grp VARCHAR(4)  		--//  ENCODE zstd
	,cust_del_flag VARCHAR(1)  		--//  ENCODE zstd
	,cust_stat_grp VARCHAR(1)  		--//  ENCODE zstd
	,cust_ord_blk VARCHAR(2)  		--//  ENCODE zstd
	,prc_pcdr_asgn VARCHAR(1)  		--//  ENCODE zstd
	,cust_grp VARCHAR(2)  		--//  ENCODE zstd
	,sls_dstrc VARCHAR(6)  		--//  ENCODE zstd
	,prc_grp VARCHAR(2)  		--//  ENCODE zstd
	,prc_list_typ VARCHAR(2)  		--//  ENCODE zstd
	,ord_prob_itm numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,incoterm1 VARCHAR(3)  		--//  ENCODE zstd
	,incoterm2 VARCHAR(28)  		--//  ENCODE zstd
	,cust_delv_blk VARCHAR(2)  		--//  ENCODE zstd
	,cmplt_delv_sls_ord VARCHAR(1)  		--//  ENCODE zstd
	,max_no_prtl_delv_allw_itm NUMERIC(1,0)  		--//  ENCODE zstd
	,prtl_delv_itm_lvl VARCHAR(1)  		--//  ENCODE zstd
	,ord_comb_in VARCHAR(1)  		--//  ENCODE zstd
	,btch_splt_allw VARCHAR(1)  		--//  ENCODE zstd
	,delv_prir numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,vend_acct_num VARCHAR(12)  		--//  ENCODE zstd
	,shipping_cond VARCHAR(2)  		--//  ENCODE zstd
	,bill_blk_cust VARCHAR(2)  		--//  ENCODE zstd
	,man_invc_maint VARCHAR(1)  		--//  ENCODE zstd
	,invc_dt VARCHAR(2)  		--//  ENCODE zstd
	,invc_list_sched VARCHAR(2)  		--//  ENCODE zstd
	,cost_est_in VARCHAR(1)  		--//  ENCODE zstd
	,val_lmt_cost_est NUMERIC(13,2)  		--//  ENCODE zstd
	,crncy_key VARCHAR(5)  		--//  ENCODE zstd
	,cust_clas VARCHAR(2)  		--//  ENCODE zstd
	,acct_asgnmt_grp VARCHAR(2)  		--//  ENCODE zstd
	,delv_plnt VARCHAR(4)  		--//  ENCODE bytedict
	,sls_grp VARCHAR(3)  		--//  ENCODE zstd
	,sls_grp_desc VARCHAR(40)  		--//  ENCODE zstd
	,sls_ofc VARCHAR(4)  		--//  ENCODE bytedict
	,sls_ofc_desc VARCHAR(40)  		--//  ENCODE zstd
	,itm_props VARCHAR(10)  		--//  ENCODE zstd
	,cust_grp1 VARCHAR(3)  		--//  ENCODE zstd
	,cust_grp2 VARCHAR(3)  		--//  ENCODE zstd
	,cust_grp3 VARCHAR(3)  		--//  ENCODE zstd
	,cust_grp4 VARCHAR(3)  		--//  ENCODE zstd
	,cust_grp5 VARCHAR(3)  		--//  ENCODE zstd
	,cust_rebt_in VARCHAR(1)  		--//  ENCODE zstd
	,rebt_indx_cust_strt_prd DATE  		--//  ENCODE zstd
	,exch_rt_typ VARCHAR(4)  		--//  ENCODE zstd
	,prc_dtrmn_id VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id1 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id2 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id3 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id4 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id5 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id6 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id7 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id8 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id9 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id10 VARCHAR(1)  		--//  ENCODE zstd
	,pymt_key_term VARCHAR(4)  		--//  ENCODE bytedict
	,persnl_num NUMERIC(8,0)  		--//  ENCODE zstd
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE zstd
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE zstd
	,cur_sls_emp NUMERIC(8,0)  		--//  ENCODE zstd
	,lcl_cust_grp_1 VARCHAR(10)  		--//  ENCODE zstd
	,lcl_cust_grp_2 VARCHAR(10)  		--//  ENCODE zstd
	,lcl_cust_grp_3 VARCHAR(10)  		--//  ENCODE zstd
	,lcl_cust_grp_4 VARCHAR(10)  		--//  ENCODE zstd
	,lcl_cust_grp_5 VARCHAR(10)  		--//  ENCODE zstd
	,lcl_cust_grp_6 VARCHAR(10)  		--//  ENCODE zstd
	,lcl_cust_grp_7 VARCHAR(10)  		--//  ENCODE zstd
	,lcl_cust_grp_8 VARCHAR(10)  		--//  ENCODE zstd
	,prc_proc VARCHAR(1)  		--//  ENCODE zstd
	,par_del VARCHAR(1)  		--//  ENCODE zstd
	,max_num_pa VARCHAR(1)  		--//  ENCODE zstd
	,prnt_cust_key VARCHAR(12)  		--//  ENCODE zstd
	,bnr_key VARCHAR(12)  		--//  ENCODE zstd
	,bnr_frmt_key VARCHAR(12)  		--//  ENCODE zstd
	,go_to_mdl_key VARCHAR(12)  		--//  ENCODE zstd
	,chnl_key VARCHAR(12)  		--//  ENCODE zstd
	,sub_chnl_key VARCHAR(12)  		--//  ENCODE zstd
	,segmt_key VARCHAR(12)  		--//  ENCODE zstd
	,cust_set_1 VARCHAR(12)  		--//  ENCODE zstd
	,cust_set_2 VARCHAR(12)  		--//  ENCODE zstd
	,cust_set_3 VARCHAR(12)  		--//  ENCODE zstd
	,cust_set_4 VARCHAR(12)  		--//  ENCODE zstd
	,cust_set_5 VARCHAR(12)  		--//  ENCODE zstd
	,PRIMARY KEY (cust_num, sls_org, dstr_chnl, div)
)
		--// DISTSTYLE ALL
;
--DROP TABLE ASPEDW_INTEGRATION.edw_dstrbtn_chnl;
CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.EDW_DSTRBTN_CHNL		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.edw_dstrbtn_chnl
(
	distr_chan VARCHAR(2) NOT NULL 		--//  ENCODE lzo
	,langu VARCHAR(1) NOT NULL 		--//  ENCODE lzo
	,txtsh VARCHAR(20)  		--//  ENCODE lzo
	,txtmd VARCHAR(40)  		--//  ENCODE lzo
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,PRIMARY KEY (distr_chan, langu)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPEDW_INTEGRATION.edw_ecc_marm;
CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.EDW_ECC_MARM		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.edw_ecc_marm
(
	matl_no VARCHAR(18) NOT NULL 		--//  ENCODE bytedict
	,alt_unt VARCHAR(3) NOT NULL 		--//  ENCODE bytedict
	,numrtr NUMERIC(5,0)  		--//  ENCODE lzo
	,denomtr NUMERIC(5,0)  		--//  ENCODE lzo
	,ean_nr VARCHAR(13)  		--//  ENCODE bytedict
	,ean_11 VARCHAR(18)  		--//  ENCODE bytedict
	,ctgry VARCHAR(2)  		--//  ENCODE lzo
	,length NUMERIC(13,3)  		--//  ENCODE lzo
	,width NUMERIC(13,3)  		--//  ENCODE lzo
	,height NUMERIC(13,3)  		--//  ENCODE lzo
	,unit VARCHAR(3)  		--//  ENCODE lzo
	,volum VARCHAR(14)  		--//  ENCODE bytedict
	,vol_unt VARCHAR(3)  		--//  ENCODE bytedict
	,gross_wt NUMERIC(13,3)  		--//  ENCODE bytedict
	,wt_unt VARCHAR(3)  		--//  ENCODE lzo
	,lowrlvl_unt VARCHAR(3)  		--//  ENCODE lzo
	,intrnl_char NUMERIC(10,0)  		--//  ENCODE lzo
	,uom_srtno NUMERIC(2,0)  		--//  ENCODE lzo
	,leadng_unt VARCHAR(1)  		--//  ENCODE lzo
	,valutn_unt VARCHAR(1)  		--//  ENCODE lzo
	,unts_use VARCHAR(1)  		--//  ENCODE lzo
	,uom VARCHAR(3)  		--//  ENCODE bytedict
	,lg_vrnt VARCHAR(1)  		--//  ENCODE lzo
	,ean_vrnt VARCHAR(2)  		--//  ENCODE lzo
	,remng_vol NUMERIC(3,0)  		--//  ENCODE bytedict
	,max_stack NUMERIC(3,0)  		--//  ENCODE lzo
	,capause NUMERIC(15,0)  		--//  ENCODE lzo
	,uom_ctgry VARCHAR(1)  		--//  ENCODE lzo
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE runlength
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,PRIMARY KEY (matl_no, alt_unt)
)
<<Error - UNKNOWN DISTSTYLE>>
;
--DROP TABLE ASPEDW_INTEGRATION.edw_ecc_standard_cost;
CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.EDW_ECC_STANDARD_COST		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.edw_ecc_standard_cost
(
	mandt VARCHAR(3) NOT NULL 		--//  ENCODE lzo
	,matnr VARCHAR(18) NOT NULL 		--//  ENCODE lzo
	,bwkey VARCHAR(4) NOT NULL 		--//  ENCODE lzo
	,bwtar VARCHAR(10) NOT NULL 		--//  ENCODE lzo
	,lvorm VARCHAR(1)  		--//  ENCODE lzo
	,lbkum NUMERIC(13,3)  		--//  ENCODE delta
	,salk3 NUMERIC(13,2)  		--//  ENCODE delta
	,vprsv VARCHAR(1)  		--//  ENCODE lzo
	,verpr NUMERIC(11,2)  		--//  ENCODE delta
	,stprs NUMERIC(11,2)  		--//  ENCODE delta
	,peinh NUMERIC(5,0)  		--//  ENCODE delta
	,bklas VARCHAR(4)  		--//  ENCODE lzo
	,salkv NUMERIC(13,2)  		--//  ENCODE delta
	,vmkum NUMERIC(13,3)  		--//  ENCODE delta
	,vmsal NUMERIC(13,2)  		--//  ENCODE delta
	,vmvpr VARCHAR(1)  		--//  ENCODE lzo
	,vmver NUMERIC(11,2)  		--//  ENCODE delta
	,vmstp NUMERIC(11,2)  		--//  ENCODE delta
	,vmpei NUMERIC(5,0)  		--//  ENCODE lzo
	,vmbkl VARCHAR(4)  		--//  ENCODE lzo
	,vmsav NUMERIC(13,2)  		--//  ENCODE delta
	,vjkum NUMERIC(13,3)  		--//  ENCODE delta
	,vjsal NUMERIC(13,2)  		--//  ENCODE delta
	,vjvpr VARCHAR(1)  		--//  ENCODE lzo
	,vjver NUMERIC(11,2)  		--//  ENCODE delta
	,vjstp NUMERIC(11,2)  		--//  ENCODE delta
	,vjpei NUMERIC(5,0)  		--//  ENCODE delta
	,vjbkl VARCHAR(4)  		--//  ENCODE lzo
	,vjsav NUMERIC(13,2)  		--//  ENCODE delta
	,lfgja NUMERIC(4,0)  		--//  ENCODE delta
	,lfmon NUMERIC(2,0)  		--//  ENCODE delta
	,bwtty VARCHAR(1)  		--//  ENCODE lzo
	,stprv NUMERIC(11,2)  		--//  ENCODE delta
	,laepr DATE  		--//  ENCODE delta
	,zkprs NUMERIC(11,2)  		--//  ENCODE delta
	,zkdat DATE  		--//  ENCODE delta
	,timestamps NUMERIC(15,0)  		--//  ENCODE delta
	,bwprs NUMERIC(11,2)  		--//  ENCODE delta
	,bwprh NUMERIC(11,2)  		--//  ENCODE delta
	,vjbws NUMERIC(11,2)  		--//  ENCODE delta
	,vjbwh NUMERIC(11,2)  		--//  ENCODE delta
	,vvjsl NUMERIC(13,2)  		--//  ENCODE delta
	,vvjlb NUMERIC(13,3)  		--//  ENCODE delta
	,vvmlb NUMERIC(13,3)  		--//  ENCODE delta
	,vvsal NUMERIC(13,2)  		--//  ENCODE delta
	,zplpr NUMERIC(11,2)  		--//  ENCODE delta
	,zplp1 NUMERIC(11,2)  		--//  ENCODE delta
	,zplp2 NUMERIC(11,2)  		--//  ENCODE delta
	,zplp3 NUMERIC(11,2)  		--//  ENCODE delta
	,zpld1 DATE  		--//  ENCODE delta
	,zpld2 DATE  		--//  ENCODE delta
	,zpld3 DATE  		--//  ENCODE delta
	,pperz NUMERIC(6,0)  		--//  ENCODE delta
	,pperl NUMERIC(6,0)  		--//  ENCODE delta
	,pperv NUMERIC(6,0)  		--//  ENCODE delta
	,kalkz VARCHAR(1)  		--//  ENCODE lzo
	,kalkl VARCHAR(1)  		--//  ENCODE lzo
	,kalkv VARCHAR(1)  		--//  ENCODE lzo
	,kalsc VARCHAR(6)  		--//  ENCODE lzo
	,xlifo VARCHAR(1)  		--//  ENCODE lzo
	,mypol VARCHAR(4)  		--//  ENCODE lzo
	,bwph1 NUMERIC(11,2)  		--//  ENCODE delta
	,bwps1 NUMERIC(11,2)  		--//  ENCODE delta
	,abwkz NUMERIC(2,0)  		--//  ENCODE delta
	,pstat VARCHAR(15)  		--//  ENCODE lzo
	,kaln1 NUMERIC(12,0)  		--//  ENCODE delta
	,kalnr NUMERIC(12,0)  		--//  ENCODE delta
	,bwva1 VARCHAR(3)  		--//  ENCODE lzo
	,bwva2 VARCHAR(3)  		--//  ENCODE lzo
	,bwva3 VARCHAR(3)  		--//  ENCODE lzo
	,vers1 NUMERIC(2,0)  		--//  ENCODE delta
	,vers2 NUMERIC(2,0)  		--//  ENCODE delta
	,vers3 NUMERIC(2,0)  		--//  ENCODE delta
	,hrkft VARCHAR(4)  		--//  ENCODE lzo
	,kosgr VARCHAR(10)  		--//  ENCODE lzo
	,pprdz NUMERIC(3,0)  		--//  ENCODE delta
	,pprdl NUMERIC(3,0)  		--//  ENCODE delta
	,pprdv NUMERIC(3,0)  		--//  ENCODE delta
	,pdatz NUMERIC(4,0)  		--//  ENCODE delta
	,pdatl NUMERIC(4,0)  		--//  ENCODE delta
	,pdatv NUMERIC(4,0)  		--//  ENCODE delta
	,ekalr VARCHAR(1)  		--//  ENCODE lzo
	,vplpr NUMERIC(11,2)  		--//  ENCODE delta
	,mlmaa VARCHAR(1)  		--//  ENCODE lzo
	,mlast VARCHAR(1)  		--//  ENCODE lzo
	,lplpr NUMERIC(11,2)  		--//  ENCODE delta
	,vksal NUMERIC(13,2)  		--//  ENCODE delta
	,hkmat VARCHAR(1)  		--//  ENCODE lzo
	,sperw VARCHAR(1)  		--//  ENCODE lzo
	,kziwl VARCHAR(3)  		--//  ENCODE lzo
	,wlinl DATE  		--//  ENCODE delta
	,abciw VARCHAR(1)  		--//  ENCODE lzo
	,bwspa NUMERIC(6,2)  		--//  ENCODE delta
	,lplpx NUMERIC(11,2)  		--//  ENCODE delta
	,vplpx NUMERIC(11,2)  		--//  ENCODE delta
	,fplpx NUMERIC(11,2)  		--//  ENCODE delta
	,lbwst VARCHAR(1)  		--//  ENCODE lzo
	,vbwst VARCHAR(1)  		--//  ENCODE lzo
	,fbwst VARCHAR(1)  		--//  ENCODE lzo
	,eklas VARCHAR(4)  		--//  ENCODE lzo
	,qklas VARCHAR(4)  		--//  ENCODE lzo
	,mtuse VARCHAR(1)  		--//  ENCODE lzo
	,mtorg VARCHAR(1)  		--//  ENCODE lzo
	,ownpr VARCHAR(1)  		--//  ENCODE lzo
	,xbewm VARCHAR(1)  		--//  ENCODE lzo
	,bwpei NUMERIC(5,0)  		--//  ENCODE delta
	,mbrue VARCHAR(1)  		--//  ENCODE lzo
	,oklas VARCHAR(4)  		--//  ENCODE lzo
	,oippinv VARCHAR(1)  		--//  ENCODE lzo
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,PRIMARY KEY (mandt, matnr, bwkey, bwtar)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPEDW_INTEGRATION.edw_material_dim;
CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.EDW_MATERIAL_DIM		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.edw_material_dim
(
	matl_num VARCHAR(40) NOT NULL 		--//  ENCODE zstd
	,matl_desc VARCHAR(100)  		--//  ENCODE zstd
	,crt_on DATE  		--//  ENCODE zstd
	,crt_by_nm VARCHAR(12)  		--//  ENCODE zstd
	,chg_dttm DATE  		--//  ENCODE zstd
	,chg_by_nm VARCHAR(12)  		--//  ENCODE bytedict
	,maint_sts_cmplt_matl VARCHAR(15)  		--//  ENCODE zstd
	,maint_sts VARCHAR(15)  		--//  ENCODE zstd
	,fl_matl_del_clnt_lvl VARCHAR(10)  		--//  ENCODE zstd
	,matl_type_cd VARCHAR(10)  		--//  ENCODE zstd
	,indstr_sectr VARCHAR(10)  		--//  ENCODE zstd
	,matl_grp_cd VARCHAR(20)  		--//  ENCODE bytedict
	,old_matl_num VARCHAR(40)  		--//  ENCODE zstd
	,base_uom_cd VARCHAR(10)  		--//  ENCODE zstd
	,prch_uom_cd VARCHAR(10)  		--//  ENCODE zstd
	,doc_num VARCHAR(22)  		--//  ENCODE zstd
	,doc_type VARCHAR(10)  		--//  ENCODE zstd
	,doc_vers VARCHAR(10)  		--//  ENCODE zstd
	,pg_fmt__doc VARCHAR(10)  		--//  ENCODE zstd
	,doc_chg_num VARCHAR(20)  		--//  ENCODE zstd
	,pg_num_doc VARCHAR(10)  		--//  ENCODE zstd
	,num_sht numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,prdtn_memo_txt VARCHAR(40)  		--//  ENCODE zstd
	,pg_fmt_prdtn_memo VARCHAR(10)  		--//  ENCODE zstd
	,size_dims_txt VARCHAR(32)  		--//  ENCODE zstd
	,bsc_matl VARCHAR(100)  		--//  ENCODE zstd
	,indstr_std_desc VARCHAR(40)  		--//  ENCODE zstd
	,mercia_plan VARCHAR(10)  		--//  ENCODE zstd
	,prchsng_val_key VARCHAR(10)  		--//  ENCODE zstd
	,grs_wt_meas NUMERIC(13,3)  		--//  ENCODE zstd
	,net_wt_meas NUMERIC(13,3)  		--//  ENCODE zstd
	,wt_uom_cd VARCHAR(10)  		--//  ENCODE zstd
	,vol_meas NUMERIC(13,3)  		--//  ENCODE zstd
	,vol_uom_cd VARCHAR(10)  		--//  ENCODE zstd
	,cntnr_rqr VARCHAR(10)  		--//  ENCODE zstd
	,strg_cond VARCHAR(10)  		--//  ENCODE zstd
	,temp_cond_ind VARCHAR(10)  		--//  ENCODE zstd
	,low_lvl_cd VARCHAR(10)  		--//  ENCODE zstd
	,trspn_grp VARCHAR(10)  		--//  ENCODE zstd
	,haz_matl_num VARCHAR(40)  		--//  ENCODE zstd
	,div VARCHAR(10)  		--//  ENCODE zstd
	,cmpt VARCHAR(10)  		--//  ENCODE zstd
	,ean_obsol VARCHAR(13)  		--//  ENCODE zstd
	,gr_prtd_qty NUMERIC(13,3)  		--//  ENCODE zstd
	,prcmt_rule VARCHAR(10)  		--//  ENCODE zstd
	,src_supl VARCHAR(10)  		--//  ENCODE zstd
	,seasn_cat VARCHAR(10)  		--//  ENCODE zstd
	,lbl_type_cd VARCHAR(10)  		--//  ENCODE zstd
	,lbl_form VARCHAR(10)  		--//  ENCODE zstd
	,deact VARCHAR(10)  		--//  ENCODE zstd
	,prmry_upc_cd VARCHAR(40)  		--//  ENCODE zstd
	,ean_cat VARCHAR(10)  		--//  ENCODE zstd
	,lgth_meas NUMERIC(13,3)  		--//  ENCODE zstd
	,wdth_meas NUMERIC(13,3)  		--//  ENCODE zstd
	,hght_meas NUMERIC(13,3)  		--//  ENCODE zstd
	,dim_uom_cd VARCHAR(10)  		--//  ENCODE zstd
	,prod_hier_cd VARCHAR(40)  		--//  ENCODE zstd
	,stk_tfr_chg_cost VARCHAR(10)  		--//  ENCODE zstd
	,cad_ind VARCHAR(10)  		--//  ENCODE zstd
	,qm_prcmt_act VARCHAR(10)  		--//  ENCODE zstd
	,allw_pkgng_wt NUMERIC(13,3)  		--//  ENCODE zstd
	,wt_unit VARCHAR(10)  		--//  ENCODE zstd
	,allw_pkgng_vol NUMERIC(13,3)  		--//  ENCODE zstd
	,vol_unit VARCHAR(10)  		--//  ENCODE zstd
	,exces_wt_tlrnc NUMERIC(3,1)  		--//  ENCODE zstd
	,exces_vol_tlrnc NUMERIC(3,1)  		--//  ENCODE zstd
	,var_prch_ord_unit VARCHAR(10)  		--//  ENCODE zstd
	,rvsn_lvl_asgn_matl VARCHAR(10)  		--//  ENCODE zstd
	,configurable_matl_ind VARCHAR(10)  		--//  ENCODE zstd
	,btch_mgmt_reqt_ind VARCHAR(10)  		--//  ENCODE zstd
	,pkgng_matl_type_cd VARCHAR(10)  		--//  ENCODE zstd
	,max_lvl_vol NUMERIC(3,0)  		--//  ENCODE zstd
	,stack_fact numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,pkgng_matl_grp VARCHAR(10)  		--//  ENCODE zstd
	,auth_grp VARCHAR(10)  		--//  ENCODE zstd
	,vld_from_dt DATE  		--//  ENCODE zstd
	,del_dt DATE  		--//  ENCODE zstd
	,seasn_yr VARCHAR(10)  		--//  ENCODE zstd
	,prc_bnd_cat VARCHAR(10)  		--//  ENCODE zstd
	,bill_of_matl VARCHAR(10)  		--//  ENCODE zstd
	,extrnl_matl_grp_txt VARCHAR(40)  		--//  ENCODE zstd
	,cross_plnt_cnfg_matl VARCHAR(40)  		--//  ENCODE zstd
	,matl_cat VARCHAR(10)  		--//  ENCODE zstd
	,matl_coprod_ind VARCHAR(10)  		--//  ENCODE zstd
	,fllp_matl_ind VARCHAR(10)  		--//  ENCODE zstd
	,prc_ref_matl VARCHAR(40)  		--//  ENCODE zstd
	,cros_plnt_matl_sts VARCHAR(10)  		--//  ENCODE zstd
	,cros_dstn_chn_matl_sts VARCHAR(10)  		--//  ENCODE zstd
	,cros_plnt_matl_sts_vld_dt DATE  		--//  ENCODE zstd
	,chn_matl_vld_from_dt DATE  		--//  ENCODE zstd
	,tax_clsn_matl VARCHAR(10)  		--//  ENCODE zstd
	,catlg_prfl VARCHAR(20)  		--//  ENCODE zstd
	,min_rmn_shlf_lif NUMERIC(4,0)  		--//  ENCODE zstd
	,tot_shlf_lif NUMERIC(4,0)  		--//  ENCODE zstd
	,strg_pct NUMERIC(3,0)  		--//  ENCODE zstd
	,cntnt_uom_cd VARCHAR(10)  		--//  ENCODE zstd
	,net_cntnt_meas NUMERIC(13,3)  		--//  ENCODE zstd
	,cmpr_prc_unit NUMERIC(5,0)  		--//  ENCODE zstd
	,isr_matl_grp VARCHAR(40)  		--//  ENCODE zstd
	,grs_cntnt_meas NUMERIC(13,3)  		--//  ENCODE zstd
	,qty_conv_meth VARCHAR(10)  		--//  ENCODE zstd
	,intrnl_obj_num numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,envmt_rlvnt VARCHAR(10)  		--//  ENCODE zstd
	,prod_allc_dtrmn_proc VARCHAR(40)  		--//  ENCODE zstd
	,prc_prfl_vrnt VARCHAR(10)  		--//  ENCODE zstd
	,matl_qual_disc VARCHAR(10)  		--//  ENCODE zstd
	,mfr_part_num VARCHAR(40)  		--//  ENCODE zstd
	,mfr_num VARCHAR(10)  		--//  ENCODE zstd
	,intrnl_inv_mgmt VARCHAR(40)  		--//  ENCODE zstd
	,mfr_part_prfl VARCHAR(10)  		--//  ENCODE zstd
	,meas_usg_unit VARCHAR(10)  		--//  ENCODE zstd
	,rollout_seasn VARCHAR(10)  		--//  ENCODE zstd
	,dngrs_goods_ind_prof VARCHAR(10)  		--//  ENCODE zstd
	,hi_viscous_ind VARCHAR(10)  		--//  ENCODE zstd
	,in_bulk_lqd_ind VARCHAR(10)  		--//  ENCODE zstd
	,lvl_explc_ser_num VARCHAR(10)  		--//  ENCODE zstd
	,pkgng_matl_clse_pkgng VARCHAR(10)  		--//  ENCODE zstd
	,appr_btch_rec_ind VARCHAR(10)  		--//  ENCODE zstd
	,ovrd_chg_num VARCHAR(10)  		--//  ENCODE zstd
	,matl_cmplt_lvl numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,per_ind_shlf_lif_expn_dt VARCHAR(10)  		--//  ENCODE zstd
	,rd_rule_sled VARCHAR(10)  		--//  ENCODE zstd
	,prod_cmpos_prtd_pkgng VARCHAR(10)  		--//  ENCODE zstd
	,genl_item_cat_grp VARCHAR(10)  		--//  ENCODE zstd
	,gn_matl_logl_vrnt VARCHAR(10)  		--//  ENCODE zstd
	,prod_base VARCHAR(10)  		--//  ENCODE zstd
	,vrnt VARCHAR(10)  		--//  ENCODE zstd
	,put_up VARCHAR(10)  		--//  ENCODE zstd
	,mega_brnd_cd VARCHAR(10)  		--//  ENCODE zstd
	,brnd_cd VARCHAR(10)  		--//  ENCODE zstd
	,tech VARCHAR(10)  		--//  ENCODE zstd
	,color VARCHAR(10)  		--//  ENCODE zstd
	,seasonality VARCHAR(10)  		--//  ENCODE zstd
	,mfg_src_cd VARCHAR(10)  		--//  ENCODE zstd
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE zstd
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE zstd
	,mega_brnd_desc VARCHAR(100)  		--//  ENCODE zstd
	,brnd_desc VARCHAR(100)  		--//  ENCODE zstd
	,varnt_desc VARCHAR(100)  		--//  ENCODE zstd
	,base_prod_desc VARCHAR(100)  		--//  ENCODE zstd
	,put_up_desc VARCHAR(100)  		--//  ENCODE zstd
	,prodh1 VARCHAR(18)  		--//  ENCODE zstd
	,prodh1_txtmd VARCHAR(100)  		--//  ENCODE zstd
	,prodh2 VARCHAR(18)  		--//  ENCODE zstd
	,prodh2_txtmd VARCHAR(100)  		--//  ENCODE zstd
	,prodh3 VARCHAR(18)  		--//  ENCODE zstd
	,prodh3_txtmd VARCHAR(100)  		--//  ENCODE zstd
	,prodh4 VARCHAR(18)  		--//  ENCODE bytedict
	,prodh4_txtmd VARCHAR(100)  		--//  ENCODE zstd
	,prodh5 VARCHAR(18)  		--//  ENCODE bytedict
	,prodh5_txtmd VARCHAR(100)  		--//  ENCODE zstd
	,prodh6 VARCHAR(18)  		--//  ENCODE bytedict
	,prodh6_txtmd VARCHAR(100)  		--//  ENCODE zstd
	,matl_type_desc VARCHAR(40)  		--//  ENCODE zstd
	,mfr_part_num_new VARCHAR(256)  		--//  ENCODE lzo
	,formulation_num VARCHAR(50)  		--//  ENCODE lzo
	,pka_franchise_cd VARCHAR(2)  		--//  ENCODE lzo
	,pka_franchise_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_brand_cd VARCHAR(2)  		--//  ENCODE lzo
	,pka_brand_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_sub_brand_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_sub_brand_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_variant_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_variant_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_sub_variant_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_sub_variant_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_flavor_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_flavor_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_ingredient_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_ingredient_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_application_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_application_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_length_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_length_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_shape_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_shape_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_spf_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_spf_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_cover_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_cover_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_form_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_form_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_size_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_size_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_character_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_character_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_package_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_package_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_attribute_13_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_attribute_13_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_attribute_14_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_attribute_14_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_sku_identification_cd VARCHAR(2)  		--//  ENCODE lzo
	,pka_sku_identification_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_one_time_relabeling_cd VARCHAR(2)  		--//  ENCODE lzo
	,pka_one_time_relabeling_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_product_key VARCHAR(68)  		--//  ENCODE lzo
	,pka_product_key_description VARCHAR(255)  		--//  ENCODE lzo
	,pka_product_key_description_2 VARCHAR(255)  		--//  ENCODE lzo
	,pka_root_code VARCHAR(68)  		--//  ENCODE lzo
	,pka_root_code_desc_1 VARCHAR(255)  		--//  ENCODE lzo
	,pka_root_code_desc_2 VARCHAR(255)  		--//  ENCODE lzo
	,PRIMARY KEY (matl_num)
)
		--// DISTSTYLE ALL
;
--DROP TABLE ASPEDW_INTEGRATION.edw_material_typ;
CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.EDW_MATERIAL_TYP		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.edw_material_typ
(
	matl_type VARCHAR(4) NOT NULL 		--//  ENCODE lzo
	,langu VARCHAR(1) NOT NULL 		--//  ENCODE lzo
	,txtmd VARCHAR(40)  		--//  ENCODE lzo
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,PRIMARY KEY (matl_type, langu)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPEDW_INTEGRATION.edw_prod_hier;
CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.EDW_PROD_HIER		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.edw_prod_hier
(
	prod_hier VARCHAR(18) NOT NULL 		--//  ENCODE lzo
	,langu VARCHAR(1) NOT NULL 		--//  ENCODE lzo
	,txtmd VARCHAR(40)  		--//  ENCODE lzo
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,PRIMARY KEY (prod_hier, langu)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPEDW_INTEGRATION.edw_profit_center_dim;
CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.EDW_PROFIT_CENTER_DIM		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.edw_profit_center_dim
(
	lang_key VARCHAR(4)  		--//  ENCODE zstd
	,cntl_area VARCHAR(10) NOT NULL 		--//  ENCODE zstd
	,prft_ctr VARCHAR(40) NOT NULL 		--//  ENCODE zstd
	,vld_to_dt DATE NOT NULL 		--//  ENCODE zstd
	,vld_from_dt DATE  		--//  ENCODE zstd
	,shrt_desc VARCHAR(20)  		--//  ENCODE zstd
	,med_desc VARCHAR(40)  		--//  ENCODE zstd
	,prsn_resp VARCHAR(20)  		--//  ENCODE zstd
	,crncy_key VARCHAR(5)  		--//  ENCODE zstd
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE zstd
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE zstd
	,need_stat_shrt_desc VARCHAR(100)
	,strng_hold_shrt_desc VARCHAR(100)
	,rflt VARCHAR(100)
	,PRIMARY KEY (cntl_area, prft_ctr, vld_to_dt)
)
		--// DISTSTYLE ALL
;
--DROP TABLE ASPEDW_INTEGRATION.edw_sales_org_dim;
CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.EDW_SALES_ORG_DIM		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPEDW_INTEGRATION.edw_sales_org_dim
(
	clnt numeric(18,0)		--// INTEGER
	,sls_org VARCHAR(4) NOT NULL
	,sls_org_nm VARCHAR(20)
	,stats_crncy VARCHAR(5)
	,sls_org_co_cd VARCHAR(4)
	,cust_num_intco_bill VARCHAR(10)
	,ctry_key VARCHAR(3)
	,crncy_key VARCHAR(5)
	,fisc_yr_vrnt VARCHAR(2)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
	,PRIMARY KEY (sls_org)
)
		--// DISTSTYLE EVEN
;

--DROP TABLE ASPITG_INTEGRATION.itg_base_prod_text;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_BASE_PROD_TEXT		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_base_prod_text
(
	clnt numeric(18,0) NOT NULL		--// INTEGER 
	,lang_key VARCHAR(1) NOT NULL
	,base_prod VARCHAR(3) NOT NULL
	,base_prod_desc VARCHAR(40)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
	,PRIMARY KEY (clnt, lang_key, base_prod)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_brnd_text;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_BRND_TEXT		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_brnd_text
(
	clnt numeric(18,0) NOT NULL		--// INTEGER 
	,lang_key VARCHAR(1) NOT NULL
	,brnd VARCHAR(3) NOT NULL
	,brnd_desc VARCHAR(40)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
	,PRIMARY KEY (clnt, lang_key, brnd)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_code_descriptions;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_CODE_DESCRIPTIONS		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_code_descriptions
(
	source_type VARCHAR(10) NOT NULL 		--//  ENCODE lzo
	,code_type VARCHAR(50)  		--//  ENCODE lzo
	,code VARCHAR(15)  		--//  ENCODE lzo
	,code_desc VARCHAR(50)  		--//  ENCODE lzo
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_comp;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_COMP		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_comp
(
	clnt VARCHAR(3)
	,co_cd VARCHAR(4) NOT NULL
	,ctry_key VARCHAR(3)
	,crncy_key VARCHAR(5)
	,chrt_acct VARCHAR(4)
	,crdt_cntrl_area VARCHAR(4)
	,fisc_yr_vrnt VARCHAR(2)
	,company VARCHAR(6)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
	,PRIMARY KEY (co_cd)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_comp_text;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_COMP_TEXT		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_comp_text
(
	clnt VARCHAR(3)
	,co_cd VARCHAR(4) NOT NULL
	,com_cd_nm VARCHAR(25)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
	,PRIMARY KEY (co_cd)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_crncy_exch;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_CRNCY_EXCH		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_crncy_exch
(
	clnt numeric(18,0) NOT NULL		--// INTEGER 
	,ex_rt_typ VARCHAR(4) NOT NULL
	,from_crncy VARCHAR(5) NOT NULL
	,to_crncy VARCHAR(5) NOT NULL
	,vld_from VARCHAR(8) NOT NULL
	,ex_rt NUMERIC(9,5)
	,from_ratio NUMERIC(9,0)
	,to_ratio NUMERIC(9,0)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
	,PRIMARY KEY (clnt, ex_rt_typ, from_crncy, to_crncy, vld_from)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_ctry_cd_text;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_CTRY_CD_TEXT		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_ctry_cd_text
(
	ctry_key VARCHAR(3) NOT NULL
	,lang_key VARCHAR(1) NOT NULL
	,shrt_desc VARCHAR(20)
	,med_desc VARCHAR(40)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
	,PRIMARY KEY (ctry_key, lang_key)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_cust_base;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_CUST_BASE		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_cust_base
(
	clnt VARCHAR(150)  		--//  ENCODE zstd
	,cust_num_1 VARCHAR(10) NOT NULL 		--//  ENCODE zstd
	,addr VARCHAR(150)  		--//  ENCODE zstd
	,title VARCHAR(150)  		--//  ENCODE zstd
	,cntrl_ordr_blk_cust VARCHAR(150)  		--//  ENCODE zstd
	,exp_train_stn VARCHAR(150)  		--//  ENCODE zstd
	,train_stn VARCHAR(150)  		--//  ENCODE zstd
	,intnl_loc_num1 numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,intnl_loc_num2 numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,auth_grp VARCHAR(150)  		--//  ENCODE zstd
	,indstr_key VARCHAR(150)  		--//  ENCODE zstd
	,chk_dig_intnl_loc_num numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,data_comm_line_no VARCHAR(150)  		--//  ENCODE zstd
	,dt_on_rec_crt DATE  		--//  ENCODE zstd
	,nm_prsn_crt_obj VARCHAR(150)  		--//  ENCODE zstd
	,unld_pt_exist_ind VARCHAR(150)  		--//  ENCODE zstd
	,cent_bill_blk_cust VARCHAR(150)  		--//  ENCODE zstd
	,acct_num_mstr_rec_fisc_addr VARCHAR(150)  		--//  ENCODE zstd
	,wrk_num_cal VARCHAR(150)  		--//  ENCODE zstd
	,acct_num_alt_pyr VARCHAR(150)  		--//  ENCODE zstd
	,grp_key VARCHAR(150)  		--//  ENCODE zstd
	,cust_acct_grp VARCHAR(150)  		--//  ENCODE zstd
	,cust_clsn VARCHAR(150)  		--//  ENCODE zstd
	,ctry_key VARCHAR(150)  		--//  ENCODE zstd
	,acct_num_vend VARCHAR(150)  		--//  ENCODE zstd
	,cent_delv_blk_cust VARCHAR(150)  		--//  ENCODE zstd
	,city_coordnt VARCHAR(150)  		--//  ENCODE zstd
	,cent_del_fl_mstr_rec VARCHAR(150)  		--//  ENCODE zstd
	,nm_1 VARCHAR(150)  		--//  ENCODE zstd
	,nm_2 VARCHAR(150)  		--//  ENCODE zstd
	,nm_3 VARCHAR(150)  		--//  ENCODE zstd
	,nm_4 VARCHAR(150)  		--//  ENCODE zstd
	,nlsn_id VARCHAR(150)  		--//  ENCODE zstd
	,city VARCHAR(150)  		--//  ENCODE zstd
	,dstrc VARCHAR(150)  		--//  ENCODE zstd
	,po_box VARCHAR(150)  		--//  ENCODE zstd
	,po_box_pstl_cd VARCHAR(150)  		--//  ENCODE zstd
	,pstl_cd VARCHAR(150)  		--//  ENCODE zstd
	,rgn VARCHAR(150)  		--//  ENCODE zstd
	,cnty_cd VARCHAR(150)  		--//  ENCODE zstd
	,city_cd VARCHAR(150)  		--//  ENCODE zstd
	,fcst_chnl VARCHAR(150)  		--//  ENCODE zstd
	,srt_fld VARCHAR(150)  		--//  ENCODE zstd
	,cent_pstng_blk VARCHAR(150)  		--//  ENCODE zstd
	,lang_key VARCHAR(150)  		--//  ENCODE zstd
	,tax_num_1 VARCHAR(150)  		--//  ENCODE zstd
	,tax_num_2 VARCHAR(150)  		--//  ENCODE zstd
	,busn_ptnr_subj_eqlztn_tax_ind VARCHAR(150)  		--//  ENCODE zstd
	,liab_for_vat VARCHAR(150)  		--//  ENCODE zstd
	,hs_num_and_street VARCHAR(150)  		--//  ENCODE zstd
	,telebox_num VARCHAR(150)  		--//  ENCODE zstd
	,fst_phn_num VARCHAR(150)  		--//  ENCODE zstd
	,sec_phn_num VARCHAR(150)  		--//  ENCODE zstd
	,fax_num VARCHAR(150)  		--//  ENCODE zstd
	,teletex_num VARCHAR(150)  		--//  ENCODE zstd
	,telex_num VARCHAR(150)  		--//  ENCODE zstd
	,trspn_zn_goods_delv VARCHAR(150)  		--//  ENCODE zstd
	,is_acct_one_time_acct_ind VARCHAR(150)  		--//  ENCODE zstd
	,alt_payee_doc_allw_ind VARCHAR(150)  		--//  ENCODE zstd
	,co_id_trad_ptnr VARCHAR(150)  		--//  ENCODE zstd
	,vat_regs_num VARCHAR(150)  		--//  ENCODE zstd
	,cmpt_ind VARCHAR(150)  		--//  ENCODE zstd
	,sls_ptnr_ind VARCHAR(150)  		--//  ENCODE zstd
	,sls_prosp_ind VARCHAR(150)  		--//  ENCODE zstd
	,for_cust_type4_ind VARCHAR(150)  		--//  ENCODE zstd
	,id_dflt_sold_to_prty VARCHAR(150)  		--//  ENCODE zstd
	,in_cnsmr VARCHAR(150)  		--//  ENCODE zstd
	,legal_sts VARCHAR(150)  		--//  ENCODE zstd
	,indstr_cd_1 VARCHAR(150)  		--//  ENCODE zstd
	,indstr_cd_2 VARCHAR(150)  		--//  ENCODE zstd
	,indstr_cd_3 VARCHAR(150)  		--//  ENCODE zstd
	,indstr_cd_4 VARCHAR(150)  		--//  ENCODE zstd
	,indstr_cd_5 VARCHAR(150)  		--//  ENCODE zstd
	,init_cntct VARCHAR(150)  		--//  ENCODE zstd
	,annl_sls_1 VARCHAR(150)  		--//  ENCODE zstd
	,yr_for_sls_gvn numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,crncy_sls_fig VARCHAR(150)  		--//  ENCODE zstd
	,yr_num_emp numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,yr_for_num_emp_gvn numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,attr_1 VARCHAR(150)  		--//  ENCODE zstd
	,attr_2 VARCHAR(150)  		--//  ENCODE zstd
	,attr_3 VARCHAR(150)  		--//  ENCODE zstd
	,attr_4 VARCHAR(150)  		--//  ENCODE zstd
	,attr_5 VARCHAR(150)  		--//  ENCODE zstd
	,attr_6 VARCHAR(150)  		--//  ENCODE zstd
	,attr_7 VARCHAR(150)  		--//  ENCODE zstd
	,attr_8 VARCHAR(150)  		--//  ENCODE zstd
	,attr_9 VARCHAR(150)  		--//  ENCODE zstd
	,attr_10 VARCHAR(150)  		--//  ENCODE zstd
	,ntrl_prsn VARCHAR(150)  		--//  ENCODE zstd
	,annl_sls_2 VARCHAR(150)  		--//  ENCODE zstd
	,tax_juris VARCHAR(150)  		--//  ENCODE zstd
	,srch_term_match_cd_srch1 VARCHAR(150)  		--//  ENCODE zstd
	,srch_term_match_cd_srch2 VARCHAR(150)  		--//  ENCODE zstd
	,srch_term_match_cd_srch3 VARCHAR(150)  		--//  ENCODE zstd
	,fisc_yr_vrnt VARCHAR(150)  		--//  ENCODE zstd
	,usg_ind VARCHAR(150)  		--//  ENCODE zstd
	,insp_carr_out_by_cust VARCHAR(150)  		--//  ENCODE zstd
	,insp_delv_note_after_outb_delv VARCHAR(150)  		--//  ENCODE zstd
	,ref_acct_grp_one_time_acct VARCHAR(150)  		--//  ENCODE zstd
	,po_box_city VARCHAR(150)  		--//  ENCODE zstd
	,plnt VARCHAR(150)  		--//  ENCODE zstd
	,data_med_exch_ind VARCHAR(150)  		--//  ENCODE zstd
	,instr_key_data_med_exch VARCHAR(150)  		--//  ENCODE zstd
	,sts_data_tfr_subsq_rlse VARCHAR(150)  		--//  ENCODE zstd
	,asgnmt_hier numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,pmt_blk VARCHAR(150)  		--//  ENCODE zstd
	,cust_grp VARCHAR(150)  		--//  ENCODE zstd
	,id_mn_non_mil_use VARCHAR(150)  		--//  ENCODE zstd
	,id_mn_mil_use VARCHAR(150)  		--//  ENCODE zstd
	,cust_cond_grp_1 VARCHAR(150)  		--//  ENCODE zstd
	,cust_cond_grp_2 VARCHAR(150)  		--//  ENCODE zstd
	,cust_cond_grp_3 VARCHAR(150)  		--//  ENCODE zstd
	,cust_cond_grp_4 VARCHAR(150)  		--//  ENCODE zstd
	,cust_cond_grp_5 VARCHAR(150)  		--//  ENCODE zstd
	,alt_pyr_acct_num_ind VARCHAR(150)  		--//  ENCODE zstd
	,tax_type VARCHAR(150)  		--//  ENCODE zstd
	,tax_num_type VARCHAR(150)  		--//  ENCODE zstd
	,tax_num3 VARCHAR(150)  		--//  ENCODE zstd
	,tax_num4 VARCHAR(150)  		--//  ENCODE zstd
	,cust_is_icms_expt VARCHAR(150)  		--//  ENCODE zstd
	,cust_is_ipi_expt VARCHAR(150)  		--//  ENCODE zstd
	,cust_grp_tax_subst VARCHAR(150)  		--//  ENCODE zstd
	,cust_cfop_cat VARCHAR(150)  		--//  ENCODE zstd
	,tax_law_icms VARCHAR(150)  		--//  ENCODE zstd
	,tax_law_ipi VARCHAR(150)  		--//  ENCODE zstd
	,biochem_wf_ind VARCHAR(150)  		--//  ENCODE zstd
	,nuclr_np_ind VARCHAR(150)  		--//  ENCODE zstd
	,natl_scty_ind VARCHAR(150)  		--//  ENCODE zstd
	,missile_tech_ind VARCHAR(150)  		--//  ENCODE zstd
	,cent_sls_blk_cust VARCHAR(150)  		--//  ENCODE zstd
	,unifm_rsrs_lctr VARCHAR(132)  		--//  ENCODE zstd
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE zstd
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE zstd
	,PRIMARY KEY (cust_num_1)
)
		--// DISTSTYLE ALL
;
--DROP TABLE ASPITG_INTEGRATION.itg_cust_sls;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_CUST_SLS		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_cust_sls
(
	clnt VARCHAR(3)  		--//  ENCODE zstd
	,cust_no VARCHAR(10) NOT NULL 		--//  ENCODE zstd
	,sls_org VARCHAR(4) NOT NULL 		--//  ENCODE zstd
	,dstr_chnl VARCHAR(2) NOT NULL 		--//  ENCODE zstd
	,div VARCHAR(2) NOT NULL 		--//  ENCODE zstd
	,obj_crt_prsn VARCHAR(12)  		--//  ENCODE zstd
	,rec_crt_dt DATE  		--//  ENCODE zstd
	,auth_grp VARCHAR(4)  		--//  ENCODE zstd
	,cust_del_flag VARCHAR(1)  		--//  ENCODE zstd
	,cust_stat_grp VARCHAR(1)  		--//  ENCODE zstd
	,cust_ord_blk VARCHAR(2)  		--//  ENCODE zstd
	,prc_pcdr_asgn VARCHAR(1)  		--//  ENCODE zstd
	,cust_grp VARCHAR(2)  		--//  ENCODE zstd
	,sls_dstrc VARCHAR(6)  		--//  ENCODE zstd
	,prc_grp VARCHAR(2)  		--//  ENCODE zstd
	,prc_list_typ VARCHAR(2)  		--//  ENCODE zstd
	,ord_prob_itm numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,incoterm1 VARCHAR(3)  		--//  ENCODE zstd
	,incoterm2 VARCHAR(28)  		--//  ENCODE zstd
	,cust_delv_blk VARCHAR(2)  		--//  ENCODE zstd
	,cmplt_delv_sls_ord VARCHAR(1)  		--//  ENCODE zstd
	,max_no_prtl_delv_allw_itm NUMERIC(1,0)  		--//  ENCODE zstd
	,prtl_delv_itm_lvl VARCHAR(1)  		--//  ENCODE zstd
	,ord_comb_in VARCHAR(1)  		--//  ENCODE zstd
	,btch_splt_allw VARCHAR(1)  		--//  ENCODE zstd
	,delv_prir numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,vend_acct_no VARCHAR(12)  		--//  ENCODE zstd
	,shipping_cond VARCHAR(2)  		--//  ENCODE zstd
	,bill_blk_cust VARCHAR(2)  		--//  ENCODE zstd
	,man_invc_maint VARCHAR(1)  		--//  ENCODE zstd
	,invc_dt VARCHAR(2)  		--//  ENCODE zstd
	,invc_list_sched VARCHAR(2)  		--//  ENCODE zstd
	,cost_est_in VARCHAR(1)  		--//  ENCODE zstd
	,val_lmt_cost_est NUMERIC(13,2)  		--//  ENCODE zstd
	,crncy VARCHAR(5)  		--//  ENCODE zstd
	,cust_clas VARCHAR(2)  		--//  ENCODE zstd
	,acct_asgnmt_grp VARCHAR(2)  		--//  ENCODE zstd
	,delv_plnt VARCHAR(4)  		--//  ENCODE zstd
	,sls_grp VARCHAR(3)  		--//  ENCODE zstd
	,sls_ofc VARCHAR(4)  		--//  ENCODE zstd
	,itm_props VARCHAR(10)  		--//  ENCODE zstd
	,cust_grp1 VARCHAR(3)  		--//  ENCODE zstd
	,cust_grp2 VARCHAR(3)  		--//  ENCODE zstd
	,cust_grp3 VARCHAR(3)  		--//  ENCODE zstd
	,cust_grp4 VARCHAR(3)  		--//  ENCODE zstd
	,cust_grp5 VARCHAR(3)  		--//  ENCODE zstd
	,cust_rebt_in VARCHAR(1)  		--//  ENCODE zstd
	,rebt_indx_cust_strt_prd DATE  		--//  ENCODE zstd
	,exch_rt_typ VARCHAR(4)  		--//  ENCODE zstd
	,prc_dtrmn_id VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id1 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id2 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id3 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id4 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id5 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id6 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id7 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id8 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id9 VARCHAR(1)  		--//  ENCODE zstd
	,prod_attr_id10 VARCHAR(1)  		--//  ENCODE zstd
	,pymt_key_term VARCHAR(4)  		--//  ENCODE zstd
	,persnl_num NUMERIC(8,0)  		--//  ENCODE zstd
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE zstd
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE zstd
	,PRIMARY KEY (cust_no, sls_org, dstr_chnl, div)
)
		--// DISTSTYLE ALL
;
--DROP TABLE ASPITG_INTEGRATION.itg_cust_sls_attr;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_CUST_SLS_ATTR		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_cust_sls_attr
(
	division VARCHAR(2) NOT NULL 		--//  ENCODE lzo
	,distr_chan VARCHAR(2) NOT NULL 		--//  ENCODE lzo
	,salesorg VARCHAR(4) NOT NULL 		--//  ENCODE lzo
	,cust_sales VARCHAR(10) NOT NULL 		--//  ENCODE lzo
	,accnt_asgn VARCHAR(2)  		--//  ENCODE lzo
	,cust_cla VARCHAR(2)  		--//  ENCODE lzo
	,cust_group VARCHAR(2)  		--//  ENCODE lzo
	,cust_grp1 VARCHAR(3)  		--//  ENCODE lzo
	,cust_grp2 VARCHAR(3)  		--//  ENCODE lzo
	,cust_grp3 VARCHAR(3)  		--//  ENCODE lzo
	,cust_grp4 VARCHAR(3)  		--//  ENCODE lzo
	,cust_grp5 VARCHAR(3)  		--//  ENCODE lzo
	,c_ctr_area VARCHAR(4)  		--//  ENCODE lzo
	,incoterms VARCHAR(3)  		--//  ENCODE lzo
	,incoterms2 VARCHAR(32)  		--//  ENCODE lzo
	,plant VARCHAR(4)  		--//  ENCODE lzo
	,pmnttrms VARCHAR(4)  		--//  ENCODE lzo
	,sales_dist VARCHAR(6)  		--//  ENCODE lzo
	,sales_grp VARCHAR(3)  		--//  ENCODE lzo
	,sales_off VARCHAR(4)  		--//  ENCODE lzo
	,cur_sls_emp NUMERIC(8,0)  		--//  ENCODE delta
	,lcl_cust_grp_1 VARCHAR(10)  		--//  ENCODE lzo
	,lcl_cust_grp_2 VARCHAR(10)  		--//  ENCODE lzo
	,lcl_cust_grp_3 VARCHAR(10)  		--//  ENCODE lzo
	,lcl_cust_grp_4 VARCHAR(10)  		--//  ENCODE lzo
	,lcl_cust_grp_5 VARCHAR(10)  		--//  ENCODE lzo
	,lcl_cust_grp_6 VARCHAR(10)  		--//  ENCODE lzo
	,lcl_cust_grp_7 VARCHAR(10)  		--//  ENCODE lzo
	,lcl_cust_grp_8 VARCHAR(10)  		--//  ENCODE lzo
	,customer VARCHAR(10)  		--//  ENCODE lzo
	,prc_proc VARCHAR(1)  		--//  ENCODE lzo
	,prc_grp VARCHAR(2)  		--//  ENCODE lzo
	,prc_lst_type VARCHAR(2)  		--//  ENCODE lzo
	,shpg_con VARCHAR(2)  		--//  ENCODE lzo
	,par_del VARCHAR(1)  		--//  ENCODE lzo
	,max_num_pa VARCHAR(1)  		--//  ENCODE lzo
	,prnt_cust_key VARCHAR(12)  		--//  ENCODE lzo
	,bnr_key VARCHAR(12)  		--//  ENCODE lzo
	,bnr_frmt_key VARCHAR(12)  		--//  ENCODE lzo
	,go_to_mdl_key VARCHAR(12)  		--//  ENCODE lzo
	,chnl_key VARCHAR(12)  		--//  ENCODE lzo
	,sub_chnl_key VARCHAR(12)  		--//  ENCODE lzo
	,segmt_key VARCHAR(12)  		--//  ENCODE lzo
	,cust_set_1 VARCHAR(12)  		--//  ENCODE lzo
	,cust_set_2 VARCHAR(12)  		--//  ENCODE lzo
	,cust_set_3 VARCHAR(12)  		--//  ENCODE lzo
	,cust_set_4 VARCHAR(12)  		--//  ENCODE lzo
	,cust_set_5 VARCHAR(12)  		--//  ENCODE lzo
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,PRIMARY KEY (division, distr_chan, salesorg, cust_sales)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_cust_text;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_CUST_TEXT		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_cust_text
(
	clnt VARCHAR(3)
	,cust_num1 VARCHAR(10)
	,nm VARCHAR(100)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_dstrbtn_chnl;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_DSTRBTN_CHNL		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_dstrbtn_chnl
(
	distr_chan VARCHAR(2) NOT NULL 		--//  ENCODE lzo
	,langu VARCHAR(1) NOT NULL 		--//  ENCODE lzo
	,txtsh VARCHAR(20)  		--//  ENCODE lzo
	,txtmd VARCHAR(40)  		--//  ENCODE lzo
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,PRIMARY KEY (distr_chan, langu)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_ecc_marm;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_ECC_MARM		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_ecc_marm
(
	matl_no VARCHAR(18) NOT NULL 		--//  ENCODE bytedict
	,alt_unt VARCHAR(3) NOT NULL 		--//  ENCODE bytedict
	,numrtr NUMERIC(5,0)  		--//  ENCODE lzo
	,denomtr NUMERIC(5,0)  		--//  ENCODE lzo
	,ean_nr VARCHAR(13)  		--//  ENCODE bytedict
	,ean_11 VARCHAR(18)  		--//  ENCODE bytedict
	,ctgry VARCHAR(2)  		--//  ENCODE lzo
	,length NUMERIC(13,3)  		--//  ENCODE lzo
	,width NUMERIC(13,3)  		--//  ENCODE lzo
	,height NUMERIC(13,3)  		--//  ENCODE lzo
	,unit VARCHAR(3)  		--//  ENCODE lzo
	,volum VARCHAR(14)  		--//  ENCODE bytedict
	,vol_unt VARCHAR(3)  		--//  ENCODE bytedict
	,gross_wt NUMERIC(13,3)  		--//  ENCODE bytedict
	,wt_unt VARCHAR(3)  		--//  ENCODE lzo
	,lowrlvl_unt VARCHAR(3)  		--//  ENCODE lzo
	,intrnl_char NUMERIC(10,0)  		--//  ENCODE lzo
	,uom_srtno NUMERIC(2,0)  		--//  ENCODE lzo
	,leadng_unt VARCHAR(1)  		--//  ENCODE lzo
	,valutn_unt VARCHAR(1)  		--//  ENCODE lzo
	,unts_use VARCHAR(1)  		--//  ENCODE lzo
	,uom VARCHAR(3)  		--//  ENCODE bytedict
	,lg_vrnt VARCHAR(1)  		--//  ENCODE lzo
	,ean_vrnt VARCHAR(2)  		--//  ENCODE lzo
	,remng_vol NUMERIC(3,0)  		--//  ENCODE bytedict
	,max_stack NUMERIC(3,0)  		--//  ENCODE lzo
	,capause NUMERIC(15,0)  		--//  ENCODE lzo
	,uom_ctgry VARCHAR(1)  		--//  ENCODE lzo
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE runlength
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,PRIMARY KEY (matl_no, alt_unt)
)
<<Error - UNKNOWN DISTSTYLE>>
		--// SORTKEY ( 
		--// 	matl_no
		--// 	)
;		--// ;
--DROP TABLE ASPITG_INTEGRATION.itg_ecc_standard_cost;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_ECC_STANDARD_COST		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_ecc_standard_cost
(
	mandt VARCHAR(3) NOT NULL 		--//  ENCODE lzo
	,matnr VARCHAR(18) NOT NULL 		--//  ENCODE lzo
	,bwkey VARCHAR(4) NOT NULL 		--//  ENCODE lzo
	,bwtar VARCHAR(10) NOT NULL 		--//  ENCODE lzo
	,lvorm VARCHAR(1)  		--//  ENCODE lzo
	,lbkum NUMERIC(13,3)  		--//  ENCODE delta
	,salk3 NUMERIC(13,2)  		--//  ENCODE delta
	,vprsv VARCHAR(1)  		--//  ENCODE lzo
	,verpr NUMERIC(11,2)  		--//  ENCODE delta
	,stprs NUMERIC(11,2)  		--//  ENCODE delta
	,peinh NUMERIC(5,0)  		--//  ENCODE delta
	,bklas VARCHAR(4)  		--//  ENCODE lzo
	,salkv NUMERIC(13,2)  		--//  ENCODE delta
	,vmkum NUMERIC(13,3)  		--//  ENCODE delta
	,vmsal NUMERIC(13,2)  		--//  ENCODE delta
	,vmvpr VARCHAR(1)  		--//  ENCODE lzo
	,vmver NUMERIC(11,2)  		--//  ENCODE delta
	,vmstp NUMERIC(11,2)  		--//  ENCODE delta
	,vmpei NUMERIC(5,0)  		--//  ENCODE lzo
	,vmbkl VARCHAR(4)  		--//  ENCODE lzo
	,vmsav NUMERIC(13,2)  		--//  ENCODE delta
	,vjkum NUMERIC(13,3)  		--//  ENCODE delta
	,vjsal NUMERIC(13,2)  		--//  ENCODE delta
	,vjvpr VARCHAR(1)  		--//  ENCODE lzo
	,vjver NUMERIC(11,2)  		--//  ENCODE delta
	,vjstp NUMERIC(11,2)  		--//  ENCODE delta
	,vjpei NUMERIC(5,0)  		--//  ENCODE delta
	,vjbkl VARCHAR(4)  		--//  ENCODE lzo
	,vjsav NUMERIC(13,2)  		--//  ENCODE delta
	,lfgja NUMERIC(4,0)  		--//  ENCODE delta
	,lfmon NUMERIC(2,0)  		--//  ENCODE delta
	,bwtty VARCHAR(1)  		--//  ENCODE lzo
	,stprv NUMERIC(11,2)  		--//  ENCODE delta
	,laepr DATE  		--//  ENCODE delta
	,zkprs NUMERIC(11,2)  		--//  ENCODE delta
	,zkdat DATE  		--//  ENCODE delta
	,timestamps NUMERIC(15,0)  		--//  ENCODE delta
	,bwprs NUMERIC(11,2)  		--//  ENCODE delta
	,bwprh NUMERIC(11,2)  		--//  ENCODE delta
	,vjbws NUMERIC(11,2)  		--//  ENCODE delta
	,vjbwh NUMERIC(11,2)  		--//  ENCODE delta
	,vvjsl NUMERIC(13,2)  		--//  ENCODE delta
	,vvjlb NUMERIC(13,3)  		--//  ENCODE delta
	,vvmlb NUMERIC(13,3)  		--//  ENCODE delta
	,vvsal NUMERIC(13,2)  		--//  ENCODE delta
	,zplpr NUMERIC(11,2)  		--//  ENCODE delta
	,zplp1 NUMERIC(11,2)  		--//  ENCODE delta
	,zplp2 NUMERIC(11,2)  		--//  ENCODE delta
	,zplp3 NUMERIC(11,2)  		--//  ENCODE delta
	,zpld1 DATE  		--//  ENCODE delta
	,zpld2 DATE  		--//  ENCODE delta
	,zpld3 DATE  		--//  ENCODE delta
	,pperz NUMERIC(6,0)  		--//  ENCODE delta
	,pperl NUMERIC(6,0)  		--//  ENCODE delta
	,pperv NUMERIC(6,0)  		--//  ENCODE delta
	,kalkz VARCHAR(1)  		--//  ENCODE lzo
	,kalkl VARCHAR(1)  		--//  ENCODE lzo
	,kalkv VARCHAR(1)  		--//  ENCODE lzo
	,kalsc VARCHAR(6)  		--//  ENCODE lzo
	,xlifo VARCHAR(1)  		--//  ENCODE lzo
	,mypol VARCHAR(4)  		--//  ENCODE lzo
	,bwph1 NUMERIC(11,2)  		--//  ENCODE delta
	,bwps1 NUMERIC(11,2)  		--//  ENCODE delta
	,abwkz NUMERIC(2,0)  		--//  ENCODE delta
	,pstat VARCHAR(15)  		--//  ENCODE lzo
	,kaln1 NUMERIC(12,0)  		--//  ENCODE delta
	,kalnr NUMERIC(12,0)  		--//  ENCODE delta
	,bwva1 VARCHAR(3)  		--//  ENCODE lzo
	,bwva2 VARCHAR(3)  		--//  ENCODE lzo
	,bwva3 VARCHAR(3)  		--//  ENCODE lzo
	,vers1 NUMERIC(2,0)  		--//  ENCODE delta
	,vers2 NUMERIC(2,0)  		--//  ENCODE delta
	,vers3 NUMERIC(2,0)  		--//  ENCODE delta
	,hrkft VARCHAR(4)  		--//  ENCODE lzo
	,kosgr VARCHAR(10)  		--//  ENCODE lzo
	,pprdz NUMERIC(3,0)  		--//  ENCODE delta
	,pprdl NUMERIC(3,0)  		--//  ENCODE delta
	,pprdv NUMERIC(3,0)  		--//  ENCODE delta
	,pdatz NUMERIC(4,0)  		--//  ENCODE delta
	,pdatl NUMERIC(4,0)  		--//  ENCODE delta
	,pdatv NUMERIC(4,0)  		--//  ENCODE delta
	,ekalr VARCHAR(1)  		--//  ENCODE lzo
	,vplpr NUMERIC(11,2)  		--//  ENCODE delta
	,mlmaa VARCHAR(1)  		--//  ENCODE lzo
	,mlast VARCHAR(1)  		--//  ENCODE lzo
	,lplpr NUMERIC(11,2)  		--//  ENCODE delta
	,vksal NUMERIC(13,2)  		--//  ENCODE delta
	,hkmat VARCHAR(1)  		--//  ENCODE lzo
	,sperw VARCHAR(1)  		--//  ENCODE lzo
	,kziwl VARCHAR(3)  		--//  ENCODE lzo
	,wlinl DATE  		--//  ENCODE delta
	,abciw VARCHAR(1)  		--//  ENCODE lzo
	,bwspa NUMERIC(6,2)  		--//  ENCODE delta
	,lplpx NUMERIC(11,2)  		--//  ENCODE delta
	,vplpx NUMERIC(11,2)  		--//  ENCODE delta
	,fplpx NUMERIC(11,2)  		--//  ENCODE delta
	,lbwst VARCHAR(1)  		--//  ENCODE lzo
	,vbwst VARCHAR(1)  		--//  ENCODE lzo
	,fbwst VARCHAR(1)  		--//  ENCODE lzo
	,eklas VARCHAR(4)  		--//  ENCODE lzo
	,qklas VARCHAR(4)  		--//  ENCODE lzo
	,mtuse VARCHAR(1)  		--//  ENCODE lzo
	,mtorg VARCHAR(1)  		--//  ENCODE lzo
	,ownpr VARCHAR(1)  		--//  ENCODE lzo
	,xbewm VARCHAR(1)  		--//  ENCODE lzo
	,bwpei NUMERIC(5,0)  		--//  ENCODE delta
	,mbrue VARCHAR(1)  		--//  ENCODE lzo
	,oklas VARCHAR(4)  		--//  ENCODE lzo
	,oippinv VARCHAR(1)  		--//  ENCODE lzo
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,PRIMARY KEY (mandt, matnr, bwkey, bwtar)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_edw_material_dim_updt;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_EDW_MATERIAL_DIM_UPDT		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_edw_material_dim_updt
(
	matl_num VARCHAR(18)  		--//  ENCODE lzo
	,base_uom VARCHAR(3)  		--//  ENCODE lzo
	,basic_matl VARCHAR(14)  		--//  ENCODE lzo
	,createdon DATE  		--//  ENCODE lzo
	,division VARCHAR(2)  		--//  ENCODE lzo
	,eanupc VARCHAR(18)  		--//  ENCODE lzo
	,gross_wt NUMERIC(17,0)  		--//  ENCODE lzo
	,logsys VARCHAR(10)  		--//  ENCODE lzo
	,manufactor VARCHAR(10)  		--//  ENCODE lzo
	,manu_matnr VARCHAR(40)  		--//  ENCODE lzo
	,matl_cat VARCHAR(2)  		--//  ENCODE lzo
	,matl_group VARCHAR(9)  		--//  ENCODE lzo
	,matl_type VARCHAR(256)  		--//  ENCODE lzo
	,net_weight NUMERIC(17,0)  		--//  ENCODE lzo
	,po_unit VARCHAR(3)  		--//  ENCODE lzo
	,prod_hier VARCHAR(18)  		--//  ENCODE lzo
	,rt_sups VARCHAR(1)  		--//  ENCODE lzo
	,size_dim VARCHAR(32)  		--//  ENCODE lzo
	,unit_dim VARCHAR(3)  		--//  ENCODE lzo
	,unit_of_wt VARCHAR(10)  		--//  ENCODE lzo
	,volume NUMERIC(17,0)  		--//  ENCODE lzo
	,volumeunit VARCHAR(10)  		--//  ENCODE lzo
	,height NUMERIC(17,0)  		--//  ENCODE lzo
	,lenght NUMERIC(17,0)  		--//  ENCODE lzo
	,width NUMERIC(17,0)  		--//  ENCODE lzo
	,bic_zz_mvgr1 VARCHAR(3)  		--//  ENCODE lzo
	,bic_zz_mvgr2 VARCHAR(3)  		--//  ENCODE lzo
	,bic_zz_mvgr3 VARCHAR(3)  		--//  ENCODE lzo
	,bic_zz_mvgr4 VARCHAR(3)  		--//  ENCODE lzo
	,bic_zz_mvgr5 VARCHAR(3)  		--//  ENCODE lzo
	,prodh1 VARCHAR(18)  		--//  ENCODE lzo
	,prodh2 VARCHAR(18)  		--//  ENCODE lzo
	,prodh3 VARCHAR(18)  		--//  ENCODE lzo
	,prodh4 VARCHAR(18)  		--//  ENCODE lzo
	,prodh5 VARCHAR(18)  		--//  ENCODE lzo
	,prodh6 VARCHAR(18)  		--//  ENCODE lzo
	,bic_zmerciapl VARCHAR(10)  		--//  ENCODE lzo
	,ch_on DATE  		--//  ENCODE lzo
	,createdby VARCHAR(100)  		--//  ENCODE lzo
	,datefrom DATE  		--//  ENCODE lzo
	,del_flag VARCHAR(1)  		--//  ENCODE lzo
	,ean_numtyp VARCHAR(10)  		--//  ENCODE lzo
	,bic_yuomcnvf NUMERIC(17,0)  		--//  ENCODE lzo
	,bic_ztragr VARCHAR(4)  		--//  ENCODE lzo
	,bic_zxchpf VARCHAR(1)  		--//  ENCODE lzo
	,bic_zpur_key VARCHAR(4)  		--//  ENCODE lzo
	,bic_zhaz_mat VARCHAR(18)  		--//  ENCODE lzo
	,bic_zstr_cond VARCHAR(2)  		--//  ENCODE lzo
	,bic_zmhdrz VARCHAR(4)  		--//  ENCODE lzo
	,bic_zmhdhb VARCHAR(4)  		--//  ENCODE lzo
	,bic_zqmpur VARCHAR(1)  		--//  ENCODE lzo
	,bic_zmstav VARCHAR(2)  		--//  ENCODE lzo
	,bic_zskutec VARCHAR(3)  		--//  ENCODE lzo
	,bic_zmjrtec VARCHAR(35)  		--//  ENCODE lzo
	,bic_zz_color NUMERIC(2,0)  		--//  ENCODE lzo
	,bic_zz_stack NUMERIC(2,0)  		--//  ENCODE lzo
	,bic_ztaklv VARCHAR(1)  		--//  ENCODE lzo
	,extmatlgrp VARCHAR(18)  		--//  ENCODE lzo
	,bic_zvpsta VARCHAR(15)  		--//  ENCODE lzo
	,bic_zpstat VARCHAR(15)  		--//  ENCODE lzo
	,bic_zoldmatl VARCHAR(18)  		--//  ENCODE lzo
	,std_descr VARCHAR(20)  		--//  ENCODE lzo
	,bic_zferth VARCHAR(18)  		--//  ENCODE lzo
	,bic_zmsource VARCHAR(10)  		--//  ENCODE lzo
	,bic_zbramin VARCHAR(6)  		--//  ENCODE lzo
	,bic_zprodseg VARCHAR(10)  		--//  ENCODE lzo
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_material_base;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_MATERIAL_BASE		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_material_base
(
	matl_num VARCHAR(40) NOT NULL 		--//  ENCODE lzo
	,crt_on DATE  		--//  ENCODE az64
	,crt_by_nm VARCHAR(12)  		--//  ENCODE lzo
	,chg_dttm DATE  		--//  ENCODE az64
	,chg_by_nm VARCHAR(12)  		--//  ENCODE lzo
	,maint_sts_cmplt_matl VARCHAR(15)  		--//  ENCODE lzo
	,maint_sts VARCHAR(15)  		--//  ENCODE lzo
	,fl_matl_del_clnt_lvl VARCHAR(10)  		--//  ENCODE lzo
	,matl_type_cd VARCHAR(10)  		--//  ENCODE lzo
	,indstr_sectr VARCHAR(10)  		--//  ENCODE lzo
	,matl_grp_cd VARCHAR(20)  		--//  ENCODE lzo
	,old_matl_num VARCHAR(40)  		--//  ENCODE lzo
	,base_uom_cd VARCHAR(10)  		--//  ENCODE lzo
	,prch_uom_cd VARCHAR(10)  		--//  ENCODE lzo
	,doc_num VARCHAR(22)  		--//  ENCODE lzo
	,doc_type VARCHAR(10)  		--//  ENCODE lzo
	,doc_vers VARCHAR(10)  		--//  ENCODE lzo
	,pg_fmt__doc VARCHAR(10)  		--//  ENCODE lzo
	,doc_chg_num VARCHAR(20)  		--//  ENCODE lzo
	,pg_num_doc VARCHAR(10)  		--//  ENCODE lzo
	,num_sht numeric(18,0)		--//  ENCODE az64 // INTEGER  
	,prdtn_memo_txt VARCHAR(40)  		--//  ENCODE lzo
	,pg_fmt_prdtn_memo VARCHAR(10)  		--//  ENCODE lzo
	,size_dims_txt VARCHAR(32)  		--//  ENCODE lzo
	,bsc_matl VARCHAR(100)  		--//  ENCODE lzo
	,indstr_std_desc VARCHAR(40)  		--//  ENCODE lzo
	,mercia_plan VARCHAR(10)  		--//  ENCODE lzo
	,prchsng_val_key VARCHAR(10)  		--//  ENCODE lzo
	,grs_wt_meas NUMERIC(13,3)  		--//  ENCODE az64
	,net_wt_meas NUMERIC(13,3)  		--//  ENCODE az64
	,wt_uom_cd VARCHAR(10)  		--//  ENCODE lzo
	,vol_meas NUMERIC(13,3)  		--//  ENCODE az64
	,vol_uom_cd VARCHAR(10)  		--//  ENCODE lzo
	,cntnr_rqr VARCHAR(10)  		--//  ENCODE lzo
	,strg_cond VARCHAR(10)  		--//  ENCODE lzo
	,temp_cond_ind VARCHAR(10)  		--//  ENCODE lzo
	,low_lvl_cd VARCHAR(10)  		--//  ENCODE lzo
	,trspn_grp VARCHAR(10)  		--//  ENCODE lzo
	,haz_matl_num VARCHAR(40)  		--//  ENCODE lzo
	,div VARCHAR(10)  		--//  ENCODE lzo
	,cmpt VARCHAR(10)  		--//  ENCODE lzo
	,ean_obsol VARCHAR(13)  		--//  ENCODE lzo
	,gr_prtd_qty NUMERIC(13,3)  		--//  ENCODE az64
	,prcmt_rule VARCHAR(10)  		--//  ENCODE lzo
	,src_supl VARCHAR(10)  		--//  ENCODE lzo
	,seasn_cat VARCHAR(10)  		--//  ENCODE lzo
	,lbl_type_cd VARCHAR(10)  		--//  ENCODE lzo
	,lbl_form VARCHAR(10)  		--//  ENCODE lzo
	,deact VARCHAR(10)  		--//  ENCODE lzo
	,prmry_upc_cd VARCHAR(40)  		--//  ENCODE lzo
	,ean_cat VARCHAR(10)  		--//  ENCODE lzo
	,lgth_meas NUMERIC(13,3)  		--//  ENCODE az64
	,wdth_meas NUMERIC(13,3)  		--//  ENCODE az64
	,hght_meas NUMERIC(13,3)  		--//  ENCODE az64
	,dim_uom_cd VARCHAR(10)  		--//  ENCODE lzo
	,prod_hier_cd VARCHAR(40)  		--//  ENCODE lzo
	,stk_tfr_chg_cost VARCHAR(10)  		--//  ENCODE lzo
	,cad_ind VARCHAR(10)  		--//  ENCODE lzo
	,qm_prcmt_act VARCHAR(10)  		--//  ENCODE lzo
	,allw_pkgng_wt NUMERIC(13,3)  		--//  ENCODE az64
	,wt_unit VARCHAR(10)  		--//  ENCODE lzo
	,allw_pkgng_vol NUMERIC(13,3)  		--//  ENCODE az64
	,vol_unit VARCHAR(10)  		--//  ENCODE lzo
	,exces_wt_tlrnc NUMERIC(3,1)  		--//  ENCODE az64
	,exces_vol_tlrnc NUMERIC(3,1)  		--//  ENCODE az64
	,var_prch_ord_unit VARCHAR(10)  		--//  ENCODE lzo
	,rvsn_lvl_asgn_matl VARCHAR(10)  		--//  ENCODE lzo
	,configurable_matl_ind VARCHAR(10)  		--//  ENCODE lzo
	,btch_mgmt_reqt_ind VARCHAR(10)  		--//  ENCODE lzo
	,pkgng_matl_type_cd VARCHAR(10)  		--//  ENCODE lzo
	,max_lvl_vol NUMERIC(3,0)  		--//  ENCODE az64
	,stack_fact numeric(18,0)		--//  ENCODE az64 // INTEGER  
	,pkgng_matl_grp VARCHAR(10)  		--//  ENCODE lzo
	,auth_grp VARCHAR(10)  		--//  ENCODE lzo
	,vld_from_dt DATE  		--//  ENCODE az64
	,del_dt DATE  		--//  ENCODE az64
	,seasn_yr VARCHAR(10)  		--//  ENCODE lzo
	,prc_bnd_cat VARCHAR(10)  		--//  ENCODE lzo
	,bill_of_matl VARCHAR(10)  		--//  ENCODE lzo
	,extrnl_matl_grp_txt VARCHAR(40)  		--//  ENCODE lzo
	,cross_plnt_cnfg_matl VARCHAR(40)  		--//  ENCODE lzo
	,matl_cat VARCHAR(10)  		--//  ENCODE lzo
	,matl_coprod_ind VARCHAR(10)  		--//  ENCODE lzo
	,fllp_matl_ind VARCHAR(10)  		--//  ENCODE lzo
	,prc_ref_matl VARCHAR(40)  		--//  ENCODE lzo
	,cros_plnt_matl_sts VARCHAR(10)  		--//  ENCODE lzo
	,cros_dstn_chn_matl_sts VARCHAR(10)  		--//  ENCODE lzo
	,cros_plnt_matl_sts_vld_dt DATE  		--//  ENCODE az64
	,chn_matl_vld_from_dt DATE  		--//  ENCODE az64
	,tax_clsn_matl VARCHAR(10)  		--//  ENCODE lzo
	,catlg_prfl VARCHAR(20)  		--//  ENCODE lzo
	,min_rmn_shlf_lif NUMERIC(4,0)  		--//  ENCODE az64
	,tot_shlf_lif NUMERIC(4,0)  		--//  ENCODE az64
	,strg_pct NUMERIC(3,0)  		--//  ENCODE az64
	,cntnt_uom_cd VARCHAR(10)  		--//  ENCODE lzo
	,net_cntnt_meas NUMERIC(13,3)  		--//  ENCODE az64
	,cmpr_prc_unit NUMERIC(5,0)  		--//  ENCODE az64
	,isr_matl_grp VARCHAR(40)  		--//  ENCODE lzo
	,grs_cntnt_meas NUMERIC(13,3)  		--//  ENCODE az64
	,qty_conv_meth VARCHAR(10)  		--//  ENCODE lzo
	,intrnl_obj_num numeric(18,0)		--//  ENCODE az64 // INTEGER  
	,envmt_rlvnt VARCHAR(10)  		--//  ENCODE lzo
	,prod_allc_dtrmn_proc VARCHAR(40)  		--//  ENCODE lzo
	,prc_prfl_vrnt VARCHAR(10)  		--//  ENCODE lzo
	,matl_qual_disc VARCHAR(10)  		--//  ENCODE lzo
	,mfr_part_num VARCHAR(40)  		--//  ENCODE lzo
	,mfr_num VARCHAR(10)  		--//  ENCODE lzo
	,intrnl_inv_mgmt VARCHAR(40)  		--//  ENCODE lzo
	,mfr_part_prfl VARCHAR(10)  		--//  ENCODE lzo
	,meas_usg_unit VARCHAR(10)  		--//  ENCODE lzo
	,rollout_seasn VARCHAR(10)  		--//  ENCODE lzo
	,dngrs_goods_ind_prof VARCHAR(10)  		--//  ENCODE lzo
	,hi_viscous_ind VARCHAR(10)  		--//  ENCODE lzo
	,in_bulk_lqd_ind VARCHAR(10)  		--//  ENCODE lzo
	,lvl_explc_ser_num VARCHAR(10)  		--//  ENCODE lzo
	,pkgng_matl_clse_pkgng VARCHAR(10)  		--//  ENCODE lzo
	,appr_btch_rec_ind VARCHAR(10)  		--//  ENCODE lzo
	,ovrd_chg_num VARCHAR(10)  		--//  ENCODE lzo
	,matl_cmplt_lvl numeric(18,0)		--//  ENCODE az64 // INTEGER  
	,per_ind_shlf_lif_expn_dt VARCHAR(10)  		--//  ENCODE lzo
	,rd_rule_sled VARCHAR(10)  		--//  ENCODE lzo
	,prod_cmpos_prtd_pkgng VARCHAR(10)  		--//  ENCODE lzo
	,genl_item_cat_grp VARCHAR(10)  		--//  ENCODE lzo
	,gn_matl_logl_vrnt VARCHAR(10)  		--//  ENCODE lzo
	,prod_base VARCHAR(10)  		--//  ENCODE lzo
	,vrnt VARCHAR(10)  		--//  ENCODE lzo
	,put_up VARCHAR(10)  		--//  ENCODE lzo
	,mega_brnd_cd VARCHAR(10)  		--//  ENCODE lzo
	,brnd_cd VARCHAR(10)  		--//  ENCODE lzo
	,tech VARCHAR(10)  		--//  ENCODE lzo
	,color VARCHAR(10)  		--//  ENCODE lzo
	,seasonality VARCHAR(10)  		--//  ENCODE lzo
	,mfg_src_cd VARCHAR(10)  		--//  ENCODE lzo
	,mfr_part_num_new VARCHAR(256)  		--//  ENCODE lzo
	,formulation_num VARCHAR(50)  		--//  ENCODE lzo
	,pka_franchise_cd VARCHAR(2)  		--//  ENCODE lzo
	,pka_franchise_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_brand_cd VARCHAR(2)  		--//  ENCODE lzo
	,pka_brand_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_sub_brand_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_sub_brand_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_variant_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_variant_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_sub_variant_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_sub_variant_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_flavor_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_flavor_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_ingredient_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_ingredient_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_application_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_application_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_length_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_length_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_shape_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_shape_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_spf_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_spf_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_cover_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_cover_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_form_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_form_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_size_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_size_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_character_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_character_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_package_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_package_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_attribute_13_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_attribute_13_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_attribute_14_cd VARCHAR(4)  		--//  ENCODE lzo
	,pka_attribute_14_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_sku_identification_cd VARCHAR(2)  		--//  ENCODE lzo
	,pka_sku_identification_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_one_time_relabeling_cd VARCHAR(2)  		--//  ENCODE lzo
	,pka_one_time_relabeling_desc VARCHAR(30)  		--//  ENCODE lzo
	,pka_product_key VARCHAR(68)  		--//  ENCODE lzo
	,pka_product_key_description VARCHAR(255)  		--//  ENCODE lzo
	,pka_product_key_description_2 VARCHAR(255)  		--//  ENCODE lzo
	,pka_root_code VARCHAR(68)  		--//  ENCODE lzo
	,pka_root_code_desc_1 VARCHAR(255)  		--//  ENCODE lzo
	,pka_root_code_desc_2 VARCHAR(255)  		--//  ENCODE lzo
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
)
<<Error - UNKNOWN DISTSTYLE>>
;
--DROP TABLE ASPITG_INTEGRATION.itg_material_dim;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_MATERIAL_DIM		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_material_dim
(
	matl_num VARCHAR(18) NOT NULL 		--//  ENCODE lzo
	,base_uom VARCHAR(3)  		--//  ENCODE lzo
	,basic_matl VARCHAR(14)  		--//  ENCODE lzo
	,createdon DATE  		--//  ENCODE delta
	,division VARCHAR(2)  		--//  ENCODE lzo
	,eanupc VARCHAR(18)  		--//  ENCODE lzo
	,gross_wt NUMERIC(17,0)  		--//  ENCODE delta
	,logsys VARCHAR(10)  		--//  ENCODE lzo
	,manufactor VARCHAR(10)  		--//  ENCODE lzo
	,manu_matnr VARCHAR(40)  		--//  ENCODE lzo
	,matl_cat VARCHAR(2)  		--//  ENCODE lzo
	,matl_group VARCHAR(9)  		--//  ENCODE lzo
	,matl_type VARCHAR(256)  		--//  ENCODE lzo
	,net_weight NUMERIC(17,0)  		--//  ENCODE delta
	,po_unit VARCHAR(3)  		--//  ENCODE lzo
	,prod_hier VARCHAR(18)  		--//  ENCODE lzo
	,rt_sups VARCHAR(1)  		--//  ENCODE lzo
	,size_dim VARCHAR(32)  		--//  ENCODE lzo
	,unit_dim VARCHAR(3)  		--//  ENCODE lzo
	,unit_of_wt VARCHAR(10)  		--//  ENCODE lzo
	,volume NUMERIC(17,0)  		--//  ENCODE delta
	,volumeunit VARCHAR(10)  		--//  ENCODE lzo
	,height NUMERIC(17,0)  		--//  ENCODE delta
	,lenght NUMERIC(17,0)  		--//  ENCODE delta
	,width NUMERIC(17,0)  		--//  ENCODE delta
	,bic_zz_mvgr1 VARCHAR(3)  		--//  ENCODE lzo
	,bic_zz_mvgr2 VARCHAR(3)  		--//  ENCODE lzo
	,bic_zz_mvgr3 VARCHAR(3)  		--//  ENCODE lzo
	,bic_zz_mvgr4 VARCHAR(3)  		--//  ENCODE lzo
	,bic_zz_mvgr5 VARCHAR(3)  		--//  ENCODE lzo
	,prodh1 VARCHAR(18)  		--//  ENCODE lzo
	,prodh2 VARCHAR(18)  		--//  ENCODE lzo
	,prodh3 VARCHAR(18)  		--//  ENCODE lzo
	,prodh4 VARCHAR(18)  		--//  ENCODE lzo
	,prodh5 VARCHAR(18)  		--//  ENCODE lzo
	,prodh6 VARCHAR(18)  		--//  ENCODE lzo
	,bic_zmerciapl VARCHAR(10)  		--//  ENCODE lzo
	,ch_on DATE  		--//  ENCODE delta
	,createdby VARCHAR(100)  		--//  ENCODE lzo
	,datefrom DATE  		--//  ENCODE delta
	,del_flag VARCHAR(1)  		--//  ENCODE lzo
	,ean_numtyp VARCHAR(10)  		--//  ENCODE lzo
	,bic_yuomcnvf NUMERIC(17,0)  		--//  ENCODE delta
	,bic_ztragr VARCHAR(4)  		--//  ENCODE lzo
	,bic_zxchpf VARCHAR(1)  		--//  ENCODE lzo
	,bic_zpur_key VARCHAR(4)  		--//  ENCODE lzo
	,bic_zhaz_mat VARCHAR(18)  		--//  ENCODE lzo
	,bic_zstr_cond VARCHAR(2)  		--//  ENCODE lzo
	,bic_zmhdrz VARCHAR(4)  		--//  ENCODE lzo
	,bic_zmhdhb VARCHAR(4)  		--//  ENCODE lzo
	,bic_zqmpur VARCHAR(1)  		--//  ENCODE lzo
	,bic_zmstav VARCHAR(2)  		--//  ENCODE lzo
	,bic_zskutec VARCHAR(3)  		--//  ENCODE lzo
	,bic_zmjrtec VARCHAR(35)  		--//  ENCODE lzo
	,bic_zz_color NUMERIC(2,0)  		--//  ENCODE delta
	,bic_zz_stack NUMERIC(2,0)  		--//  ENCODE delta
	,bic_ztaklv VARCHAR(1)  		--//  ENCODE lzo
	,extmatlgrp VARCHAR(18)  		--//  ENCODE lzo
	,bic_zvpsta VARCHAR(15)  		--//  ENCODE lzo
	,bic_zpstat VARCHAR(15)  		--//  ENCODE lzo
	,bic_zoldmatl VARCHAR(18)  		--//  ENCODE lzo
	,std_descr VARCHAR(20)  		--//  ENCODE lzo
	,bic_zferth VARCHAR(18)  		--//  ENCODE lzo
	,bic_zmsource VARCHAR(10)  		--//  ENCODE lzo
	,bic_zbramin VARCHAR(6)  		--//  ENCODE lzo
	,bic_zprodseg VARCHAR(10)  		--//  ENCODE lzo
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,PRIMARY KEY (matl_num)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_material_typ;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_MATERIAL_TYP		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_material_typ
(
	matl_type VARCHAR(4) NOT NULL 		--//  ENCODE lzo
	,langu VARCHAR(1) NOT NULL 		--//  ENCODE lzo
	,txtmd VARCHAR(40)  		--//  ENCODE lzo
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,PRIMARY KEY (matl_type, langu)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_matl_base;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_MATL_BASE		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_matl_base
(
	clnt VARCHAR(10)  		--//  ENCODE zstd
	,matl_num VARCHAR(40) NOT NULL 		--//  ENCODE zstd
	,crt_on DATE  		--//  ENCODE zstd
	,crt_by_nm VARCHAR(12)  		--//  ENCODE zstd
	,chg_dttm DATE  		--//  ENCODE zstd
	,chg_by_nm VARCHAR(12)  		--//  ENCODE bytedict
	,maint_sts_cmplt_matl VARCHAR(15)  		--//  ENCODE zstd
	,maint_sts VARCHAR(15)  		--//  ENCODE zstd
	,fl_matl_del_clnt_lvl VARCHAR(10)  		--//  ENCODE zstd
	,matl_type_cd VARCHAR(10)  		--//  ENCODE zstd
	,indstr_sectr VARCHAR(10)  		--//  ENCODE zstd
	,matl_grp_cd VARCHAR(20)  		--//  ENCODE zstd
	,old_matl_num VARCHAR(40)  		--//  ENCODE zstd
	,base_uom_cd VARCHAR(10)  		--//  ENCODE zstd
	,prch_uom_cd VARCHAR(10)  		--//  ENCODE zstd
	,doc_num VARCHAR(22)  		--//  ENCODE zstd
	,doc_type VARCHAR(10)  		--//  ENCODE zstd
	,doc_vers VARCHAR(10)  		--//  ENCODE zstd
	,pg_fmt__doc VARCHAR(10)  		--//  ENCODE zstd
	,doc_chg_num VARCHAR(20)  		--//  ENCODE zstd
	,pg_num_doc VARCHAR(10)  		--//  ENCODE zstd
	,num_sht numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,prdtn_memo_txt VARCHAR(40)  		--//  ENCODE zstd
	,pg_fmt_prdtn_memo VARCHAR(10)  		--//  ENCODE zstd
	,size_dims_txt VARCHAR(32)  		--//  ENCODE zstd
	,bsc_matl VARCHAR(100)  		--//  ENCODE zstd
	,indstr_std_desc VARCHAR(40)  		--//  ENCODE zstd
	,mercia_plan VARCHAR(10)  		--//  ENCODE zstd
	,prchsng_val_key VARCHAR(10)  		--//  ENCODE zstd
	,grs_wt_meas NUMERIC(13,3)  		--//  ENCODE zstd
	,net_wt_meas NUMERIC(13,3)  		--//  ENCODE zstd
	,wt_uom_cd VARCHAR(10)  		--//  ENCODE zstd
	,vol_meas NUMERIC(13,3)  		--//  ENCODE zstd
	,vol_uom_cd VARCHAR(10)  		--//  ENCODE zstd
	,cntnr_rqr VARCHAR(10)  		--//  ENCODE zstd
	,strg_cond VARCHAR(10)  		--//  ENCODE zstd
	,temp_cond_ind VARCHAR(10)  		--//  ENCODE zstd
	,low_lvl_cd VARCHAR(10)  		--//  ENCODE zstd
	,trspn_grp VARCHAR(10)  		--//  ENCODE zstd
	,haz_matl_num VARCHAR(40)  		--//  ENCODE zstd
	,div VARCHAR(10)  		--//  ENCODE zstd
	,cmpt VARCHAR(10)  		--//  ENCODE zstd
	,ean_obsol VARCHAR(13)  		--//  ENCODE zstd
	,gr_prtd_qty NUMERIC(13,3)  		--//  ENCODE zstd
	,prcmt_rule VARCHAR(10)  		--//  ENCODE zstd
	,src_supl VARCHAR(10)  		--//  ENCODE zstd
	,seasn_cat VARCHAR(10)  		--//  ENCODE zstd
	,lbl_type_cd VARCHAR(10)  		--//  ENCODE zstd
	,lbl_form VARCHAR(10)  		--//  ENCODE zstd
	,deact VARCHAR(10)  		--//  ENCODE zstd
	,prmry_upc_cd VARCHAR(40)  		--//  ENCODE zstd
	,ean_cat VARCHAR(10)  		--//  ENCODE zstd
	,lgth_meas NUMERIC(13,3)  		--//  ENCODE zstd
	,wdth_meas NUMERIC(13,3)  		--//  ENCODE zstd
	,hght_meas NUMERIC(13,3)  		--//  ENCODE zstd
	,dim_uom_cd VARCHAR(10)  		--//  ENCODE zstd
	,prod_hier_cd VARCHAR(40)  		--//  ENCODE zstd
	,stk_tfr_chg_cost VARCHAR(10)  		--//  ENCODE zstd
	,cad_ind VARCHAR(10)  		--//  ENCODE zstd
	,qm_prcmt_act VARCHAR(10)  		--//  ENCODE zstd
	,allw_pkgng_wt NUMERIC(13,3)  		--//  ENCODE zstd
	,wt_unit VARCHAR(10)  		--//  ENCODE zstd
	,allw_pkgng_vol NUMERIC(13,3)  		--//  ENCODE zstd
	,vol_unit VARCHAR(10)  		--//  ENCODE zstd
	,exces_wt_tlrnc NUMERIC(3,1)  		--//  ENCODE zstd
	,exces_vol_tlrnc NUMERIC(3,1)  		--//  ENCODE zstd
	,var_prch_ord_unit VARCHAR(10)  		--//  ENCODE zstd
	,rvsn_lvl_asgn_matl VARCHAR(10)  		--//  ENCODE zstd
	,configurable_matl_ind VARCHAR(10)  		--//  ENCODE zstd
	,btch_mgmt_reqt_ind VARCHAR(10)  		--//  ENCODE zstd
	,pkgng_matl_type_cd VARCHAR(10)  		--//  ENCODE zstd
	,max_lvl_vol NUMERIC(3,0)  		--//  ENCODE zstd
	,stack_fact numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,pkgng_matl_grp VARCHAR(10)  		--//  ENCODE zstd
	,auth_grp VARCHAR(10)  		--//  ENCODE zstd
	,vld_from_dt DATE  		--//  ENCODE zstd
	,del_dt DATE  		--//  ENCODE zstd
	,seasn_yr VARCHAR(10)  		--//  ENCODE zstd
	,prc_bnd_cat VARCHAR(10)  		--//  ENCODE zstd
	,bill_of_matl VARCHAR(10)  		--//  ENCODE zstd
	,extrnl_matl_grp_txt VARCHAR(40)  		--//  ENCODE zstd
	,cross_plnt_cnfg_matl VARCHAR(40)  		--//  ENCODE zstd
	,matl_cat VARCHAR(10)  		--//  ENCODE zstd
	,matl_coprod_ind VARCHAR(10)  		--//  ENCODE zstd
	,fllp_matl_ind VARCHAR(10)  		--//  ENCODE zstd
	,prc_ref_matl VARCHAR(40)  		--//  ENCODE zstd
	,cros_plnt_matl_sts VARCHAR(10)  		--//  ENCODE zstd
	,cros_dstn_chn_matl_sts VARCHAR(10)  		--//  ENCODE zstd
	,cros_plnt_matl_sts_vld_dt DATE  		--//  ENCODE zstd
	,chn_matl_vld_from_dt DATE  		--//  ENCODE zstd
	,tax_clsn_matl VARCHAR(10)  		--//  ENCODE zstd
	,catlg_prfl VARCHAR(20)  		--//  ENCODE zstd
	,min_rmn_shlf_lif NUMERIC(4,0)  		--//  ENCODE zstd
	,tot_shlf_lif NUMERIC(4,0)  		--//  ENCODE zstd
	,strg_pct NUMERIC(3,0)  		--//  ENCODE zstd
	,cntnt_uom_cd VARCHAR(10)  		--//  ENCODE zstd
	,net_cntnt_meas NUMERIC(13,3)  		--//  ENCODE zstd
	,cmpr_prc_unit NUMERIC(5,0)  		--//  ENCODE zstd
	,isr_matl_grp VARCHAR(40)  		--//  ENCODE zstd
	,grs_cntnt_meas NUMERIC(13,3)  		--//  ENCODE zstd
	,qty_conv_meth VARCHAR(10)  		--//  ENCODE zstd
	,intrnl_obj_num numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,envmt_rlvnt VARCHAR(10)  		--//  ENCODE zstd
	,prod_allc_dtrmn_proc VARCHAR(40)  		--//  ENCODE zstd
	,prc_prfl_vrnt VARCHAR(10)  		--//  ENCODE zstd
	,matl_qual_disc VARCHAR(10)  		--//  ENCODE zstd
	,mfr_part_num VARCHAR(40)  		--//  ENCODE zstd
	,mfr_num VARCHAR(10)  		--//  ENCODE zstd
	,intrnl_inv_mgmt VARCHAR(40)  		--//  ENCODE zstd
	,mfr_part_prfl VARCHAR(10)  		--//  ENCODE zstd
	,meas_usg_unit VARCHAR(10)  		--//  ENCODE zstd
	,rollout_seasn VARCHAR(10)  		--//  ENCODE zstd
	,dngrs_goods_ind_prof VARCHAR(10)  		--//  ENCODE zstd
	,hi_viscous_ind VARCHAR(10)  		--//  ENCODE zstd
	,in_bulk_lqd_ind VARCHAR(10)  		--//  ENCODE zstd
	,lvl_explc_ser_num VARCHAR(10)  		--//  ENCODE zstd
	,pkgng_matl_clse_pkgng VARCHAR(10)  		--//  ENCODE zstd
	,appr_btch_rec_ind VARCHAR(10)  		--//  ENCODE zstd
	,ovrd_chg_num VARCHAR(10)  		--//  ENCODE zstd
	,matl_cmplt_lvl numeric(18,0)		--//  ENCODE zstd // INTEGER  
	,per_ind_shlf_lif_expn_dt VARCHAR(10)  		--//  ENCODE zstd
	,rd_rule_sled VARCHAR(10)  		--//  ENCODE zstd
	,prod_cmpos_prtd_pkgng VARCHAR(10)  		--//  ENCODE zstd
	,genl_item_cat_grp VARCHAR(10)  		--//  ENCODE zstd
	,gn_matl_logl_vrnt VARCHAR(10)  		--//  ENCODE zstd
	,prod_base VARCHAR(10)  		--//  ENCODE zstd
	,vrnt VARCHAR(10)  		--//  ENCODE zstd
	,put_up VARCHAR(10)  		--//  ENCODE zstd
	,mega_brand_cd VARCHAR(10)  		--//  ENCODE zstd
	,brand_cd VARCHAR(10)  		--//  ENCODE zstd
	,tech VARCHAR(10)  		--//  ENCODE zstd
	,color VARCHAR(10)  		--//  ENCODE zstd
	,seasonality VARCHAR(10)  		--//  ENCODE zstd
	,mfg_src_cd VARCHAR(10)  		--//  ENCODE zstd
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE zstd
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE zstd
	,PRIMARY KEY (matl_num)
)
		--// DISTSTYLE ALL
;
--DROP TABLE ASPITG_INTEGRATION.itg_matl_text;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_MATL_TEXT		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_matl_text
(
	matl_no VARCHAR(18) NOT NULL
	,lang_key VARCHAR(1)
	,matl_desc VARCHAR(40)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
	,PRIMARY KEY (matl_no)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_mds_ap_company_dim;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_MDS_AP_COMPANY_DIM		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_mds_ap_company_dim
(
	name VARCHAR(500)  		--//  ENCODE lzo
	,code VARCHAR(500)  		--//  ENCODE lzo
	,ctry_key VARCHAR(200)  		--//  ENCODE lzo
	,ctry_group VARCHAR(200)  		--//  ENCODE lzo
	,cluster VARCHAR(200)  		--//  ENCODE lzo
	,crtd_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
)
<<Error - UNKNOWN DISTSTYLE>>
;
--DROP TABLE ASPITG_INTEGRATION.itg_mega_brnd_text;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_MEGA_BRND_TEXT		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_mega_brnd_text
(
	clnt numeric(18,0) NOT NULL		--// INTEGER 
	,lang_key VARCHAR(1) NOT NULL
	,mega_brnd VARCHAR(3) NOT NULL
	,de VARCHAR(40)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
	,PRIMARY KEY (clnt, lang_key, mega_brnd)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_needstates_text;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_NEEDSTATES_TEXT		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_needstates_text
(
	need_states numeric(18,0)		--// INTEGER
	,language_key VARCHAR(1)
	,short_desc VARCHAR(40)
	,medium_desc VARCHAR(40)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_prft_ctr;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_PRFT_CTR		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_prft_ctr
(
	cntl_area VARCHAR(4) NOT NULL
	,prft_ctr VARCHAR(10) NOT NULL
	,vld_to_dt DATE
	,vld_from_dt DATE
	,prsn_resp VARCHAR(20)
	,crncy_key VARCHAR(5)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
	,strng_hold numeric(18,0)		--// INTEGER
	,need_stat numeric(18,0)		--// INTEGER
	,PRIMARY KEY (cntl_area, prft_ctr)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_prft_ctr_text;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_PRFT_CTR_TEXT		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_prft_ctr_text
(
	lang_key VARCHAR(4)
	,cntl_area VARCHAR(10)
	,prft_ctr VARCHAR(40)
	,vld_to_dt DATE
	,vld_from_dt DATE
	,shrt_desc VARCHAR(20)
	,med_desc VARCHAR(40)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_prod_hier;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_PROD_HIER		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_prod_hier
(
	prod_hier VARCHAR(18) NOT NULL 		--//  ENCODE lzo
	,langu VARCHAR(1) NOT NULL 		--//  ENCODE lzo
	,txtmd VARCHAR(40)  		--//  ENCODE lzo
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE  		--//  ENCODE az64
	,PRIMARY KEY (prod_hier, langu)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_put_up_text;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_PUT_UP_TEXT		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_put_up_text
(
	clnt numeric(18,0) NOT NULL		--// INTEGER 
	,lang_key VARCHAR(1) NOT NULL
	,put_up VARCHAR(3) NOT NULL
	,put_up_desc VARCHAR(40)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
	,PRIMARY KEY (clnt, lang_key, put_up)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_sls_grp_text;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_SLS_GRP_TEXT		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_sls_grp_text
(
	clnt numeric(18,0) NOT NULL		--// INTEGER 
	,lang_key VARCHAR(1) NOT NULL
	,sls_grp VARCHAR(3) NOT NULL
	,de VARCHAR(40)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
	,PRIMARY KEY (clnt, lang_key, sls_grp)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_sls_off_text;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_SLS_OFF_TEXT		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_sls_off_text
(
	clnt numeric(18,0) NOT NULL		--// INTEGER 
	,lang_key VARCHAR(1) NOT NULL
	,sls_off VARCHAR(4) NOT NULL
	,de VARCHAR(40)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
	,PRIMARY KEY (clnt, lang_key, sls_off)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_sls_org;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_SLS_ORG		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_sls_org
(
	clnt numeric(18,0)		--// INTEGER
	,sls_org VARCHAR(4) NOT NULL
	,stats_crncy VARCHAR(5)
	,sls_org_co_cd VARCHAR(4)
	,cust_no_intco_bill VARCHAR(10)
	,ctry_key VARCHAR(3)
	,crncy_key VARCHAR(5)
	,fisc_yr_vrnt VARCHAR(2)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
	,PRIMARY KEY (sls_org)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_sls_org_text;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_SLS_ORG_TEXT		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_sls_org_text
(
	clnt VARCHAR(3)
	,lang_key VARCHAR(1)
	,sls_org VARCHAR(4)
	,sls_org_nm VARCHAR(20)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_strongholds_text;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_STRONGHOLDS_TEXT		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_strongholds_text
(
	strongholds numeric(18,0)		--// INTEGER
	,language_key VARCHAR(1)
	,short_desc VARCHAR(40)
	,medium_desc VARCHAR(40)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_time;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_TIME		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_time
(
	cal_day DATE NOT NULL
	,fisc_yr_vrnt VARCHAR(2) NOT NULL
	,wkday numeric(18,0)		--// INTEGER
	,cal_wk numeric(18,0)		--// INTEGER
	,cal_mo_1 numeric(18,0)		--// INTEGER
	,cal_mo_2 numeric(18,0)		--// INTEGER
	,cal_qtr_1 numeric(18,0)		--// INTEGER
	,cal_qtr_2 numeric(18,0)		--// INTEGER
	,half_yr numeric(18,0)		--// INTEGER
	,cal_yr numeric(18,0)		--// INTEGER
	,fisc_per numeric(18,0)		--// INTEGER
	,pstng_per numeric(18,0)		--// INTEGER
	,fisc_yr numeric(18,0)		--// INTEGER
	,rec_mode VARCHAR(1)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
	,PRIMARY KEY (cal_day, fisc_yr_vrnt)
)
		--// DISTSTYLE EVEN
;
--DROP TABLE ASPITG_INTEGRATION.itg_varnt_text;
CREATE OR REPLACE TABLE ASPITG_INTEGRATION.ITG_VARNT_TEXT		--// CREATE TABLE IF NOT EXISTS  // CREATE OR REPLACE TABLE ASPITG_INTEGRATION.itg_varnt_text
(
	clnt numeric(18,0) NOT NULL		--// INTEGER 
	,lang_key VARCHAR(1) NOT NULL
	,varnt VARCHAR(3) NOT NULL
	,varnt_desc VARCHAR(40)
	,crt_dttm TIMESTAMP WITHOUT TIME ZONE
	,updt_dttm TIMESTAMP WITHOUT TIME ZONE
	,PRIMARY KEY (clnt, lang_key, varnt)
)
		--// DISTSTYLE EVEN
;

