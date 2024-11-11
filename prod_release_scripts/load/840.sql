INSERT INTO USECASE (USECASE_ID, USECASE_NAME,CATEGORY,USECASE_DESCRIPTION,IS_ACTIVE,SEQUENCE_ID) VALUES (547,'VNM_DAKSH_INGESTION','VNM_DAKSH_INGESTION','VNM_DAKSH_INGESTION FOR OTC','TRUE',1);

INSERT INTO PROCESS VALUES (3007,3007,'VNM_DAKSH_INGESTION',3007,1,1,FALSE,TRUE,547,1,1,NULL,'','','','VNMSDL_RAW.DEV_LOAD_STAGE_ADLS','','','');

INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28203,3007,'VNM_DAKSH_INGESTION','trigger_mail','Y',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28204,3007,'VNM_DAKSH_INGESTION','business_mail_trigger','Y',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28205,3007,'VNM_DAKSH_INGESTION','val_file_header','Business Unit|"Date"|"Stock Type"|"Product Code"|"Product Name"|"Batch"|"ExpiryDate"|"Base UOM"|"Shelf Life (mths)"|"COGS"|"Region"|"Quantity"|"Value"|"Plant Code"|"Plant Name"|"Syslot"',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28206,3007,'VNM_DAKSH_INGESTION','file_spec','DKSH_OTC_inventory',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28207,3007,'VNM_DAKSH_INGESTION','val_file_name','DKSH_OTC_inventory',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28208,3007,'VNM_DAKSH_INGESTION','val_file_extn','xlsx',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28209,3007,'VNM_DAKSH_INGESTION','load_method','sp',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28210,3007,'VNM_DAKSH_INGESTION','sp_name','VNMSDL_RAW.VN_DKSH_OTC_PREPROCESSING',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28211,3007,'VNM_DAKSH_INGESTION','sheet_index','0',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28212,3007,'VNM_DAKSH_INGESTION','folder_path','dksh/transaction/dksh_otc/',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28213,3007,'VNM_DAKSH_INGESTION','target_table','SDL_VN_DKSH_SDL_OTC',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28214,3007,'VNM_DAKSH_INGESTION','container','vnm',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28215,3007,'VNM_DAKSH_INGESTION','target_schema','vnmsdl_raw',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28216,3007,'VNM_DAKSH_INGESTION','validation','1-1-1',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28217,3007,'VNM_DAKSH_INGESTION','index','full',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28218,3007,'VNM_DAKSH_INGESTION','source_extn','xlsx',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28219,3007,'VNM_DAKSH_INGESTION','file_header_row_num','0',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28220,3007,'VNM_DAKSH_INGESTION','is_truncate','Y',FALSE,TRUE);
INSERT INTO PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (28221,3007,'VNM_DAKSH_INGESTION','startRange','A1',FALSE,TRUE);
