create or replace TABLE PROD_DNA_LOAD.INDSDL_RAW.SDL_CSL_SALESINVOICEORDERS (
	DISTCODE VARCHAR(50),
	SALINVNO VARCHAR(50),
	ORDERNO VARCHAR(50),
	ORDERDATE TIMESTAMP_NTZ(9),
	UPLOADFLAG VARCHAR(10),
	CREATEDDATE TIMESTAMP_NTZ(9),
	SYNCID NUMBER(38,0),
	CREATEDDT TIMESTAMP_NTZ(9),
	RUN_ID NUMBER(14,0),
	CRT_DTTM TIMESTAMP_NTZ(9) DEFAULT CONVERT_TIMEZONE('SGT', CAST(CAST('CURRENT_TIMESTAMP()' AS TIMESTAMP_NTZ(9)) AS TIMESTAMP_TZ(9))),
	FILE_NAME VARCHAR(50)
);

create or replace TABLE PROD_DNA_LOAD.INDSDL_RAW.SDL_CSL_SALESINVOICEORDERS_RAW (
	DISTCODE VARCHAR(50),
	SALINVNO VARCHAR(50),
	ORDERNO VARCHAR(50),
	ORDERDATE TIMESTAMP_NTZ(9),
	UPLOADFLAG VARCHAR(10),
	CREATEDDATE TIMESTAMP_NTZ(9),
	SYNCID NUMBER(38,0),
	CREATEDDT TIMESTAMP_NTZ(9),
	RUN_ID NUMBER(14,0),
	CRT_DTTM TIMESTAMP_NTZ(9) DEFAULT CONVERT_TIMEZONE('SGT', CAST(CAST('CURRENT_TIMESTAMP()' AS TIMESTAMP_NTZ(9)) AS TIMESTAMP_TZ(9))),
	FILE_NAME VARCHAR(50)
);

create or replace TABLE PROD_DNA_LOAD.INDSDL_RAW.SDL_CSL_ORDERBOOKING (
	DISTCODE VARCHAR(50),
	ORDERNO VARCHAR(50),
	ORDERDATE TIMESTAMP_NTZ(9),
	ORDDLVDATE TIMESTAMP_NTZ(9),
	ALLOWBACKORDER VARCHAR(50),
	ORDTYPE VARCHAR(50),
	ORDPRIORITY VARCHAR(50),
	ORDDOCREF VARCHAR(100),
	REMARKS VARCHAR(500),
	ROUNDOFFAMT NUMBER(38,6),
	ORDTOTALAMT NUMBER(38,6),
	SALESMANCODE VARCHAR(100),
	SALESMANNAME VARCHAR(200),
	SALESROUTECODE VARCHAR(100),
	SALESROUTENAME VARCHAR(200),
	RTRID VARCHAR(100),
	RTRCODE VARCHAR(100),
	RTRNAME VARCHAR(100),
	PRDCODE VARCHAR(50),
	PRDBATCDE VARCHAR(50),
	PRDQTY NUMBER(18,0),
	PRDBILLEDQTY NUMBER(18,0),
	PRDSELRATE NUMBER(38,6),
	PRDGROSSAMT NUMBER(38,6),
	UPLOADFLAG VARCHAR(10),
	RECORDDATE TIMESTAMP_NTZ(9),
	CREATEDDATE TIMESTAMP_NTZ(9),
	SYNCID NUMBER(38,0),
	RECOMMENDEDSKU VARCHAR(10),
	CREATEDDT TIMESTAMP_NTZ(9),
	RUN_ID NUMBER(14,0),
	CRT_DTTM TIMESTAMP_NTZ(9) DEFAULT CONVERT_TIMEZONE('SGT', CAST(CAST('CURRENT_TIMESTAMP()' AS TIMESTAMP_NTZ(9)) AS TIMESTAMP_TZ(9))),
	FILE_NAME VARCHAR(50)
);

create or replace TABLE PROD_DNA_CORE.INDITG_INTEGRATION.SDL_CSL_ORDERBOOKING_RAW (
	DISTCODE VARCHAR(50),
	ORDERNO VARCHAR(50),
	ORDERDATE TIMESTAMP_NTZ(9),
	ORDDLVDATE TIMESTAMP_NTZ(9),
	ALLOWBACKORDER VARCHAR(50),
	ORDTYPE VARCHAR(50),
	ORDPRIORITY VARCHAR(50),
	ORDDOCREF VARCHAR(100),
	REMARKS VARCHAR(500),
	ROUNDOFFAMT NUMBER(38,6),
	ORDTOTALAMT NUMBER(38,6),
	SALESMANCODE VARCHAR(100),
	SALESMANNAME VARCHAR(200),
	SALESROUTECODE VARCHAR(100),
	SALESROUTENAME VARCHAR(200),
	RTRID VARCHAR(100),
	RTRCODE VARCHAR(100),
	RTRNAME VARCHAR(100),
	PRDCODE VARCHAR(50),
	PRDBATCDE VARCHAR(50),
	PRDQTY NUMBER(18,0),
	PRDBILLEDQTY NUMBER(18,0),
	PRDSELRATE NUMBER(38,6),
	PRDGROSSAMT NUMBER(38,6),
	UPLOADFLAG VARCHAR(10),
	RECORDDATE TIMESTAMP_NTZ(9),
	CREATEDDATE TIMESTAMP_NTZ(9),
	SYNCID NUMBER(38,0),
	RECOMMENDEDSKU VARCHAR(10),
	CREATEDDT TIMESTAMP_NTZ(9),
	RUN_ID NUMBER(14,0),
	CRT_DTTM TIMESTAMP_NTZ(9) DEFAULT CONVERT_TIMEZONE('SGT', CAST(CAST('CURRENT_TIMESTAMP()' AS TIMESTAMP_NTZ(9)) AS TIMESTAMP_TZ(9))),
	FILE_NAME VARCHAR(50)
);