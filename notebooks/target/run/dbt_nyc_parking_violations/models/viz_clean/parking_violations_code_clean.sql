
  
    

        create or replace transient table PARKING_DB.PARKING_SCHEMA.parking_violations_code_clean
         as
        (-- models/viz_clean/parking_violations_code_clean.sql
WITH cleaned_data AS (
    SELECT 
        violation_code,
        code_description,
        manhattan_96th_st_below,
        all_other_areas
    FROM PARKING_DB.PARKING_SCHEMA.bronze_parking_violations_code
)
SELECT DISTINCT *
FROM cleaned_data
WHERE violation_code IS NOT NULL
AND code_description IS NOT NULL
        );
      
  