select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from PARKING_DB.PARKING_SCHEMA_dbt_test__audit.dbt_utils_expression_is_true_g_b319e185939f54f6ef69c2b82ca3fd67
    
      
    ) dbt_internal_test