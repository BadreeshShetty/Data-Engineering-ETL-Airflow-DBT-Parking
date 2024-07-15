select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from PARKING_DB.PARKING_SCHEMA_dbt_test__audit.dbt_utils_expression_is_true_g_cb88c23ddc4f8e9f6d3d7ec5db3d5964
    
      
    ) dbt_internal_test