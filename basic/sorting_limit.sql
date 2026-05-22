-- Find employees whose name starts with 'J'
SELECT * FROM EMPLOYEES WHERE first_name LIKE 'J%';

-- Get second highest salary

--Approach 1: Using Subquery
SELECT MAX(salary) from EMPLOYEES WHERE
salary < (SELECT MAX(salary) from EMPLOYEES);

--Approach 2: using order by + limit + offset
SELECT DISTINCT salary
FROM EMPLOYEES
ORDER BY salary DESC
LIMIT 1 OFFSET 1;