USE employees;

SELECT CONCAT(emp_no,' - ',last_name, ', ', first_name) AS full_name, birth_date as DOB
FROM employees
# WHERE emp_no between
# 10001 and 10010
# GROUP BY emp_no, last_name, birth_date
# ORDER BY last_name
LIMIT 10;