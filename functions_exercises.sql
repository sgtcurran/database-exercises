# 2 
SELECT CONCAT(first_name,SPACE(1), last_name) 'full_name' 
FROM employees
WHERE last_name LIKE ('E%') AND last_name LIKE ('%E');

#3 
SELECT UPPER(CONCAT(first_name,SPACE(1), last_name)) 'full_name' 
FROM employees
WHERE last_name LIKE ('E%') AND last_name LIKE ('%E');

#4
SELECT first_name, last_name, birth_date, hire_date, DATEDIFF(NOW(), hire_date)
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' 
	AND (birth_date LIKE ('%12-25%'));

#5

SELECT emp_no, MIN(salary)
FROM salaries;

