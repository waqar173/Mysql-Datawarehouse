/*drop tables*/
/*
drop table Fact_tb;
drop table City_Dim;
drop table Country_Dim;
drop table Date_Dim;
drop table Emp_Dim;

*/

/*Create tables*/
/*
create table City_Dim (City_Id int primary key AUTO_INCREMENT, City_Name Varchar(50));

create table Country_Dim (Country_Id int primary key AUTO_INCREMENT, Country_Name Varchar(50));

create table Date_Dim (Date_Id int primary key AUTO_INCREMENT, Date_Value date);

create table Emp_Dim (Emp_Id int primary key AUTO_INCREMENT, EEID varchar(25), Full_Name varchar(255), Age int, Gender varchar(25), Job_Title varchar(100),Department varchar(255) ,Business_Unit varchar(255),Ethnicity varchar(255),Hire_Date date, Exit_Date date);

create table Gender_Dim (Gender_Id int primary key AUTO_INCREMENT, Gender Varchar(50));

create table Fact_tb (Fact_Id int primary key AUTO_INCREMENT, Emp_Id int, Country_id int, City_id int, Date_Id int, Annual_Salary int, Bonus_Pct int);

create table Gender_Dim (Gender_Id int primary key AUTO_INCREMENT, Gender Varchar(50));

create table Age_Dim (Age_Id int primary key AUTO_INCREMENT, Age int(11));

create table Department_Dim (Department_Id int primary key AUTO_INCREMENT, Department_Name Varchar(50));

create table Ethnicity_Dim (Ethnicity_Id int primary key AUTO_INCREMENT, Ethnicity_Name Varchar(50));

create table Business_Dim (Business_Id int primary key AUTO_INCREMENT, Business_Unit Varchar(50));

create table Job_Title (Job_Id int primary key AUTO_INCREMENT, Job_Title Varchar(50));
*/

/*
ALTER TABLE `sample_database`.`fact_tb` 
CHANGE COLUMN `Annual_Salary` `Annual_Salary` DECIMAL(18,5) NULL DEFAULT NULL ,
CHANGE COLUMN `Bonus_Pct` `Bonus_Pct` VARCHAR(50) NULL DEFAULT NULL ;
*/

/*Add Constraints*/
/*
alter table fact_tb add constraint fk_City_ID Foreign key(City_Id) References city_dim(City_ID);

alter table fact_tb add constraint fk_Country_ID Foreign key(Country_Id) References Country_dim(Country_ID);

alter table fact_tb add constraint fk_Emp_ID Foreign key(Emp_Id) References emp_dim(Emp_ID);

alter table fact_tb add constraint fk_Date_ID Foreign key(Date_Id) References Date_dim(Date_ID);

alter table fact_tb add constraint fk_Gender_ID Foreign key(Gender_Id) References gender_dim(Gender_ID);

alter table fact_tb add constraint fk_Age_ID Foreign key(Age_Id) References age_dim(Age_ID);

alter table fact_tb add constraint fk_Business_ID Foreign key(Business_Id) References business_dim(Business_ID);

alter table fact_tb add constraint fk_Departmant_ID Foreign key(Departmant_Id) References department_dim(Department_ID);

alter table fact_tb add constraint fk_Ethnicity_ID Foreign key(Ethnicity_Id) References ethnicity_dim(Ethnicity_ID);

alter table fact_tb add constraint fk_Job_ID Foreign key(Job_Id) References job_dim(Job_ID);

*/
/*Constraint remove*/
-- alter table
/*alter table fact_tb drop constraint fk_Date_ID;*/
/*ALTER TABLE `sample_database`.`fact_tb` 
DROP FOREIGN KEY `fk_Date_ID`;
ALTER TABLE `sample_database`.`fact_tb` 
DROP INDEX `fk_Date_ID` ;
;
*/
-- add column into fact table query 
/*
ALTER TABLE fact_tb
ADD Gender_Id int(11); 

ALTER TABLE fact_tb
ADD Age_Id int(11); 

ALTER TABLE fact_tb
ADD Business_Id int(11); 

ALTER TABLE fact_tb
ADD Departmant_Id int(11); 

ALTER TABLE fact_tb
ADD Ethnicity_Id int(11); 

ALTER TABLE fact_tb
ADD Job_Id int(11); 
*/
-- insert into select query 
/*
select * from gender_dim;
INSERT INTO gender_dim(Gender)
select distinct Gender from employee_sample_data;

select * from age_dim;
INSERT INTO age_dim(Age)
select distinct Age from employee_sample_data;

select * from business_dim;
INSERT INTO business_dim(Business_Unit)
select distinct `Business Unit` from employee_sample_data;

select * from department_dim;
INSERT INTO department_dim(Department_Name)
select distinct Department from employee_sample_data;

select * from ethnicity_dim;
INSERT INTO ethnicity_dim(Ethnicity_Name)
select distinct Ethnicity from employee_sample_data;

select * from job_dim;
INSERT INTO job_dim( Job_Title)
select count(distinct `Job Title`) from employee_sample_data;

*/
-- updated query  

/*
INSERT INTO fact_tb (Emp_Id, Country_id, City_id, Gender_Id, Age_Id, Business_Id, Department_Id, Ethnicity_Id, Job_Id, Annual_Salary, Bonus_Pct, H_Date, E_Date)
SELECT ed.Emp_Id,c.Country_Id,cd.City_Id,g.Gender_Id,a.Age_Id,b.Business_Id,dp.Department_Id,ecd.Ethnicity_Id,j.Job_Id,`Annual Salary`,`Bonus %`,`Hire Date`,`Exit Date`
FROM employee_sample_data AS e
left JOIN emp_dim as ed ON e.EEID  = ed.EEID AND e.`Full Name` = ed.Full_Name 
-- LEFT JOIN emp_dim AS ed ON e.`Full Name` AND e.EEID = e= ed.Full_Name 
LEFT JOIN country_dim AS c ON  e.Country = c.Country_Name
LEFT JOIN city_dim AS cd ON  e.City = cd.City_Name 
-- LEFT JOIN date_dim AS d ON  e.`Exit Date` = d.E_date 
LEFT JOIN gender_dim AS g ON  e.Gender = g.Gender 
LEFT JOIN age_dim AS a ON e.Age = a.Age  
LEFT JOIN business_dim AS b ON  e.`Business Unit` = b.Business_Unit 
LEFT JOIN department_dim AS dp ON  e.Department = dp.Department_Name 
LEFT JOIN ethnicity_dim AS ecd ON  e.Ethnicity = ecd.Ethnicity_Name 
LEFT JOIN job_dim AS j ON  e.`Job Title` = j.Job_Title ;

*/

