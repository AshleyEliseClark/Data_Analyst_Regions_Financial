-- Fact table for employee survey results
CREATE TABLE fact_surveys AS
SELECT
    s.Employee_ID,
    e.Department,
    s.Survey_Date,
    s.Satisfaction_Score,
    s.Engagement_Score,
    s.Comment
FROM stg_survey_responses s
JOIN dim_employees e ON s.Employee_ID = e.Employee_ID;
