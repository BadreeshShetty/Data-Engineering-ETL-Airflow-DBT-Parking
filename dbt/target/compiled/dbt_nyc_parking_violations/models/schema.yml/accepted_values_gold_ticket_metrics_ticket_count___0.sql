
    
    

with all_values as (

    select
        ticket_count as value_field,
        count(*) as n_records

    from PARKING_DB.PARKING_SCHEMA.gold_ticket_metrics
    group by ticket_count

)

select *
from all_values
where value_field not in (
    '>','=',' ','0'
)

