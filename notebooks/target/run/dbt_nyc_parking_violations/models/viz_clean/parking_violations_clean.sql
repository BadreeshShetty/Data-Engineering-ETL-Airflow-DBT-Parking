
  
    

        create or replace transient table PARKING_DB.PARKING_SCHEMA.parking_violations_clean
         as
        (-- models/viz_clean/parking_violations_clean.sql
WITH cleaned_data AS (
    SELECT 
        summons_number,
        plate_id,
        registration_state,
        plate_type,
        issue_date,
        violation_code,
        vehicle_body_type,
        vehicle_make,
        issuing_agency,
        street_code1,
        street_code2,
        street_code3,
        vehicle_expiration_date,
        violation_location,
        violation_precinct,
        issuer_precinct,
        issuer_code,
        violation_county,
        street_name,
        intersecting_street,
        date_first_observed,
        law_section,
        sub_division,
        violation_legal_code,
        vehicle_color,
        vehicle_year,
        feet_from_curb,
        violation_description
    FROM  PARKING_DB.PARKING_SCHEMA.bronze_parking_violations
)
SELECT DISTINCT *
FROM cleaned_data
WHERE summons_number IS NOT NULL
AND plate_id IS NOT NULL
AND registration_state IS NOT NULL
        );
      
  