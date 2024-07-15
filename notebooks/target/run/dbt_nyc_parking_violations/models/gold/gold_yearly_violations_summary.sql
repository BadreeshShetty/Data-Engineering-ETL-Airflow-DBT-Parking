
  create or replace   view PARKING_DB.PARKING_SCHEMA.gold_yearly_violations_summary
  
   as (
    WITH yearly_summary AS (
    SELECT
        EXTRACT(YEAR FROM issue_date) AS violation_year,
        COUNT(*) AS total_violations,
        SUM(fee_usd) AS total_fees_collected
    FROM
        PARKING_DB.PARKING_SCHEMA.silver_violations_tickets
    WHERE
        EXTRACT(YEAR FROM issue_date) < 2024
    GROUP BY
        violation_year
)
SELECT
    violation_year,
    total_violations,
    total_fees_collected
FROM
    yearly_summary
ORDER BY
    violation_year
  );

