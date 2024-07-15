



select
    *
from PARKING_DB.PARKING_SCHEMA.gold_yearly_average_violation_fee

where not(average_fee >= 0)

