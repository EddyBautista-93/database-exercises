USE employees;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'Z%'
ORDER BY last_name DESC
limit 10;

SELECT emp_no, first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date Like '199%' AND birth_date like '%12-25%'
ORDER BY birth_date ASC, hire_date DESC
limit 5 offset 45;
