
USE employees;

CREATE TEMPORARY TABLE my_database_with_permissions.employees_with_salaries AS 
SELECT * FROM employees JOIN salaries USING(emp_no);

USE my_database_with_permissions;
SELECT * FROM employees_with_salaries;

CREATE TEMPORARY TABLE employees_with_departments AS
SELECT first_name, last_name, dept_name