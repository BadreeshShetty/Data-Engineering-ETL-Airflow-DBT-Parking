



select
    *
from PARKING_DB.PARKING_SCHEMA.gold_tickets_year

where not(total_revenue_usd >= 0)

