-- Project: Security Data Filtering with SQL
-- Author: [Your Name]
-- Description: SQL queries to investigate suspicious login attempts and identify employee machines for security updates.

-- 1. Retrieve failed login attempts after business hours (after 18:00)
SELECT * 
FROM log_in_attempts
WHERE login_time > '18:00:00' 
AND success = 0;

-- 2. Retrieve login attempts on specific dates (2022-05-08 and 2022-05-09)
SELECT * 
FROM log_in_attempts
WHERE login_date IN ('2022-05-08', '2022-05-09');

-- 3. Retrieve login attempts outside of Mexico
SELECT * 
FROM log_in_attempts
WHERE country NOT LIKE 'MEX%' AND country NOT LIKE 'MEXICO';

-- 4. Retrieve employees in the Marketing department in the East building
SELECT * 
FROM employees
WHERE department = 'Marketing' 
AND office LIKE 'East-%';

-- 5. Retrieve employees in Finance or Sales departments
SELECT * 
FROM employees
WHERE department IN ('Finance', 'Sales');

-- 6. Retrieve all employees NOT in the IT department
SELECT * 
FROM employees
WHERE department <> 'Information Technology';