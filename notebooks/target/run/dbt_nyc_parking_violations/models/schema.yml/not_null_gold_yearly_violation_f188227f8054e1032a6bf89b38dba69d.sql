select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from PARKING_DB.PARKING_SCHEMA_dbt_test__audit.not_null_gold_yearly_violation_f188227f8054e1032a6bf89b38dba69d
    
      
    ) dbt_internal_test