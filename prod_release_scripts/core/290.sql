delete  from  PROD_DNA_CORE.PCFEDW_INTEGRATION.EDW_DEMAND_FORECAST_SNAPSHOT
where to_char(snap_shot_dt, 'YYYYMM') in (202406,202407,202408);

insert into PROD_DNA_CORE.PCFEDW_INTEGRATION.EDW_DEMAND_FORECAST_SNAPSHOT
selecct * from PROD_DNA_CORE.PCFEDW_INTEGRATION.EDW_DEMAND_FORECAST_SNAPSHOT_SYNC 
where to_char(snap_shot_dt, 'YYYYMM') in (202406,202407,202408);

delete  from  PROD_DNA_CORE.PCFEDW_INTEGRATION.EDW_DEMAND_FORECAST_SNAPSHOT_TEMP
where to_char(snap_shot_dt, 'YYYYMM') in (202406,202407,202408);

insert into PROD_DNA_CORE.PCFEDW_INTEGRATION.EDW_DEMAND_FORECAST_SNAPSHOT_TEMP
selecct * from PROD_DNA_CORE.PCFEDW_INTEGRATION.EDW_DEMAND_FORECAST_SNAPSHOT_SYNC 
where to_char(snap_shot_dt, 'YYYYMM') in (202406,202407,202408);
