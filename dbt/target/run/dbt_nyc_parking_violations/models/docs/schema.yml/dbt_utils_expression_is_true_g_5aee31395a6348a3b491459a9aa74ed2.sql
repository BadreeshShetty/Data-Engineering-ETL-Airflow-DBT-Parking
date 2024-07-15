select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from PARKING_DB.PARKING_SCHEMA_dbt_test__audit.dbt_utils_expression_is_true_g_5aee31395a6348a3b491459a9aa74ed2
    
      
    ) dbt_internal_test