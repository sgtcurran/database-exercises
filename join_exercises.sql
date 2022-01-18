#Join example
#1
SELECT users.name AS user_name, roles.name as role_name 
FROM users 
JOIN roles ON users.role_id = roles.id;
#2
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;
#3
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;
#3a
SELECT user.name as user.name, roles.name AS role_name, COUNT(*)
FROM users
JOIN roles ON users.role_id = roles.id;
GROUP BY name;
#Employee Database 
#2 
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees AS e
JOIN dept_emp AS de
  ON de.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = de.dept_no
JOIN dept_manager AS dm
	ON dm.emp_no = de.emp_no
WHERE dm.to_date like ('9999-%-%');
#3 
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees AS e
JOIN dept_emp AS de
  ON de.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = de.dept_no
JOIN dept_manager AS dm
	ON dm.emp_no = e.emp_no
WHERE gender = 'F' AND dm.to_date LIKE ('9999-%-%')
;
#4 
select title, count(*)
FROM titles AS t
JOIN dept_emp de USING (emp_no)
JOIN departments d USING (dept_no)
WHERE t.to_date like ('9999-%-%') 
AND de.to_date like ('9999-%-%')
AND dept_name LIKE 'Customer%'
group by title;
#5
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, s.salary AS Salary
FROM employees AS e
JOIN dept_emp AS de
  ON de.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = de.dept_no
JOIN dept_manager AS dm
	ON dm.emp_no = e.emp_no
JOIN salaries AS s
	ON s.emp_no = e.emp_no
WHERE s.to_date like ('9999-%-%') AND dm.to_date LIKE ('9999-%-%');
#6
SELECT d.dept_no AS dept_no, d.dept_name AS depart_name, COUNT(*) AS num_employee
FROM employees AS e
JOIN dept_emp AS de
  ON de.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = de.dept_no
WHERE de.to_date LIKE ('9999-%-%')   
GROUP BY dept_no, depart_name;
#7 Sales has the highest average salary
SELECT d.dept_name AS dept_name, AVG(s.salary) AS average_salary
FROM employees AS e
JOIN dept_emp AS de
  ON de.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = de.dept_no
JOIN salaries AS s
	ON s.emp_no = e.emp_no
WHERE s.to_date like ('9999-01-01') AND de.to_date LIKE ('9999-%-%') 
GROUP BY dept_name
ORDER BY average_salary DESC;
;
#8 Akemi Warwick
select first_name, last_name, salary
from departments
join dept_emp using (dept_no)
join salaries using (emp_no)
join employees using (emp_no)
where salaries.to_date LIKE ('9999-01-01')
and dept_emp.to_date LIKE ('9999-%-%')
and dept_name LIKE "Marketing"
order by salary DESC
limit 1; 

#9 Vishwani Minakawa
select first_name, last_name, salary, dept_name
from salaries
join dept_manager using (emp_no)
join departments using (dept_no)
join employees using (emp_no)
where salaries.to_date LIKE ('9999-01-01')
and dept_manager.to_date LIKE ('9999-%-%')
order by salary DESC
limit 1;




