#2 there has been 7 unique titles 
SELECT DISTINCT title 
FROM titles;

#3 Erde, Eldridge, Etalle, Erie, Erbe
SELECT DISTINCT last_name 
FROM employees
WHERE last_name LIKE ('E%') AND last_name LIKE ('%E');

#4 
SELECT DISTINCT first_name, last_name 
FROM employees
WHERE last_name LIKE ('E%') AND last_name LIKE ('%E');

#5 Chleq, Lindqvist, Qiwen 
SELECT DISTINCT last_name
FROM employees
WHERE last_name like ('%q%') AND last_name NOT LIKE ('%qu%');

#6 
SELECT COUNT(DISTINCT(last_name))
FROM employees
WHERE last_name like ('%q%') AND last_name NOT LIKE ('%qu%');

#7
SELECT first_name, gender, COUNT(*)
FROM employees
GROUP BY first_name, gender
HAVING (first_name = ('Irena')
	OR first_name = ('Vidya')
	OR first_name = ('Maya'));
	
#8
SELECT COUNT(DISTINCT(first_name, last_name, birth_date))  
FROM employees;


