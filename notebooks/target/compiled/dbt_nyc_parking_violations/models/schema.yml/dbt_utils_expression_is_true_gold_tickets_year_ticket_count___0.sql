



select
    *
from PARKING_DB.PARKING_SCHEMA.gold_tickets_year

where not(ticket_count >= 0)

