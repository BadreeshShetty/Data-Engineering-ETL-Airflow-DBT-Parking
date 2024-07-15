-- models/bronze/bronze_parking_violations.sql
WITH base_data AS (
    
    SELECT 
        CAST(NULLIF(summons_number, 'N/A') AS BIGINT) AS summons_number,
        NULLIF(plate_id, 'N/A') AS plate_id,
        NULLIF(registration_state, 'N/A') AS registration_state,
        NULLIF(plate_type, 'N/A') AS plate_type,
        CAST(NULLIF(issue_date, 'N/A') AS DATE) AS issue_date,
        CAST(NULLIF(violation_code, 'N/A') AS INT) AS violation_code,
        NULLIF(vehicle_body_type, 'N/A') AS vehicle_body_type,
        NULLIF(vehicle_make, 'N/A') AS vehicle_make,
        NULLIF(issuing_agency, 'N/A') AS issuing_agency,
        CAST(NULLIF(street_code1, 'N/A') AS INT) AS street_code1,
        CAST(NULLIF(street_code2, 'N/A') AS INT) AS street_code2,
        CAST(NULLIF(street_code3, 'N/A') AS INT) AS street_code3,
        CAST(NULLIF(vehicle_expiration_date, 'N/A') AS DATE) AS vehicle_expiration_date,
        NULLIF(violation_location, 'N/A') AS violation_location,
        CAST(NULLIF(violation_precinct, 'N/A') AS INT) AS violation_precinct,
        CAST(NULLIF(issuer_precinct, 'N/A') AS INT) AS issuer_precinct,
        NULLIF(issuer_code, 'N/A') AS issuer_code,
        NULLIF(issuer_command, 'N/A') AS issuer_command,
        NULLIF(issuer_squad, 'N/A') AS issuer_squad,
        NULLIF(violation_time, 'N/A') AS violation_time,
        NULLIF(time_first_observed, 'N/A') AS time_first_observed,
        NULLIF(violation_county, 'N/A') AS violation_county,
        NULLIF(violation_in_front_of_or_opposite, 'N/A') AS violation_in_front_of_or_opposite,
        NULLIF(intersecting_street, 'N/A') AS intersecting_street,
        CAST(NULLIF(date_first_observed, 'N/A') AS DATE) AS date_first_observed,
        NULLIF(law_section, 'N/A') AS law_section,
        NULLIF(sub_division, 'N/A') AS sub_division,
        NULLIF(violation_legal_code, 'N/A') AS violation_legal_code,
        NULLIF(days_parking_in_effect____, 'N/A') AS days_parking_in_effect,
        NULLIF(from_hours_in_effect, 'N/A') AS from_hours_in_effect,
        NULLIF(to_hours_in_effect, 'N/A') AS to_hours_in_effect,
        NULLIF(vehicle_color, 'N/A') AS vehicle_color,
        CAST(NULLIF(unregistered_vehicle, 'N/A') AS BOOLEAN) AS unregistered_vehicle,
        CAST(NULLIF(vehicle_year, 'N/A') AS INT) AS vehicle_year,
        NULLIF(meter_number, 'N/A') AS meter_number,
        CAST(NULLIF(feet_from_curb, 'N/A') AS INT) AS feet_from_curb,
        NULLIF(violation_post_code, 'N/A') AS violation_post_code,
        NULLIF(violation_description, 'N/A') AS violation_description,
        CAST(NULLIF(no_standing_or_stopping_violation, 'N/A') AS BOOLEAN) AS no_standing_or_stopping_violation,
        CAST(NULLIF(hydrant_violation, 'N/A') AS BOOLEAN) AS hydrant_violation,
        CAST(NULLIF(double_parking_violation, 'N/A') AS BOOLEAN) AS double_parking_violation
    FROM PARKING_DB.PARKING_SCHEMA.PARKING_VIOLATIONS_2014

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