
    
    

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


