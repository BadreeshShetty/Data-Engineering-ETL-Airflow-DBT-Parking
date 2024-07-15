
  create or replace   view PARKING_DB.PARKING_SCHEMA.gold_yearly_average_violation_fee
  
   as (
    WITH yearly_avg_fee AS (
    SELECT
        EXTRACT(YEAR FROM issue_date) AS violation_year,
        AVG(fee_usd) AS average_fee
    FROM
        PARKING_DB.PARKING_SCHEMA.silver_violations_tickets
    WHERE
        EXTRACT(YEAR FROM issue_date) < 2024
    GROUP BY
        violation_year
)
SELECT
    violation_year,
    average_fee
FROM
    yearly_avg_fee
ORDER BY
    violation_year
  );

