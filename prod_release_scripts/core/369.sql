delete from PROD_DNA_CORE.PCFEDW_INTEGRATION.EDW_DEMAND_FORECAST_SNAPSHOT_TEMP where
snap_shot_dt in ('2024-09-15 00:00:00');

delete from PROD_DNA_CORE.PCFEDW_INTEGRATION.EDW_DEMAND_FORECAST_SNAPSHOT where
snap_shot_dt in ('2024-09-15 00:00:00');

insert into PROD_DNA_CORE.PCFEDW_INTEGRATION.EDW_DEMAND_FORECAST_SNAPSHOT_TEMP
select * from PROD_DNA_CORE.PCFEDW_INTEGRATION.EDW_DEMAND_FORECAST_SNAPSHOT_SYNC 
where snap_shot_dt in ('2024-09-15 00:00:00');

insert into PROD_DNA_CORE.PCFEDW_INTEGRATION.EDW_DEMAND_FORECAST_SNAPSHOT
select * from PROD_DNA_CORE.PCFEDW_INTEGRATION.EDW_DEMAND_FORECAST_SNAPSHOT_SYNC 
where snap_shot_dt in ('2024-09-15 00:00:00');
