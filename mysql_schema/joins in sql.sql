/*
insert into fact_tb(Emp_Id, Country_id, City_id ,Annual_Salary)
select ed.Emp_Id,CD.Country_Id,CCD.City_Id,`Annual Salary`
from employee_sample_data as e
left join emp_dim ed on ed.Full_Name = e.`Full Name` and ed.EEID = e.EEID
left join country_dim as cd on cd.Country_Name = e.Country
left join city_dim as CCD on CCD.City_Name = e.City;
*/

-- FK genration
/*
ALTER TABLE `sample_database`.`fact_tb` 
ADD CONSTRAINT `fk_Date_ID`
  FOREIGN KEY (`Date_Id`)
  REFERENCES `sample_database`.`date_dim` (`Date_Id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


ALTER TABLE `sample_database`.`fact_tb` 
DROP FOREIGN KEY `fk_Emp_ID`;
ALTER TABLE `sample_database`.`fact_tb` 
DROP INDEX `fk_Emp_ID` ;
;

*/
/*
REMOVING `$` AND `,` FROM ANY VALUE AND DATA TYPE CONVERSIONS 
UPDATE employee_sample_data
SET `Annual Salary` = Convert(REPLACE(REPLACE(`Annual Salary`, '$', ''), ',', ''),DECIMAL(18,0));

*/