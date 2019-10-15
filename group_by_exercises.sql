USE employees;

SELECT DISTINCT title
FROM titles;


SELECT DISTINCT last_name, first_name
FROM employees
WHERE last_name like 'E%e'
GROUP BY last_name, first_name;

SELECT DISTINCT last_name, count(*)
FROM employees
WHERE last_name like '%q%' and last_name not like '%qu%'
group by last_name
ORDER BY COUNT(*);

SELECT DISTINCT  gender,count(*)
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
group by gender
ORDER BY COUNT(*) ;




