/*
select count(EEID) from employee_sample_data;
select count(Age_Id) from age_dim;
select count(Business_Id) from business_dim;
select count(Department_Id) from department_dim;
select count(Ethnicity_Id) from ethnicity_dim;
select count(Gender_Id) from gender_dim;
select count(Job_Id) from job_dim;
select count(City_Id) from city_dim;
select count(Country_Id) from country_dim;
select count(Date_Id) from date_dim;
select count(Emp_Id) from emp_dim;
select count(Fact_Id) from fact_tb;
*/
/*
select * from emp_dim;
select * from city_dim;
select * from country_dim;
select * from age_dim;
select * from gender_dim;
select * from business_dim;
select * from department_dim;
select * from job_dim;
select * from ethnicity_dim;
select * from employee_sample_data;
*/


select age from age_dim where Age_Id = 16;
select * from country_dim;
select * from city_dim;
select * from Ethnicity_dim;

select * from fact_tb;
select max(Fact_Id) from fact_tb;
select * from fact_tb where Fact_Id = 1754804;






