-- Dimension table for employees
CREATE TABLE dim_employees AS
SELECT DISTINCT
    Employee_ID,
    First_Name,
    Last_Name,
    Department,
    Job_Level,
    Gender,
    Race,
    Hire_Date,
    Status
FROM stg_employees;
