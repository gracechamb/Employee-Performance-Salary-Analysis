# Employee Performance & Salary Analysis — SQL Project

*This project is based on a hypothetical business scenario used as a coursework assignment — 
ScienceQtech is not a real company, and I was not an actual employee or Database 
Administrator there. The scenario provided the business context for practicing SQL skills 
against a sample employee dataset.*

## Scenario
The assignment imagines ScienceQtech, a startup working across several data science domains 
(fraud detection, market basket analysis, self-driving cars, supply chain, early cancer 
detection, customer sentiment, and drug discovery). With an annual appraisal cycle 
approaching, the (fictional) HR department needed reports on employee details, performance, 
and project involvement to support performance mapping decisions.

## Task
Acting in the role of a Database Administrator for this scenario, I was asked to:
- Find the maximum salary of employees across roles
- Ensure job profiles meet the organization's standards based on experience
- Calculate performance-based bonuses to estimate additional costs
- Support HR's understanding of employee performance and training needs

## What I Did
Queried a relational employee database to support a simulated HR performance review 
process, using window functions, a custom stored function, and views to segment employees 
by rating and department, calculate bonuses, rank employees by experience, and validate job 
titles against organizational standards.

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
