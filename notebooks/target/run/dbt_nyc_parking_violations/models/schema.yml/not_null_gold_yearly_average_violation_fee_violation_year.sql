select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from PARKING_DB.PARKING_SCHEMA_dbt_test__audit.not_null_gold_yearly_average_violation_fee_violation_year
    
      
    ) dbt_internal_test