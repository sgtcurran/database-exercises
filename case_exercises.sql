#1

SELECT emp_no, dept_no, from_date, to_date
	to_date,
	CASE to_date
		WHEN '9999-01-01' THEN 1
		ELSE 0
	END AS is_employed
FROM dept_emp		
;
#2

SELECT first_name, last_name, LEFT(last_name, 1) AS 1st_letter_of_last_name,
	
	CASE
		WHEN LEFT(last_name, 1) <= 'H' THEN 'A-H'
		WHEN LEFT(last_name, 1) <= 'Q' THEN 'I-Q'	
		WHEN LEFT(last_name, 1) <= 'Z' THEN 'R-Z'
		ELSE NULL 
	END AS alpha_group
FROM employees;

#3
SELECT CONCAT(SUBSTR(birth_date, 1, 3),'0') as decade, COUNT(*)
FROM employees
GROUP BY birth_date;
 
#4


	