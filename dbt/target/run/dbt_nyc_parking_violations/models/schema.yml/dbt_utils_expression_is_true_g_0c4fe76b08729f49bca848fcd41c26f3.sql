select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from PARKING_DB.PARKING_SCHEMA_dbt_test__audit.dbt_utils_expression_is_true_g_0c4fe76b08729f49bca848fcd41c26f3
    
      
    ) dbt_internal_test