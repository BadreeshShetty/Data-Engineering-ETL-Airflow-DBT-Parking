select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from PARKING_DB.PARKING_SCHEMA_dbt_test__audit.dbt_utils_expression_is_true_g_8877787f42307ee067a046a08ba449bb
    
      
    ) dbt_internal_test