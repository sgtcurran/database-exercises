#1 
SELECT g.first_name, g.last_name, g.hire_date
FROM 
(
    SELECT *
    FROM employees
    WHERE emp_no = 101010
) as g
JOIN  using(hire_date)
;

#4 
SELECT first_name, last_name, gender
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE gender = 'F' AND to_date LIKE ('9999-%-%')
);



