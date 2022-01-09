#2 the first & last name in first row is Irena Reutenauer and in the last is Vidya Simmen
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

#3 the first row name is Irena Action and the last row is Vidya Zweizig 
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

#4 the first row name is Irena Action and the last row is Maya Zyda
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

#5 a total number of employees 899. First employee number 10021 and the last emmployee number is 499648
Select *
FROM employees
WHERE last_name like ('E%') and last_name like ('%E')
ORDER BY emp_no;

#6 total of 899 employees. The newest employee is Teiji Eldridge 
Select *
FROM employees
WHERE last_name LIKE ('E%E') 
ORDER BY hire_date DESC;
# Oldest employee is Piyush Erbe
Select *
FROM employees
WHERE last_name LIKE ('E%E') 
ORDER BY birth_date;

#7 total employees 362. The oldest employee hired last was Khun Bernini and the youngest hired first is Douadi Pettis
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;
# the yougest hired first is Douadi Pettis
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date DESC, hire_date ;