



select
    *
from PARKING_DB.PARKING_SCHEMA.gold_ticket_metrics

where not(total_revenue_usd total_revenue_usd >= 0)

