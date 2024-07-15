WITH  __dbt__cte__bronze_parking_violations_code as (
-- models/bronze/bronze_parking_violations_code.sql
WITH base_data AS (
    SELECT 
        
    CAST(code AS INT) AS violation_code,
    UPPER(TRIM(definition)) AS code_description,
    CAST(manhattan_96th_st__below AS INT) AS manhattan_96th_st_below,
    CAST(all_other_areas AS INT) AS all_other_areas

    FROM PARKING_DB.PARKING_SCHEMA.PARKING_VIOLATIONS_CODE
),
categorized_data AS (
    SELECT
        
    *,
    CASE
        WHEN manhattan_96th_st_below = all_other_areas THEN 'Uniform Rate'
        ELSE 'Different Rate'
    END AS rate_type

    FROM base_data
)
SELECT
    violation_code,
    code_description,
    manhattan_96th_st_below,
    all_other_areas,
    rate_type
FROM categorized_data
), manhattan_violation_codes AS (
    SELECT
        violation_code,
        code_description,
        TRUE AS is_manhattan_96th_st_below,
        manhattan_96th_st_below AS fee_usd,
        rate_type
    FROM
        __dbt__cte__bronze_parking_violations_code
),
all_other_violation_codes AS (
    SELECT
        violation_code,
        code_description,
        FALSE AS is_manhattan_96th_st_below,
        all_other_areas AS fee_usd,
        rate_type
    FROM
        __dbt__cte__bronze_parking_violations_code
)

SELECT * FROM manhattan_violation_codes
UNION ALL
SELECT * FROM all_other_violation_codes
ORDER BY fee_usd ASC