-- Dimension table for departments
CREATE TABLE dim_departments AS
SELECT DISTINCT
    Department,
    COUNT(Employee_ID) AS Headcount
FROM stg_employees
GROUP BY Department;
