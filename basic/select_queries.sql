-- Get all employees whose salary > 50,000
SELECT * FROM EMPLOYEES WHERE salary > 50000;

-- Find all unique departments from employee table
SELECT department_name FROM DEPARTMENT WHERE department_id IN 
(SELECT DISTINCT(department_id) FROM EMPLOYEES);

-- Retrieve employees ordered by salary descending
SELECT employee_id, first_name, last_name, salary from EMPLOYEES
ORDER BY salary DESC;