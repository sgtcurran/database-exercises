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
	ON dm.emp_no = e.emp_no;
#3 
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees AS e
JOIN dept_emp AS de
  ON de.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = de.dept_no
JOIN dept_manager AS dm
	ON dm.emp_no = e.emp_no
WHERE gender = 'F';
#4 
SELECT t.title AS Title, COUNT(dp.dept_name) AS Count
FROM employees AS e
JOIN titles AS t
	ON t.emp_no = e.emp_no
JOIN departments AS dp
	ON dp.dept_no = 
GROUP BY title;


;



