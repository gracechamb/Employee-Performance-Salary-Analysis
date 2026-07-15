# Employee Performance & Salary Analysis — SQL Project

## Situation
ScienceQtech is a startup working across several data science domains (fraud detection, 
market basket analysis, self-driving cars, supply chain, early cancer detection, customer 
sentiment, and drug discovery). With the annual appraisal cycle approaching, the HR 
department needed reports on employee details, performance, and project involvement to 
support performance mapping decisions.

## Task
As Junior Database Administrator, I was asked to:
- Find the maximum salary of employees across roles
- Ensure job profiles meet the organization's standards based on experience
- Calculate performance-based bonuses to estimate additional costs
- Support HR's understanding of employee performance and training needs

## What I Did
Queried a relational employee database to support HR's annual performance review, using 
window functions, a custom stored function, and views to segment employees by rating and 
department, calculate bonuses, rank employees by experience, and validate job titles 
against organizational standards.

## Key Skills / Technologies
- SQL (MySQL)
- Window functions (`OVER`, `PARTITION BY`)
- Stored functions
- Views
- `CASE` statements
- Aggregate functions (`MIN`, `MAX`, `AVG`)
- `UNION`, `GROUP BY`

## Files
- `Employee_Performance_Mapping.sql` — all queries used in the analysis
