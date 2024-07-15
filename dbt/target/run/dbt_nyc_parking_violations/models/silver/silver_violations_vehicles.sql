
  create or replace   view PARKING_DB.PARKING_SCHEMA.silver_violations_vehicles
  
   as (
    SELECT
    summons_number,
    registration_state,
    plate_type,
    vehicle_body_type,
    vehicle_make,
    vehicle_expiration_date,
    vehicle_color,
    vehicle_year
FROM
    PARKING_DB.PARKING_SCHEMA.silver_parking_violations_MN
  );

