select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        total_revenue_usd as value_field,
        count(*) as n_records

    from PARKING_DB.PARKING_SCHEMA.gold_ticket_metrics
    group by total_revenue_usd

)

select *
from all_values
where value_field not in (
    '>','=',' ','0'
)



      
    ) dbt_internal_test