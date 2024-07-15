-- models/bronze/bronze_parking_violations.sql
WITH base_data AS (
    {{ bronze_cast_parking(source('PARKING_SCHEMA', 'PARKING_VIOLATIONS_2017')) }}
),
enhanced_data AS (
    {{ bronze_enhance_parking('base_data') }}
)
SELECT * FROM enhanced_data