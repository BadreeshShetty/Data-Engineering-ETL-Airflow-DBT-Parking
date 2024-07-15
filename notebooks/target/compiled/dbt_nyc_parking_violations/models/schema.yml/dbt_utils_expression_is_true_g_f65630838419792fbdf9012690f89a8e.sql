



select
    *
from PARKING_DB.PARKING_SCHEMA.gold_vehicles_metrics

where not(total_revenue_usd >= 0)

