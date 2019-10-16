USE employees;


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


SELECT titles.title, count(*)
from titles
join employees
on titles.emp_no = employees.emp_no
join dept_emp
on employees.emp_no = dept_emp.emp_no
where dept_emp.to_date > now() and dept_no = 'd009' and titles.to_date > now()
group by titles.title;


SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, salaries.salary
FROM employees as e
JOIN dept_manager as de
ON e.emp_no = de.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
JOIN salaries
on e.emp_no = salaries.emp_no
where de.to_date > NOW() and salaries.to_date > now()
order by dept_name;
























# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
# JOIN dept_emp as de
# ON de.emp_no = e.emp_no
# JOIN departments as d
# ON d.dept_no = de.dept_no;