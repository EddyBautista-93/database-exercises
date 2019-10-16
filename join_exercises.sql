USE employees;


# Using the example in the Associative Table Joins section as a guide,
# write a query that shows each department along with the name of
# the current manager for that department.


SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
JOIN dept_manager as de
ON e.emp_no = de.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
where to_date > NOW()
order by dept_name;







SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
JOIN dept_manager as de
ON e.emp_no = de.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
where to_date > NOW() AND gender = 'f'
order by dept_name;













SELECT titles.title AS Title, count(*) AS Count
FROM titles
JOIN employees
ON titles.emp_no = employees.emp_no
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
WHERE dept_emp.to_date > now()
AND dept_no = 'd009'
AND titles.to_date > now()
group by titles.title;


SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Name,
salaries.salary AS Salary
FROM employees as e
JOIN dept_manager as de
ON e.emp_no = de.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
JOIN salaries
ON e.emp_no = salaries.emp_no
WHERE de.to_date > NOW()
AND salaries.to_date > now()
ORDER BY dept_name;
























# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
# JOIN dept_emp as de
# ON de.emp_no = e.emp_no
# JOIN departments as d
# ON d.dept_no = de.dept_no;