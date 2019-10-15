USE employees;

SELECT DISTINCT title
FROM titles;


SELECT DISTINCT last_name, first_name
FROM employees
WHERE last_name like 'E%e'
GROUP BY last_name, first_name;

