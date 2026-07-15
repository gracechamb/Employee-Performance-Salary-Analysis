-- Employee Performance Mapping --
-- Scenario: With the annual appraisal cycle around the corner, the HR department of the company ScienceQTech has asked me to generate reports on employee details, their performance, and on the project that the employees have undertaken, to analyze the employee database and extract specific data based on different requirements. 
-- Task: To facilitate a better understanding, managers have provided ratings for each employee which will help the HR department to finalize the employee performance mapping. You will find the maximum salary of the employees and ensure that all jobs meet the organization's profile standard. You also need to calculate bonuses to find extra costs for expenses. This will improve the organization's overall performance by ensuring all the employees required receive training.

-- -------- Create a database named employee --------
-- create database employee;

use employee;  

-- -------- Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, and DEPARTMENT from the employee record table, and make a list of employees and details of their department. --------
-- select
-- EMP_ID,
-- FIRST_NAME,
-- LAST_NAME,
-- GENDER,
-- DEPT
-- from emp_record_table;

-- -------- Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPARTMENT, and EMP_RATING if the EMP_RATING is less than two, greater than four, and between two and four -------- 
-- First option (more simplistic):

-- select
-- EMP_ID,
-- FIRST_NAME,
-- LAST_NAME,
-- GENDER,
-- DEPT,
-- EMP_RATING
-- from emp_record_table
-- where EMP_RATING < 2
-- 	or EMP_RATING > 4
-- 	or EMP_RATING between 2 and 4;

-- Second option with more detail:

-- select
-- EMP_ID,
-- FIRST_NAME,
-- LAST_NAME,
-- GENDER,
-- DEPT AS DEPARTMENT,
-- EMP_RATING,
--     case
--         when EMP_RATING < 2 then 'Less than 2'
--         when EMP_RATING between 2 and 4 then 'Between 2 and 4'
--         when EMP_RATING > 4 then 'Greater than 4'
--     end as RATING_CATEGORY
-- from emp_record_table;

-- -------- Write a query to concatenate the FIRST_NAME and the LAST_NAME of employees in the Finance department from the employee table and then give the resultant column alias as NAME --------
-- select 
-- concat(FIRST_NAME, ' ', LAST_NAME) as FULL_NAME
-- from emp_record_table
-- where DEPT = 'FINANCE';

-- -------- Write a SQL query to retrieve the employee ID, first name, role, and department of employees who hold leadership positions (Manager, President, or CEO) --------
-- There are no "CEO" roles so I did not include that in my query --
-- select
-- EMP_ID, 
-- FIRST_NAME, 
-- ROLE, 
-- DEPT
-- from emp_record_table
-- where ROLE = 'MANAGER' 
-- OR ROLE = 'PRESIDENT';

-- -------- Write a query to list all the employees from the healthcare and finance departments --------
-- select
-- EMP_ID,
-- FIRST_NAME,
-- LAST_NAME,
-- ROLE,
-- DEPT
-- from emp_record_table
-- where DEPT = 'HEALTHCARE'

-- union

-- select
-- EMP_ID,
-- FIRST_NAME,
-- LAST_NAME,
-- ROLE,
-- DEPT
-- from emp_record_table
-- where DEPT = 'FINANCE';

-- -------- Write a query to list employee details grouped by dept. Also include the respective employee rating along with the max emp rating for the department.-------- 
-- select 
-- EMP_ID,
-- FIRST_NAME, 
-- LAST_NAME, 
-- ROLE, 
-- DEPT, 
-- EMP_RATING,
-- MAX(EMP_RATING) over (partition by DEPT) as max_dept_rating
-- from emp_record_table;

-- -------- Write a query to calculate the minimum and the maximum salary of the employees in each role --------  
-- select 
-- ROLE,
-- min(SALARY) as MIN_SALARY
-- from emp_record_table
-- group by ROLE;

-- -------- Write a query to assign ranks to each employee based on their experience -------- 
-- select
-- EMP_ID,
-- FIRST_NAME,
-- LAST_NAME,
-- ROLE,
-- DEPT,
-- EXP,
-- rank() over (order by EXP desc) as exp_ranking
-- from emp_record_table
-- order by exp_ranking;

-- -------- Write a query to create a view that displays employees in various countries whose salary is more than six thousand -------- 
-- create view high_salary as
-- select 
-- FIRST_NAME,
-- LAST_NAME,
-- ROLE,
-- COUNTRY,
-- SALARY
-- from emp_record_table
-- where SALARY > 6000;

-- -------- Write a query to find employees with experience of more than ten years --------
-- select
-- FIRST_NAME,
-- LAST_NAME,
-- EXP
-- from emp_record_table
-- where EXP > 10
-- order by EXP desc;

-- -------- Write a query using stored functions in the project table to check whether the job profile assigned to each employee in the data science team matches the organization’s set standard --------
-- delimiter //

-- create function getexpectedprofile(exp int)
-- returns VARCHAR(50)
-- deterministic
-- begin
--     declare profile VARCHAR(50);

--     set profile = case
--         when exp <= 2 then 'junior data scientist'
--         when exp > 2 and exp <= 5 then 'associate data scientist'
--         when exp > 5 and exp <= 10 then 'senior data scientist'
--         when exp > 10 and exp <= 12 then 'lead data scientist'
--         when exp > 12 and exp <= 16 then 'manager'
--     end;

--     return profile;
-- end //

-- delimiter ;

-- -------- Write a query to calculate the bonus for all the employees, based on their ratings and salaries --------
-- select 
-- EMP_ID,
-- FIRST_NAME,
-- LAST_NAME,
-- SALARY,
-- EMP_RATING,
-- (0.05 * SALARY * EMP_RATING) as BONUS
-- from emp_record_table; 

-- -------- Write a query to calculate the average salary distribution based on the continent and country ------- 
-- Window function:
-- select 
-- FIRST_NAME,
-- LAST_NAME,
-- SALARY,
-- COUNTRY,
-- CONTINENT,
-- avg(SALARY) over (partition by COUNTRY, CONTINENT) as AVG_SALARY
-- from emp_record_table;

-- OR

-- Group by statement:
-- SELECT 
-- CONTINENT,
-- COUNTRY,
-- AVG(SALARY) AS AVG_SALARY
-- FROM emp_record_table
-- GROUP BY CONTINENT, COUNTRY; 
