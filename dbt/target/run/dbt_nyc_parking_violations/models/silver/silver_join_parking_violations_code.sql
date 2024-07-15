
  create or replace   view PARKING_DB.PARKING_SCHEMA.silver_join_parking_violations_code
  
   as (
    SELECT
    violations.summons_number,
    violations.issue_date,
    violations.violation_code,
    violations.is_manhattan_96th_st_below,
    violations.issuing_agency,
    violations.violation_location,
    violations.violation_precinct,
    violations.issuer_precinct,
    violations.issuer_code,
    violations.issuer_command,
    violations.issuer_squad,
    violations.violation_time,
    violations.violation_county,
    violations.violation_legal_code,
    codes.code_description,
    codes.fee_usd
FROM
    PARKING_DB.PARKING_SCHEMA.bronze_parking_violations AS violations
LEFT JOIN
    PARKING_DB.PARKING_SCHEMA.bronze_parking_violations_code AS codes ON
    violations.violation_code = codes.violation_code
  );

