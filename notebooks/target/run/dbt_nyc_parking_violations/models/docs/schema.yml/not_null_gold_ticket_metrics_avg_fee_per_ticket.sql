select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from PARKING_DB.PARKING_SCHEMA_dbt_test__audit.not_null_gold_ticket_metrics_avg_fee_per_ticket
    
      
    ) dbt_internal_test