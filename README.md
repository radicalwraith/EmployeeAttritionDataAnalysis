# EmployeeAttritionDataAnalysis

Dataset Information:
The employee_attrition table contains data related to employee attrition in the company. It provides information on various factors such as age, education, job role, and job satisfaction that may contribute to attrition. The table also includes details on employee demographics like gender and marital status. Additionally, it captures data on employee performance and work-life balance. This table is essential for analyzing attrition patterns and identifying potential areas for improvement in order to reduce employee turnover.

Problem Statement:
Employees are the backbone of the organization. An organizations performance is heavily based on the quality of the employees. Challenges that an organization has to face due to employee attrition are:

1. Expense in terms of money and time to train new employees.
2. Loss of experienced employees.
3. Impact in Productivity and Profit.

Business question to brainstorm:
1. What are the factors which contribute more to employee attrition?
2. What type of measure should the company take in order to retain their employees.

Some KPIs to consider:
1. Age - which age group has the most number of employees leaving
2. Department Analysis - Which department has seen the most number of employees leaving -> This can be used to figure out any internal issues within a department.
3. Education - Is there a reason why employees having certain degrees leave?
4. Environment - Does the working environment impact why an employee leaves and organization?
5. Business Travel Requirement - Is an employee more likely to stay if they get to travel more as part of work?

Steps followed:
1. Login to Azure Databricks
2. Create a compute -> set a cluster name -> create cluster
3. Create a notebook -> set to Spark SQL because we are going to deploy this project using SPARK SQL
4. Uploading the data -> Click on the Data option on the left navigation pane -> click on create table -> browse -> select the data -> once loaded Select the cluster -> preview table -> specify the table attributes like table name, filetype, first row as header, infer schema -> Create table
5. Open the notebook -> Write the SQL queries
5. Perform the Analysis using Spark SQL

Analysis Results:
1. Employees falling in the age group of '25-31' tend to leave the company the most.
2. Employees under the 'Research and Developement' department are more likely to leave the department. This can mean there is some issues internally within that department.
3. 41.77% of the employees who have left have a Bachelors degree.
4. 72 employees were not satisfied with the working condition environment.
5. The employees who travelled rarely because of business reasons tend to leave the company more often.

