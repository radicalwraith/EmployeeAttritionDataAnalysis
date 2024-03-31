-- Databricks notebook source
SELECT * FROM emp_table;

-- COMMAND ----------

-- To see the total number of employees
select sum(employeeCount) from emp_table


-- COMMAND ----------

-- to see the division of YES and NO amongst the employees

select sum(employeeCount),attrition from emp_table
group by 2

-- COMMAND ----------

-- AGE analysis (to see the distribution between the age groups - 18-24,25-31,32-28,39-45,46-52,52+)

select sum(employeeCount) AS Number_of_Employees,
CASE when age between 18 and 24 then '18-24'
when age between 25 and 31 then '25-31'
when age between 32 and 38 then '32-38'
when age between 39 and 45 then '39-45'
when age between 46 and 52 then '46-52'
else '52+' END AS Age_Group from emp_table
where attrition='Yes'
group by 2
order by 1 desc

-- COMMAND ----------

-- Department analysis

Select sum(EmployeeCount) As Employee_Count, Department
from emp_table 
where attrition='Yes'
Group by 2

-- COMMAND ----------

-- Education Analysis (1-School, 2-College, 3-Bachelors, 4-Masters, 5-PhD)

Select sum(EmployeeCount) As Employee_Count, 
CASE WHEN education=1 then 'School Graduate'
WHEN education=2 then 'College Graduate'
WHEN education=3 then 'Bachelors Degree'
WHEN education=4 then 'Masters Degree'
ELSE 'Doctoral Degree' END AS Degree_Name
from emp_table 
where attrition='Yes'
Group by 2

-- COMMAND ----------

-- Environment Satisfaction Analysis
Select sum(EmployeeCount) As Employee_Count, EnvironmentSatisfaction
from emp_table 
where attrition='Yes'
Group by 2



-- COMMAND ----------

-- Business Travel dependency Analysis on attrition
Select sum(EmployeeCount) As Employee_Count, BusinessTravel
from emp_table 
where attrition='Yes'
Group by 2


-- COMMAND ----------

-- MAGIC %md
-- MAGIC INSIGHTS DERIVED FROM THE DATASET USING SPARK SQL
-- MAGIC
-- MAGIC 1. Employees falling in the age group of '25-31' tend to leave the company the most.
-- MAGIC 2. Employees under the 'Research and Developement' department are more likely to leave the department. This can mean there is some issues internally within that department.
-- MAGIC 3. 41.77% of the employees who have left have a Bachelors degree.
-- MAGIC 4. 72 employees were not satisfied with the working condition environment.
-- MAGIC 5. The employees who travelled rarely because of business reasons tend to leave the company more often.
