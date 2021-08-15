-- Data Analysis
-- List the following details of each employee: employee number, last name, first name, sex, and salary.
-- need to pull from employees: employee #, last, first, gender
-- need to pull from salaries: salary
-- join on emp no
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees
FULL OUTER JOIN salaries ON
employees.emp_no = salaries.emp_no;


-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.first_name,
	employees.last_name,
	employees.hire_date
FROM employees
WHERE hire_date::text like '1986%';


-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- need to pull from employees: the manager's employee number, last name, first name
-- need to pull from departments: department number, department name
-- need to pull from dept_manager: department number, the manager's employee number
-- join departments and dept_manager on department number
-- join employees and dept_manager on employee number
SELECT dept_manager.emp_no,
	departments.dept_no,
	departments.dept_name,
	employees.last_name,
	employees.first_name
FROM dept_manager
	FULL OUTER JOIN departments
		ON departments.dept_no = dept_manager.dept_no
	FULL OUTER JOIN employees ON
		employees.emp_no = dept_manager.emp_no;


-- List the department of each employee with the following information: employee number, last name, first name, and department name.
-- need to pull from employees: the employee number, last name, first name
-- need to pull from departments: department number, department name
-- need to pull from dept_emp: department number, employee number
-- join departments and dept_emp on department number
-- join employees and dept_emp on employee number
SELECT dept_emp.emp_no,
	departments.dept_name,
	employees.last_name,
	employees.first_name
FROM dept_emp
	FULL OUTER JOIN departments
		ON departments.dept_no = dept_emp.dept_no
	FULL OUTER JOIN employees ON
		employees.emp_no = dept_emp.emp_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT employees.first_name,
	employees.last_name,
	employees.sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name::text like 'B%';


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- need to pull from employees: the employee number, last name, first name
-- need to pull from departments: department number, department name
-- need to pull from dept_emp: department number, employee number
-- join departments and dept_emp on department number
-- join employees and dept_emp on employee number
-- where employees in the Sales department
SELECT dept_emp.emp_no,
	departments.dept_name,
	employees.last_name,
	employees.first_name
FROM dept_emp
	FULL OUTER JOIN departments
		ON departments.dept_no = dept_emp.dept_no
	FULL OUTER JOIN employees ON
		employees.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Sales';


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- need to pull from employees: the employee number, last name, first name
-- need to pull from departments: department number, department name
-- need to pull from dept_emp: department number, employee number
-- join departments and dept_emp on department number
-- join employees and dept_emp on employee number
-- where employees in the Sales and Development departments
SELECT dept_emp.emp_no,
	departments.dept_name,
	employees.last_name,
	employees.first_name
FROM dept_emp
	FULL OUTER JOIN departments
		ON departments.dept_no = dept_emp.dept_no
	FULL OUTER JOIN employees ON
		employees.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
-- need to pull from employees: employee last names
-- In descending order, list the frequency count of employee last names
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY count DESC;
