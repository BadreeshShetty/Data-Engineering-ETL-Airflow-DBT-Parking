



select
    *
from PARKING_DB.PARKING_SCHEMA.gold_yearly_violation_trends_by_code

where not(total_fees_collected >= 0)

