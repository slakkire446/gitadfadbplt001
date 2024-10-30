TABLE PROD_DNA_LOAD.IDNSDL_RAW.SDL_MDS_ID_LAV_CUSTOMER_HIERARCHY_ADF_TEMP;
CREATE OR REPLACE TABLE PROD_DNA_LOAD.IDNSDL_RAW.SDL_MDS_ID_LAV_CUSTOMER_HIERARCHY_ADFTEMP (ID NUMBER(10,0),
MUID VARCHAR(40),
VERSIONNAME VARCHAR(100),
VERSIONNUMBER NUMBER(10,0),
VERSION_ID NUMBER(10,0),
VERSIONFLAG VARCHAR(100),
NAME VARCHAR(500),
CODE VARCHAR(500),
CHANGETRACKINGMASK NUMBER(10,0),
DISTRIBUTOR_GROUP VARCHAR(200),
DISTRIBUTOR_ID VARCHAR(200),
CUSTOMER_ID VARCHAR(200),
CUSTOMER_NAME VARCHAR(200),
CITY VARCHAR(200),
AREA VARCHAR(200),
REGION VARCHAR(200),
BDM VARCHAR(200),
RBM VARCHAR(200),
STATUS VARCHAR(200),
LEAD_TIME VARCHAR(200),
PROV_ID VARCHAR(200),
EFFECTIVE_FROM VARCHAR(200),
EFFECTIVE_TO VARCHAR(200),
ENTERDATETIME TIMESTAMP_NTZ(9),
ENTERUSERNAME VARCHAR(200),
ENTERVERSIONNUMBER NUMBER(10,0),
LASTCHGDATETIME TIMESTAMP_NTZ(9),
LASTCHGUSERNAME VARCHAR(200),
LASTCHGVERSIONNUMBER NUMBER(10,0),
VALIDATIONSTATUS VARCHAR(500));

DROP TABLE PROD_DNA_LOAD.IDNSDL_RAW.SDL_MDS_ID_REF_CUSTOMERPL_SEGMENTATION_ADF_TEMP;
CREATE OR REPLACE TABLE PROD_DNA_LOAD.IDNSDL_RAW.SDL_MDS_ID_REF_CUSTOMERPL_SEGMENTATION_ADFTEMP (ID NUMBER(10,0),
MUID VARCHAR(40),
VERSIONNAME VARCHAR(100),
VERSIONNUMBER NUMBER(10,0),
VERSION_ID NUMBER(10,0),
VERSIONFLAG VARCHAR(100),
NAME VARCHAR(500),
CODE VARCHAR(500),
CHANGETRACKINGMASK NUMBER(10,0),
CUSTOMER_SEGMENT_LEVEL1_CODE VARCHAR(500),
CUSTOMER_SEGMENT_LEVEL1_NAME VARCHAR(500),
CUSTOMER_SEGMENT_LEVEL1_ID NUMBER(10,0),
CUSTOMER_SEGMENT_LEVEL2_CODE VARCHAR(500),
CUSTOMER_SEGMENT_LEVEL2_NAME VARCHAR(500),
CUSTOMER_SEGMENT_LEVEL2_ID NUMBER(10,0),
ENTERDATETIME TIMESTAMP_NTZ(9),
ENTERUSERNAME VARCHAR(200),
ENTERVERSIONNUMBER NUMBER(10,0),
LASTCHGDATETIME TIMESTAMP_NTZ(9),
LASTCHGUSERNAME VARCHAR(200),
LASTCHGVERSIONNUMBER NUMBER(10,0),
VALIDATIONSTATUS VARCHAR(500));
