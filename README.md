# Healthy-Life-Clinic-SQL Project
## Project Overview
HealthyLife clinic is a fictitious community healthcare center that serves
patients across different regions. The clinic collects data on patient visits, 
diagnoses, medications, blood pressure, cholesterol levels, and demographics.
This mini project uses sample patient data to demonstrate how ** SQL can be used 
to analyze healthcare information * * , answer real-world questions, and extract 
meaningful insights from structured data. 

## Project objectives 
- Create and manage a healthcare records dataset
- Analyze realistic patient health data using SQL
- Explore patient demographics and medical information
- Answer key healthcare - related business questions
- Build practical SQL skills using a healthcare use case

## Key Questions Answered 
- What is the average patient age?
- HOw many patients have hypertension?
- which region has the most patients?
- What is the average cholesterol level for diabetic patients?
- Which medications are most prescribed?
- What is the patient distribut ion by gender?

## Dataset Description
The dataset contains 100 patient records from HealthyLife Clinic.

### Data Dictionary
| Column Name       | Description                                 |  Data_Type  |         
|-------------------|---------------------------------------------|-------------|
| patient_id        |  Unique patient ID                          | Integrer    |      
| first_name        |  Patient's first_name                       |  Text       |      
| last_name         |  Patient's last_name                        |  Text       |      
| age               |  Patient age                                | Integer     |         
| gender            |  Gender (Male/Female/Other)                 |  Text       |       
| Visit_date        |  Date of clinic visit                       |  Date       |           
| diagnosis         | Diagnosed medical condition                 |  Text       |
| medication        | prescribed medication                       |  Text       |
| blood_pressure    | Blood pressure reading (e.g.,120/80)        |  Text       |      
| cholesterol_mg_dl | cholesterol level in mg/dL                  | Integer     |            
| region            | patient's region of residence               | Text        |         




## ⚒️ Tool used
- SQL (T-SQL)
- MYSQL

## SQL Analysis & Queries

### Q1: What is the averąge age of patients visiting HealthyLife Clinic? 
``` sql
SELECT round(avg(AGE),0) AS avg_age
from patients ;
-- The average age of patient is 42
```
### Q2: How many patients have been diagnosed with hypertension?
``` sql
select count(*) as patientscount_hypertension  from patients
where diagnosis = 'hypertension';
--  27 patients were diagnosed with Hypertension
```
### Q3: Which region has the highest number of patients? 
``` sql
select region , count(*) as patient_count 
  from patients
   group by region order by patient_count desc limit 1 ;
  
  -- The North has the highest Number of patients
```
### Q4: What is the average cholesterol level for patients with diabetes? 
``` sql
select round(avg(cholesterol_mg_dl),2) as avgCholesterol_diabetes
from patients where diagnosis = 'diabetes';

-- the average cholesterol  of patient with diabetes is 203
```
### Q5: Which medications are prescribed most often? 
``` sql
 select medication , count(*) as prescription_count 
 from patients  where  medication <> 'none'
 group by medication  order by prescription_count  desc;
 
 -- The most prescribed medication is tamiflu
```
### Q6:  What is the distribution of patients by gender?
``` sql
select 
(select count(*) from patients where gender = 'Male') as male_count,
(select count(*) from patients where gender = 'Female') as female_count
from patients limit 1;
-- The number of Male patients is higher than Female patients
```
## Key Insights
