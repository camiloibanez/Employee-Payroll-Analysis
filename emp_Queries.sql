SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	e.gender,
	sa.salary
FROM employees AS e
INNER JOIN salaries AS sa
ON e.emp_no = sa.emp_no;

SELECT *
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31'
ORDER BY hire_date;

SELECT
	dm.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name,
	dm.from_date,
	dm.to_date
FROM employees AS e
INNER JOIN dept_manager AS dm
ON e.emp_no = dm.emp_no
INNER JOIN departments AS d
ON d.dept_no = dm.dept_no;

SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM departments AS d
INNER JOIN dept_emp AS de
ON d.dept_no = de.dept_no
INNER JOIN employees AS e
ON de.emp_no = e.emp_no;

SELECT *
FROM employees
WHERE first_name = 'Hercules'AND last_name LIKE 'B%';

SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

SELECT
	last_name,
	COUNT(last_name) AS count_name
FROM employees
GROUP BY last_name
ORDER BY count_name DESC;

