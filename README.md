# Data_Analyst_Regions_Financial
Regions Bank HR Compliance & Recruitment Analytics Simulation

## Objective
This project simulates HR compliance and recruitment analytics processes at Regions Financial (~24,000 employees). It demonstrates SQL, SAS, and Excel workflows used to monitor applicant flow, turnover, training compliance, and employee satisfaction, reflecting authentic HR data practices from 2012–2013.

## Tech Stack
- **HRIS (PeopleSoft/Oracle)** – employee & job master data  
- **SQL + SAS** – compliance and risk reporting  
- **Excel** – statistical modeling (turnover, attrition, funnel forecasting)  
- **SSRS** – formatted compliance dashboards and audit reports  

## Data Flow
1. **Ingestion (Raw → Staging)**: Load HRIS, ATS, training, and survey extracts into staging tables.  
2. **Transformation (SQL/ETL)**: Standardize dimensions (employees, departments) and build fact tables (applicants, compliance, surveys).  
3. **Analysis (SAS + Excel)**: Conduct applicant flow checks, attrition models, and employee satisfaction analysis.  
4. **Reporting (SSRS + Excel)**: Deliver dashboards for compliance, recruitment, and training completion.  
5. **Delivery**: Provide recurring compliance packets and recruitment pipeline reports for HR, Legal, and Risk teams.  

## Use Cases
- Applicant flow by gender/race for **OFCCP/EEO compliance**  
- **Turnover modeling & attrition forecasting** by department  
- Employee satisfaction & engagement survey analysis  
- Training compliance tracking & risk flag monitoring  
- Recruitment funnel efficiency (time-to-hire, acceptance rates)  

## Repo Layout

Regions_HR_Compliance/
├── data/
│ ├── employees.csv # ~24k employees
│ ├── applicants.csv # applicant tracking data
│ ├── hires.csv # new hire details
│ ├── turnover.csv # employee exits & reasons
│ ├── training.csv # compliance training completion
│ ├── survey_responses.csv # employee satisfaction survey data
│ └── compliance_flags.csv # compliance/risk exceptions
├── sql/
│ ├── staging_tables.sql
│ ├── dim_employees.sql
│ ├── dim_departments.sql
│ ├── fact_applicants.sql
│ ├── fact_compliance.sql
│ ├── fact_surveys.sql
│ └── mart_hr_compliance.sql
├── sas/
│ └── compliance_analysis.sas # attrition & applicant flow analysis
├── excel_models/
│ └── turnover_forecast.xlsx # Excel-based statistical modeling
├── reports/
│ ├── OFCCP_Diversity_Report.pdf # SSRS-style formatted compliance report
│ └── Recruitment_Funnel.xlsx # Excel dashboard for recruitment funnel
└── README.md
