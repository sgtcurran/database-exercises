
# 1
USE employees;

CREATE TEMPORARY TABLE innis_1667.employees_with_salaries AS 
SELECT * FROM employees JOIN salaries USING(emp_no);

USE innis_1667;
SELECT * FROM employees_with_salaries;

ALTER TABLE employees_with_salaries ADD dept_name VARCHAR (20);

CREATE TEMPORARY TABLE employees_with_departments AS 
SELECT first_name, last_name, dept_name
FROM employees_with_salaries;

SELECT * FROM employees_with_departments;

ALTER TABLE employees_with_departments ADD full_name VARCHAR (50);

UPDATE employees_with_departments
SET full_name = CONCAT(first_name,'  ', Last_name);

SELECT * FROM employees_with_departments;

ALTER TABLE employees_with_departments DROP COLUMN first_name;
ALTER TABLE employees_with_departments DROP COLUMN last_name;

SELECT * FROM employees_with_departments;
#

#2
USE sakila;
SELECT DATABASE();

CREATE TEMPORARY TABLE innis_1667.payment AS 
SELECT * FROM payment;

USE innis_1667;

SELECT * FROM innis_1667.payment;






