-- Reporting mart for HR compliance metrics
CREATE TABLE mart_hr_compliance AS
SELECT
    e.Department,
    COUNT(DISTINCT a.Applicant_ID) AS Total_Applicants,
    SUM(CASE WHEN a.Outcome = 'Hired' THEN 1 ELSE 0 END) AS Total_Hires,
    COUNT(DISTINCT t.Employee_ID) AS Total_Turnover,
    AVG(s.Satisfaction_Score) AS Avg_Satisfaction,
    AVG(s.Engagement_Score) AS Avg_Engagement,
    COUNT(DISTINCT c.Employee_ID) AS Compliance_Flags
FROM dim_employees e
LEFT JOIN fact_applicants a ON a.Applied_Department = e.Department
LEFT JOIN stg_turnover t ON t.Employee_ID = e.Employee_ID
LEFT JOIN fact_surveys s ON s.Employee_ID = e.Employee_ID
LEFT JOIN fact_compliance c ON c.Employee_ID = e.Employee_ID
GROUP BY e.Department;
