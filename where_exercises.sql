
#2
SELECT first_name
FROM employees 
WHERE first_name IN ('Irena', 'Vidya', 'Maya');
# 709 employees 
;
#3
SELECT first_name, gender
FROM employees 
WHERE gender = 'M'
and 
	(first_name = ('Irena')
	OR first_name = ('Vidya')
	OR first_name = ('Maya')
) # 441 Employees and NO

;
 	 
#5
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
# 7330 Employees
;
#6
SELECT *
FROM employees 
WHERE last_name LIKE 'E%' OR last_name LIKE 'E%E'
# starts or ends with 'E' = 7330 Employees
;
SELECT *
FROM employees
WHERE last_name LIKE '%E' NOT last_name LIKE 'E%E'
# 24292 employees ends with e
;
#7
SELECT *
FROM employees 
WHERE last_name LIKE 'E%' and last_name LIKE 'E%E'
# 899 employees that has both a E at the beginnning and end. 
;
SELECT *
FROM employees 
WHERE last_name LIKE '%E'
# 24292 employees 
;
#8
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
#134214 employees hired between 1990 and 1999
;
#9
SELECT *
FROM employees
WHERE birth_date LIKE ('%12-25%')
# 842 employees born on 12-25
;
#10
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' 
	AND (birth_date LIKE ('%12-25%') )
#There are 362 emloyees hired during the 90's & born on 12-25
;
#11 
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
#1873 employees with a q in their name 
;
#12
ELECT last_name
FROM employees
WHERE last_name LIKE '%q%' 
	AND != last_name like ('%qu%');
