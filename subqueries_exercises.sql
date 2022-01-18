#1 
SELECT g.first_name, g.last_name, g.hire_date
FROM 
	(
    SELECT *
    FROM employees
    WHERE hire_date LIKE '1990-10-22'
	) as g;

#2 Senior Staff, Engineer, Technique Leader, Senior Engineer, Staff, Assistant Engineer
SELECT DISTINCT title
FROM titles
WHERE emp_no IN
	(
	SELECT emp_no
	FROM employees
	WHERE first_name LIKE ('Aamod')
	)
AND to_date LIKE ('9999-%-%');

#3 91,479 no longer employed
SELECT CONCAT(g.first_name,' ', g.last_name) AS full_name, to_date
FROM 
	(
	SELECT *  
	FROM employees
	
	) AS g
JOIN dept_emp ON g.emp_no = dept_emp.emp_no
WHERE to_date NOT LIKE ('9999-%-%')
;


#4 The total Female current managers are Isamu Legleitner, Karsten Sigstam, Leon DasSarma, Hilary Kambil 
SELECT first_name, last_name, gender
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE gender = 'F' AND to_date LIKE ('9999-%-%')
);

#5
SELECT *
FROM employees
WHERE emp_no IN (
	
	SELECT emp_no
	FROM salaries 
	WHERE salary > (SELECT AVG(salary) 
	FROM salaries)
	);
	


