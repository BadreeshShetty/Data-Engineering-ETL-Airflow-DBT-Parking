WITH violations_2014 AS (
    SELECT * FROM {{ ref('bronze_parking_violations_2014') }}
),
violations_2016 AS (
    SELECT * FROM {{ ref('bronze_parking_violations_2016') }}
),
violations_2017 AS (
    SELECT * FROM {{ ref('bronze_parking_violations_2017') }}
),
violations_2018 AS (
    SELECT * FROM {{ ref('bronze_parking_violations_2018') }}
),
violations_2019 AS (
    SELECT * FROM {{ ref('bronze_parking_violations_2019') }}
),
all_violations AS (
    SELECT * FROM violations_2014
    UNION ALL
    SELECT * FROM violations_2016
    UNION ALL
    SELECT * FROM violations_2017
    UNION ALL
    SELECT * FROM violations_2018
    UNION ALL
    SELECT * FROM violations_2019
)
SELECT * FROM all_violations
