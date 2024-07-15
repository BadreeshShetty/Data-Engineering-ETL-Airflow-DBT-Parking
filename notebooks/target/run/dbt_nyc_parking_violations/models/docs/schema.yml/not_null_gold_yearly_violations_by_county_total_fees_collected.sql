select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from PARKING_DB.PARKING_SCHEMA_dbt_test__audit.not_null_gold_yearly_violations_by_county_total_fees_collected
    
      
    ) dbt_internal_test