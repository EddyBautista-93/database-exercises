USE employees;

SHOW TABLES;


SELECT first_name, hire_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_emp
    WHERE hire_date = '1990-10-22'
);

# SELECT hire_date from employees
# where employees.employees.emp_no = '101010'

SELECT * FROM titles
WHERE emp_no IN (
    select emp_no from employees where first_name = 'Aamod'
);

SELECT first_name, last_name
from employees;




select first_name,last_name
from employees
where emp_no in(
    select emp_no
    from dept_manager
    where gender = 'f' and to_date > now()
    );