-- Fact table for applicants and outcomes
CREATE TABLE fact_applicants AS
SELECT
    Applicant_ID,
    Application_Date,
    Gender,
    Race,
    Applied_Department,
    Outcome
FROM stg_applicants;
