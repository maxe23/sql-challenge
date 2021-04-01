SELECT dept_emp.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM dept_emp
INNER JOIN departments
ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees
ON dept_emp.emp_no = employees.emp_no
ORDER BY emp_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM dept_emp
INNER JOIN departments
ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees
ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales'
ORDER BY emp_no;
