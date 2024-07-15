



select
    *
from PARKING_DB.PARKING_SCHEMA.gold_ticket_metrics

where not(ticket_count ticket_count >= 0)

