# 2 
SELECT CONCAT(first_name,SPACE(1), last_name) 'full_name' 
FROM employees
WHERE last_name LIKE ('E%') AND last_name LIKE ('%E')


