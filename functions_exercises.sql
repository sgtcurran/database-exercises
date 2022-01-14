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

SELECT MIN(salary), MAX(salary)
FROM salaries;

#6
SELECT 
LOWER(
			CONCAT(
						SUBSTR(first_name, 1, 1),
						SUBSTR(last_name, 1, 4),
						'_',
						SUBSTR(birth_date, 6, 2),
						SUBSTR(birth_date, 3, 2)
			)
) AS username
FROM employees; 
										

					





