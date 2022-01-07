SELECT first_name
FROM employees 
WHERE first_name IN ('Irena', 'Vidya', 'Maya');
# 709 employees 
;
SELECT first_name
FROM employees 
WHERE first_name OR ('Irena','Vidya', 'Maya');
# does not return output becasue there isn't an AND 
;
SELECT *
FROM employees 
WHERE first_name 

