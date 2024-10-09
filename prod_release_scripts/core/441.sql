create table NTAITG_INTEGRATION.ITG_POS_bkp_20241009 as select * from  NTAITG_INTEGRATION.ITG_POS;

create TABLE PROD_DNA_CORE.NTAITG_INTEGRATION.ITG_POS_HIST_LOAD (
	POS_DT DATE,
	VEND_CD VARCHAR(40),
	VEND_NM VARCHAR(100),
	PROD_NM VARCHAR(100),
	VEND_PROD_CD VARCHAR(40),
	VEND_PROD_NM VARCHAR(600),
	BRND_NM VARCHAR(40),
	EAN_NUM VARCHAR(100),
	STR_CD VARCHAR(40),
	STR_NM VARCHAR(100),
	SLS_QTY NUMBER(18,0),
	SLS_AMT NUMBER(16,5),
	UNIT_PRC_AMT NUMBER(16,5),
	SLS_EXCL_VAT_AMT NUMBER(16,5),
	STK_RTRN_AMT NUMBER(16,5),
	STK_RECV_AMT NUMBER(16,5),
	AVG_SELL_QTY NUMBER(16,5),
	CUM_SHIP_QTY NUMBER(18,0),
	CUM_RTRN_QTY NUMBER(18,0),
	WEB_ORDR_TAKN_QTY NUMBER(18,0),
	WEB_ORDR_ACPT_QTY NUMBER(18,0),
	DC_INVNT_QTY NUMBER(18,0),
	INVNT_QTY NUMBER(18,0),
	INVNT_AMT NUMBER(16,5),
	INVNT_DT DATE,
	SERIAL_NUM VARCHAR(40),
	PROD_DELV_TYPE VARCHAR(40),
	PROD_TYPE VARCHAR(40),
	DEPT_CD VARCHAR(40),
	DEPT_NM VARCHAR(100),
	SPEC_1_DESC VARCHAR(100),
	SPEC_2_DESC VARCHAR(100),
	CAT_BIG VARCHAR(100),
	CAT_MID VARCHAR(40),
	CAT_SMALL VARCHAR(40),
	DC_PROD_CD VARCHAR(40),
	CUST_DTLS VARCHAR(100),
	DIST_CD VARCHAR(40),
	CRNCY_CD VARCHAR(10),
	SRC_TXN_STS VARCHAR(40),
	SRC_SEQ_NUM NUMBER(18,0),
	SRC_SYS_CD VARCHAR(30),
	CTRY_CD VARCHAR(10),
	SRC_MESG_NO VARCHAR(35),
	SRC_MESG_CODE VARCHAR(3),
	SRC_MESG_FUNC_CODE VARCHAR(3),
	SRC_MESG_DATE DATE,
	SRC_SALE_DATE_FORM VARCHAR(3),
	SRC_SEND_CODE VARCHAR(10),
	SRC_SEND_EAN_CODE VARCHAR(13),
	SRC_SEND_NAME VARCHAR(30),
	SRC_RECV_QUAL VARCHAR(13),
	SRC_RECV_EAN_CODE VARCHAR(10),
	SRC_RECV_NAME VARCHAR(35),
	SRC_PART_QUAL VARCHAR(3),
	SRC_PART_EAN_CODE VARCHAR(13),
	SRC_PART_ID VARCHAR(10),
	SRC_PART_NAME VARCHAR(30),
	SRC_SENDER_ID VARCHAR(35),
	SRC_RECV_DATE VARCHAR(10),
	SRC_RECV_TIME VARCHAR(6),
	SRC_FILE_SIZE NUMBER(8,0),
	SRC_FILE_PATH VARCHAR(128),
	SRC_LEGA_TRAN VARCHAR(1),
	SRC_REGI_DATE VARCHAR(10),
	SRC_LINE_NO NUMBER(6,0),
	SRC_INSTORE_CODE VARCHAR(20),
	SRC_MNTH_SALE_AMNT NUMBER(15,0),
	SRC_QTY_UNIT VARCHAR(3),
	SRC_MNTH_SALE_QTY NUMBER(10,0),
	UNIT_OF_PKG_SALES VARCHAR(5),
	DOC_SEND_DATE DATE,
	UNIT_OF_PKG_INVT VARCHAR(5),
	DOC_FUN VARCHAR(6),
	DOC_NO VARCHAR(40),
	DOC_FUN_CD VARCHAR(6),
	BUYE_LOC_CD VARCHAR(40),
	VEND_LOC_CD VARCHAR(40),
	PROVIDER_LOC_CD VARCHAR(40),
	COMP_QTY NUMBER(18,0),
	UNIT_OF_PKG_COMP VARCHAR(5),
	ORDER_QTY NUMBER(18,0),
	UNIT_OF_PKG_ORDER VARCHAR(5),
	CRT_DTTM TIMESTAMP_NTZ(9),
	UPD_DTTM TIMESTAMP_NTZ(9)
);
