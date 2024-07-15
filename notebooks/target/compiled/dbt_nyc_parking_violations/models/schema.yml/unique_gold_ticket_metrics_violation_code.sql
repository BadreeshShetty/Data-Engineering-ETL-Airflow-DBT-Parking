
    
    

select
    violation_code as unique_field,
    count(*) as n_records

from PARKING_DB.PARKING_SCHEMA.gold_ticket_metrics
where violation_code is not null
group by violation_code
having count(*) > 1


