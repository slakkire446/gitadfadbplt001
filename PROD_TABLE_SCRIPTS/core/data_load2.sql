truncate table PCFWKS_INTEGRATION.WKS_NATIONAL_ECOMM_DATA;COPY INTO PCFWKS_INTEGRATION.WKS_NATIONAL_ECOMM_DATA FROM '@UTILITY_RAW.PROD_CORE_STAGE_S3/AU_WKS_WKS_NATIONAL_ECOMM_DATA/' FILE_FORMAT = 'UTILITY_RAW.PROD_CORE_CSV_FILEFORMAT' ;

truncate table PCFWKS_INTEGRATION.WKS_PACIFIC_SISO_PROPAGATE_TO_EXISTING_DTLS;COPY INTO PCFWKS_INTEGRATION.WKS_PACIFIC_SISO_PROPAGATE_TO_EXISTING_DTLS FROM '@UTILITY_RAW.PROD_CORE_STAGE_S3/AU_WKS_WKS_PACIFIC_SISO_PROPAGATE_TO_EXISTING_DTLS/' FILE_FORMAT = 'UTILITY_RAW.PROD_CORE_CSV_FILEFORMAT'
