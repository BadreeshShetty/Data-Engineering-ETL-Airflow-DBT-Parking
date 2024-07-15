
    
    

with all_values as (

    select
        avg_fee_per_ticket as value_field,
        count(*) as n_records

    from PARKING_DB.PARKING_SCHEMA.gold_ticket_metrics
    group by avg_fee_per_ticket

)

select *
from all_values
where value_field not in (
    '>','=',' ','0'
)


