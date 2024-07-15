-- models/bronze/bronze_parking_violations.sql
WITH base_data AS (
    
    SELECT 
        CAST(summons_number AS BIGINT) AS summons_number,
        plate_id,
        registration_state,
        plate_type,
        CAST(issue_date AS DATE) AS issue_date,
        CAST(violation_code AS INT) AS violation_code,
        vehicle_body_type,
        vehicle_make,
        issuing_agency,
        CAST(street_code1 AS INT) AS street_code1,
        CAST(street_code2 AS INT) AS street_code2,
        CAST(street_code3 AS INT) AS street_code3,
        CAST(vehicle_expiration_date AS DATE) AS vehicle_expiration_date,
        violation_location,
        CAST(violation_precinct AS INT) AS violation_precinct,
        CAST(issuer_precinct AS INT) AS issuer_precinct,
        issuer_code,
        issuer_command,
        issuer_squad,
        violation_time,
        time_first_observed,
        violation_county,
        violation_in_front_of_or_opposite,
        intersecting_street,
        CAST(date_first_observed AS DATE) AS date_first_observed,
        law_section,
        sub_division,
        violation_legal_code,
        days_parking_in_effect____ AS days_parking_in_effect,
        from_hours_in_effect,
        to_hours_in_effect,
        vehicle_color,
        CAST(unregistered_vehicle AS BOOLEAN) AS unregistered_vehicle,
        CAST(vehicle_year AS INT) AS vehicle_year,
        meter_number,
        CAST(feet_from_curb AS INT) AS feet_from_curb,
        violation_post_code,
        violation_description,
        CAST(no_standing_or_stopping_violation AS BOOLEAN) AS no_standing_or_stopping_violation,
        CAST(hydrant_violation AS BOOLEAN) AS hydrant_violation,
        CAST(double_parking_violation AS BOOLEAN) AS double_parking_violation
    FROM PARKING_DB.PARKING_SCHEMA.PARKING_VIOLATIONS_2015

),
enhanced_data AS (
    
    SELECT
        *,
        EXTRACT(YEAR FROM CURRENT_DATE) - vehicle_year AS vehicle_age,
        CASE 
            WHEN violation_county = 'MN' THEN TRUE
            ELSE FALSE
        END AS is_manhattan_96th_st_below
    FROM base_data

)
SELECT * FROM enhanced_data