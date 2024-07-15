select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    HOUSE_NUMBER as unique_field,
    count(*) as n_records

from PARKING_DB.PARKING_SCHEMA.silver_parking_violations_MN
where HOUSE_NUMBER is not null
group by HOUSE_NUMBER
having count(*) > 1



      
    ) dbt_internal_test