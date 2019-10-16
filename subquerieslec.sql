use employees;

# ======================== SUBQUERIES

/*

    SUBQUERY - a nested SELECT within another query...

        SELECT column_a, column_b, column_c
        FROM table_a
        WHERE column_a IN (
            SELECT column_a
            FROM table_b
            WHERE column_b = true
        );

    Joins: often used when data is needed from two or more tables
        - returns only rows of data
        - tend to be faster than sub-queries
        - syntax can be more complex

    Subqueries: often used when the data of one table needs to be filtered by additional tables
        - may return...
            rows of data (another table)
            a single row
            a column of values
            a single value (scaler)
        - tend to be more readable than joins
        - must be a nested SELECT (can't nest an Insert, for example)
        - sub-queries may be nested infinitely (avoid double nested queries, if possible)

*/

# ============== Simple Examples

# find the information for the departments where the department name is 'Customer Service'

	# first find the department number
	SELECT dept_no FROM departments WHERE dept_name = 'Customer Service'; # sub-query part

	SELECT *
	FROM departments
	WHERE dept_no = (
		SELECT dept_no FROM departments WHERE dept_name = 'Customer Service'
	);

# Curriculum Example... find the first name, last name, and birth date for the first 10 department managers

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;

# return historical department manager employee numbers of the Sales department

SELECT emp_no
FROM dept_manager
WHERE dept_no IN (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Sales'
);


# Can achieve same results as an inner join

	# find first name and last of all department managers
	SELECT e.first_name, e.last_name
	FROM employees AS e
	JOIN dept_manager AS dm
		ON dm.emp_no = e.emp_no;

	SELECT first_name, last_name
	FROM employees
	WHERE emp_no IN (
		SELECT emp_no FROM dept_manager
	);


# ============== ADDITIONAL EXAMPLES

# concatenate the first two employee's highest salaries
SELECT CONCAT (
   (
       SELECT MAX(salary)
       FROM salaries
       WHERE emp_no = 10001
   ),
   ' ',
   (
       SELECT MAX(salary)
       FROM salaries
       WHERE emp_no = 10002
   )
);

# get the names of employees with the ten highest salaries

# first find the list of employees with the highest current salaries
SELECT emp_no, salary FROM salaries
WHERE to_date > NOW()
ORDER BY salary DESC;

SELECT first_name, last_name FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM salaries
    WHERE to_date > NOW()
    ORDER BY salary DESC
)
LIMIT 10;


# Getting information from multiple tables

SELECT CONCAT (
    (
        SELECT CONCAT(first_name, ' ', last_name)
        FROM employees
        WHERE emp_no = 10001
    ),
    ' works in a department called ',
    (
        SELECT dept_name
        FROM departments
        WHERE dept_no = 'd005'
    ),
    '.'
);


# name and hire_date of earliest-hired department employees

SELECT first_name, hire_date
FROM employees
WHERE emp_no IN (

    SELECT emp_no
    FROM dept_emp
    WHERE from_date = (SELECT MIN(from_date) FROM dept_emp)

);


# find the names and genders of all current department managers

# first find the emp_no of all current department managers

SELECT emp_no FROM dept_manager
WHERE TO_DATE > NOW();

SELECT CONCAT(first_name, ' ', last_name) as full_name, gender FROM employees
WHERE emp_no IN (
	SELECT emp_no FROM dept_manager
	WHERE TO_DATE > NOW()
);


# find hire_date of all current engineers

# first find the list of emp_no for current engineers

SELECT emp_no FROM titles
WHERE title = 'Engineer'
	AND to_date > NOW();

SELECT hire_date FROM employees
WHERE emp_no IN (
	SELECT emp_no FROM titles
	WHERE title = 'Engineer'
		AND to_date > NOW()
	);


# all senior engineers from Customer Service department

SELECT *
FROM titles
WHERE title = 'Senior Engineer'
  AND emp_no IN (

    SELECT emp_no
    FROM dept_emp
    WHERE dept_no IN (

        SELECT dept_no
        FROM departments
        WHERE dept_name = 'Customer Service'

    )

);