select * from age_dim;
select Business_Id from business_dim;
select Department_Id from department_dim;
select Ethnicity_Id from ethnicity_dim;
select Gender_Id from gender_dim;
select Job_Id from job_dim;
select City_Id from city_dim;
select Country_Id from country_dim;
select Emp_Id from fact_tb;
select * from fact_tb;
select max(Fact_Id) from fact_tb;



select count(City_id) from fact_tb where City_id = 11;



select count(distinct Fact_Id) from fact_tb;

select fact_Id from fact_tb where Annual_Salary = 135325
ORDER BY Emp_Id;


-- TRUNCATE fact_tb;


select count(distinct `job Title`) from employee_sample_data;

select `job Title` 
from employee_sample_data 
LEFT join ON ;

select * from fact_tb;
select distinct Job_Id from fact_tb;
