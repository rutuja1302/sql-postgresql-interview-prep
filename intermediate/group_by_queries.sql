-- INSERT INTO EMPLOYEES VALUES (6, "Betty", "Doe", 2, 15000, 4);
--INSERT INTO EMPLOYEES VALUES (7, "Mark", "Davidson", 1, 50000, 1);

-- Find duplicate records in a table
SELECT * FROM EMPLOYEES
GROUP BY first_name, last_name, department_id, salary, reports_to
HAVING COUNT() > 1;

-- Count number of employees in each department
SELECT b.department_name, COUNT(*) AS employee_count FROM EMPLOYEES a JOIN DEPARTMENT b ON a.department_id=b.department_id
GROUP BY a.department_id;

-- Get top 3 highest salaries
SELECT salary from EMPLOYEES
ORDER BY salary DESC
LIMIT 3;

-- Find employees with same salary in same department
SELECT a.* FROM EMPLOYEES a 
JOIN (SELECT department_id, salary FROM EMPLOYEES 
GROUP BY department_id, salary
      HAVING COUNT()>1) b 
      ON a.department_id=b.department_id AND a.salary=b.salary
      ORDER BY a.department_id;


-- Difference between highest and lowest salary in each department
SELECT department_id, (MAX(salary)-MIN(SALARY)) AS salary_difference FROM EMPLOYEES e 
GROUP BY department_id;
