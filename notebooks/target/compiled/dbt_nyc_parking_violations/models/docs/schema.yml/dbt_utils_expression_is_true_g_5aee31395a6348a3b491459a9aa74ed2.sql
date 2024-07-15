



select
    *
from PARKING_DB.PARKING_SCHEMA.gold_yearly_violations_summary

where not(total_fees_collected >= 0)

