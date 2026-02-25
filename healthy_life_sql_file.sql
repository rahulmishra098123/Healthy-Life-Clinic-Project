
SELECT * FROM Patients ; -- to view all data in the patient table

-- Q1: What is the averąge age of patients visiting HealthyLife Clinic? 
SELECT round(avg(AGE),0) AS avg_age
from patients ;
-- The average age of patient is 42 


-- Q2: How many patients have been diagnosed with hypertension?
select count(*) as patientscount_hypertension  from patients
where diagnosis = 'hypertension';
--  27 patients were diagnosed with Hypertension

--  Q3: Which region has the highest number of patients? 
select region , count(*) as patient_count 
  from patients
   group by region order by patient_count desc limit 1 ;
  
  -- The North has the highest Number of patients

-- Q4: What is the average cholesterol level for patients with diabetes? 

select round(avg(cholesterol_mg_dl),2) as avgCholesterol_diabetes
from patients where diagnosis = 'diabetes';

-- the average cholesterol  of patient with diabetes is 203

-- Q5: Which medications are prescribed most often? 
 select medication , count(*) as prescription_count 
 from patients  where  medication <> 'none'
 group by medication  order by prescription_count  desc;
 
 -- The most prescribed medication is tamiflu


-- Q6:  What is the distribution of patients by gender?
select 
(select count(*) from patients where gender = 'Male') as male_count,
(select count(*) from patients where gender = 'Female') as female_count
from patients limit 1;
-- The number of Male patients is higher than Female patients


 