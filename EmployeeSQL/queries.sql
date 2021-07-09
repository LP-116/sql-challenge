-- Question 1: List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no = employees.emp_no;

-- Question 2: List first name, last name, and hire date for employees who were hired in 1986

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';

-- Question 3: List the manager of each department with the following information: 
--             department number, department name, the manager's employee number, last name, first name.

SELECT dept_manager.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.last_name,
	employees.first_name
FROM dept_manager
INNER JOIN departments ON
dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON
dept_manager.emp_no = employees.emp_no;

-- Question 4: List the department of each employee with the following information: 
--             employee number, last name, first name, and department name.

SELECT dept_emp.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM dept_emp
INNER JOIN employees ON 
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no;

-- Question 5: List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Question 6: List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT dept_emp.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM dept_emp
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales';


-- Question 7: List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.






-- Question 8: In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.