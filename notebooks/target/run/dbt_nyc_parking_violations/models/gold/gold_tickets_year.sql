
  create or replace   view PARKING_DB.PARKING_SCHEMA.gold_tickets_year
  
   as (
    SELECT
    EXTRACT(YEAR FROM issue_date) AS year_p,
    COUNT(summons_number) AS ticket_count,
    SUM(fee_usd) AS total_revenue_usd
FROM
    PARKING_DB.PARKING_SCHEMA.silver_violations_tickets
WHERE
    fee_usd IS NOT NULL
    AND EXTRACT(YEAR FROM issue_date) < 2024
GROUP BY
    year_p
ORDER BY
    total_revenue_usd DESC
  );

