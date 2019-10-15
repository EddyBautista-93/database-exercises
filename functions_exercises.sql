USE employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' AND gender = 'M'
ORDER BY last_name, first_name DESC;



SELECT CONCAT(emp_no, ' - ', first_name,'-',last_name)
FROM employees
WHERE last_name like 'E%'
ORDER BY emp_no;

SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date like '199%';

SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date like '%-12-25';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like '%Q%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like 'E%E';







SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name like '%Q%' AND last_name NOT LIKE '%QU%';

SELECT DISTINCT first_name
FROM employees;

SELECT COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';
