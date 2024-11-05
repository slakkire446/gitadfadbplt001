create or replace TABLE PROD_DNA_LOAD.THASDL_RAW.SDL_ECOM_GMV_KONVY (
	TEAMID VARCHAR(50),
	TEAMID2 VARCHAR(50),
	BRAND VARCHAR(100),
	PRODUCTNAME VARCHAR(400),
	STATUS VARCHAR(50),
	BARCODE VARCHAR(255),
	ITEMCODE VARCHAR(255),
	SALES_AMOUNT NUMBER(20,4),
	TOTAL_UNIT_SOLD NUMBER(20,4),
	TSTOCK VARCHAR(50),
	CURRENT_PRICE NUMBER(20,4),
	PRO_PRICE NUMBER(20,4),
	PRO_COST NUMBER(20,4),
	COST_IN_VAT NUMBER(20,4),
	COST NUMBER(20,4),
	MARKET_VALUE VARCHAR(50),
	STOCK_TURNOVER_DAYS VARCHAR(50),
	VIEW_NO VARCHAR(50),
	CONVERSION NUMBER(20,4),
	DISCONTINUE VARCHAR(50),
	DATE VARCHAR(50),
	PLATFORM VARCHAR(50),
	CRTD_DTTM TIMESTAMP_NTZ(9) DEFAULT CAST('CURRENT_TIMESTAMP()' AS TIMESTAMP_NTZ(9)),
	FILENAME VARCHAR(255)
);
 
COPY INTO PROD_DNA_LOAD.THASDL_RAW.SDL_ECOM_GMV_KONVY
  FROM @PROD_DNA_LOAD.THASDL_RAW.PROD_LOAD_STAGE_ADLS/prd/eCOM_Data/transaction/Shopee_Compensation/Konvy.csv
FILE_FORMAT = (TYPE = CSV FIELD_DELIMITER = ','  SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = '\"' );
