USE employees;

SELECT CONCAT(emp_no,' - ',first_name, ' ', last_name) AS full_name, birth_date as DOB
FROM employees AS emp
GROUP BY full_name, last_name, birth_date
ORDER BY last_name
LIMIT 10;