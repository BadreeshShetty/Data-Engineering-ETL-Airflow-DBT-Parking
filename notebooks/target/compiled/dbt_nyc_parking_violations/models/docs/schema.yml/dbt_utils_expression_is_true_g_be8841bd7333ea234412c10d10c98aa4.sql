



select
    *
from PARKING_DB.PARKING_SCHEMA.gold_yearly_violations_by_county

where not(total_violations >= 0)
