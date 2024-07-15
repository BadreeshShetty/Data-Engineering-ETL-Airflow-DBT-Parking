select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select HOUSE_NUMBER
from PARKING_DB.PARKING_SCHEMA.silver_parking_violations_MN
where HOUSE_NUMBER is null



      
    ) dbt_internal_test