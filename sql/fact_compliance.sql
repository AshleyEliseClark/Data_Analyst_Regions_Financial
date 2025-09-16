-- Fact table for compliance events
CREATE TABLE fact_compliance AS
SELECT
    f.Employee_ID,
    e.Department,
    f.Flag_Type,
    f.Flag_Date,
    f.Resolved
FROM stg_compliance_flags f
JOIN dim_employees e ON f.Employee_ID = e.Employee_ID;
