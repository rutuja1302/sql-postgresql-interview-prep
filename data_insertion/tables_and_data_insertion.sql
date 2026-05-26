--Create Required Tables
CREATE TABLE EMPLOYEES(
	employee_id INT,
  	first_name VARCHAR(50),
  	last_name VARCHAR(50),
  	department_id INT,
	salary INT,
    reports_to INT
);

CREATE TABLE DEPARTMENT(
  	department_id INT,
	department_name VARCHAR(100)
);

--Insert Demo Data to test sql queries
INSERT INTO DEPARTMENT
VALUES
(1, "IT - Software Engineering"),
(2, "HR"),
(3, "FINANCE"),
(4, "MANAGEMENT"),
(5, "IT - Hardware");

INSERT INTO EMPLOYEES
VALUES
(1, "John", "Doe", 4, 500000, null),
(2, "Robert", "L", 1, 75000, 1),
(3, "David", "R", 1, 50000, 1),
(4, "John", "Luna", 2, 30000, null),
(5, "Betty", "Doe", 2, 15000, 4);