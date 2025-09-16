-- Staging tables for raw HR data
CREATE TABLE stg_employees AS SELECT * FROM raw.employees;
CREATE TABLE stg_applicants AS SELECT * FROM raw.applicants;
CREATE TABLE stg_hires AS SELECT * FROM raw.hires;
CREATE TABLE stg_turnover AS SELECT * FROM raw.turnover;
CREATE TABLE stg_training AS SELECT * FROM raw.training;
CREATE TABLE stg_compliance_flags AS SELECT * FROM raw.compliance_flags;
CREATE TABLE stg_survey_responses AS SELECT * FROM raw.survey_responses;
