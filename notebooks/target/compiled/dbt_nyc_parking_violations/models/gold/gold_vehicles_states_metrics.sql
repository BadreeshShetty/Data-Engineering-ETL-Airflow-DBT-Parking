SELECT
    registration_state,
    COUNT(summons_number) AS ticket_count,
    SUM(fee_usd) AS total_revenue_usd,
    AVG(fee_usd) AS avg__per_ticket
FROM
    PARKING_DB.PARKING_SCHEMA.silver_join_parking_violations_code
WHERE
    registration_state != 'NY'
GROUP BY
    registration_state
ORDER BY
    total_revenue_usd DESC