delete from PROD_DNA_CORE.DBT_CLOUD_PR_5458_1220.ASPEDW_INTEGRATION__EDW_RPT_RETAIL_EXCELLENCE_SUMMARY where upper(market) = 'TAIWAN';

insert into PROD_DNA_CORE.DBT_CLOUD_PR_5458_1220.ASPEDW_INTEGRATION__EDW_RPT_RETAIL_EXCELLENCE_SUMMARY (
with edw_tw_rpt_retail_excellence_summary as (
    select * from PROD_DNA_CORE.DBT_CLOUD_PR_5458_1220.ASPEDW_INTEGRATION__EDW_TW_RPT_RETAIL_EXCELLENCE_SUMMARY
)

SELECT * FROM edw_tw_rpt_retail_excellence_summary
);

---------------

delete from PROD_DNA_CORE.DBT_CLOUD_PR_5458_1220.ASPEDW_INTEGRATION__EDW_RPT_RETAIL_EXCELLENCE_DETAILS where upper(market) = 'TAIWAN';

insert into PROD_DNA_CORE.DBT_CLOUD_PR_5458_1220.ASPEDW_INTEGRATION__EDW_RPT_RETAIL_EXCELLENCE_DETAILS (

with 
edw_tw_rpt_retail_excellence_details as
(
  select * from PROD_DNA_CORE.DBT_CLOUD_PR_5458_1220.ASPEDW_INTEGRATION__EDW_TW_RPT_RETAIL_EXCELLENCE_DETAILS
)

    SELECT * FROM edw_tw_rpt_retail_excellence_details
);
