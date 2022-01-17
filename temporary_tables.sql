
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

DROP TABLE innis_1667.payment;

CREATE TEMPORARY TABLE innis_1667.payment AS (
	SELECT payment_id, customer_id, rental_id, amount * 100 AS amount_pennies, payment_date, last_update
	FROM sakila.payment


);

SELECT * FROM innis_1667.payment;
DESCRIBE innis_1667.payment;

ALTER TABLE innis_1667.payment MODIFY amount_pennies INT NOT NULL;
DESCRIBE innis_1667.payment;

SELECT * FROM innis_1667.payment;

#3 
USE employees;
SELECT DATABASE();

CREATE TEMPORARY TABLE innis_1667.aggregated_salary AS (
	SELECT AVG (salary) AS avg_salary, STD(salary) AS std_salary 
	FROM employees.salaries

);
USE innis_1667;

SELECT * FROM innis_1667.aggregated_salary;


USE employees;


CREATE TEMPORARY TABLE innis_1667.current AS (
	SELECT dept_name, AVG(salary) AS deptartment_current_average
	FROM employees.salaries
	JOIN employees.dept_emp USING (emp_no)
	JOIN employees.departments USING (dept_no)
	WHERE employees.dept_emp.to_date > curdate()
	AND employees.salaries.to_date > curdate()
	GROUP BY dept_name 


) ;

USE innis_1667;
SELECT * FROM innis_1667.current;

ALTER TABLE innis_1667.current ADD average FLOAT(10, 2);
ALTER TABLE innis_1667.current ADD standard_deviation FLOAT(10, 2);
ALTER TABLE innis_1667.current ADD zscore FLOAT(10, 2);

UPDATE innis_1667.current SET standard_deviation = 16904;
UPDATE innis_1667.current SET average = 63810;

SELECT * FROM innis_1667.current;

UPDATE innis_1667.current SET zscore = (deptartment_current_average - average) / standard_deviation;

SELECT * FROM innis_1667.current
order by zscore desc;

#Sales department is the best to work in and the worst is Human Rescources