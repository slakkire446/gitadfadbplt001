create table PHLITG_INTEGRATION.ITG_PH_DMS_SELLOUT_SALES_FACT_BKP as select * from PHLITG_INTEGRATION.ITG_PH_DMS_SELLOUT_SALES_FACT;

create or replace TABLE PROD_DNA_CORE.PHLITG_INTEGRATION.ITG_PH_DMS_SELLOUT_SALES_FACT_SYNC (
	DSTRBTR_GRP_CD VARCHAR(20),
	CNTRY_CD VARCHAR(20),
	DSTRBTR_CUST_ID VARCHAR(30),
	TRNSFRM_CUST_ID VARCHAR(30),
	ORDER_DT DATE,
	INVOICE_DT DATE,
	ORDER_NO VARCHAR(20),
	INVOICE_NO VARCHAR(20),
	SLS_ROUTE_ID VARCHAR(20),
	SLS_ROUTE_NM VARCHAR(50),
	SLS_GRP VARCHAR(50),
	SLS_REP_ID VARCHAR(20),
	SLS_REP_NM VARCHAR(50),
	DSTRBTR_PROD_ID VARCHAR(30),
	UOM VARCHAR(20),
	GROSS_PRICE NUMBER(15,4),
	QTY NUMBER(15,4),
	GTS_VAL NUMBER(15,4),
	DSCNT NUMBER(15,4),
	NTS_VAL NUMBER(15,4),
	LINE_NUM NUMBER(15,4),
	PROM_ID VARCHAR(20),
	CDL_DTTM VARCHAR(50),
	CRTD_DTTM TIMESTAMP_NTZ(9),
	UPDT_DTTM TIMESTAMP_NTZ(9),
	WH_ID VARCHAR(50),
	SLS_REP_TYPE VARCHAR(50),
	ORDER_QTY NUMBER(15,4),
	ORDER_DELIVERY_DT DATE,
	ORDER_STATUS VARCHAR(50)
);
