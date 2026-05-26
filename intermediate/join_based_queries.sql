-- Get employee name with department name
SELECT (e.first_name || ' ' || e.last_name) as employee_name, d.department_name FROM EMPLOYEES e JOIN DEPARTMENT d 
ON e.department_id=d.department_id;

-- List all departments & each department's employee count 
SELECT d.department_name, COUNT(e.employee_id) AS employee_count FROM DEPARTMENT d LEFT JOIN EMPLOYEES e 
ON d.department_id=e.department_id
GROUP BY d.department_id
ORDER BY d.department_id;

-- Get manager name for each employee
SELECT (e.first_name || ' ' || e.last_name) as employee_name, 
(m.first_name || ' ' || m.last_name) as manager_name
FROM EMPLOYEES e LEFT JOIN EMPLOYEES m
ON e.reports_to=m.employee_id;

-- Find employees whose salary is greater than their manager's salary
SELECT e.employee_id, e.salary as emp_salary, m.salary as manager_salary from EMPLOYEES e JOIN EMPLOYEES m
ON e.reports_to=m.employee_id
WHERE e.salary > m.salary;