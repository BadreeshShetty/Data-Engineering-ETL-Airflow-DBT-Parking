



select
    *
from PARKING_DB.PARKING_SCHEMA.gold_vehicles_metrics

where not(ticket_count >= 0)

