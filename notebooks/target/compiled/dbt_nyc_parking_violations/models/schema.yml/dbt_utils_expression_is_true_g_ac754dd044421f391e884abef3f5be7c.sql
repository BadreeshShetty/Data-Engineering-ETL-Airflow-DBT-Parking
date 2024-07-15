



select
    *
from PARKING_DB.PARKING_SCHEMA.gold_ticket_metrics

where not(avg_fee_per_ticket avg_fee_per_ticket >= 0)

