# Data Engineering
-- create table for departments with columns dept_no (PRIMARY KEY) and dept_name

-- create table for titles with columns title_id (PRIMARY KEY) and title

-- create table for employees with columns emp_no (PRIMARY KEY),
    -- emp_title_id ((emp_title_id) REFERENCES titles (title_id)), birth_date,
    -- first_name, last_name, sex and hire_date

-- create table for dept_emp with columns emp_no (PRIMARY KEY)(FOREIGN KEY (emp_no) 
    -- REFERENCES employees (emp_no)), dept_no (PRIMARY KEY)(FOREIGN KEY (dept_no)
    -- REFERENCES departments (dept_no))
    
-- create table for dept_manager with columns emp_no (PRIMARY KEY)(FOREIGN KEY (emp_no) 
    -- REFERENCES employees (emp_no)), dept_no (PRIMARY KEY)(FOREIGN KEY (dept_no)
    -- REFERENCES departments (dept_no))

-- create table for salaries with columns emp_no (PRIMARY KEY)(FOREIGN KEY (emp_no) 
    -- REFERENCES employees (emp_no)), salary

# Data Analysis
-- List the following details of each employee: employee number, last name, first name, sex, and salary.
    -- need to pull from employees: employee #, last, first, gender
    -- need to pull from salaries: salary
    -- join on emp no

-- List first name, last name, and hire date for employees who were hired in 1986.

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
    -- need to pull from employees: the manager's employee number, last name, first name
    -- need to pull from departments: department number, department name
    -- need to pull from dept_manager: department number, the manager's employee number
    -- join departments and dept_manager on department number
    -- join employees and dept_manager on employee number

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
    -- need to pull from employees: the employee number, last name, first name
    -- need to pull from departments: department number, department name
    -- need to pull from dept_emp: department number, employee number
    -- join departments and dept_emp on department number
    -- join employees and dept_emp on employee number

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
    -- need to pull from employees: the employee number, last name, first name
    -- need to pull from departments: department number, department name
    -- need to pull from dept_emp: department number, employee number
    -- join departments and dept_emp on department number
    -- join employees and dept_emp on employee number
    -- where employees in the Sales department

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
    -- need to pull from employees: the employee number, last name, first name
    -- need to pull from departments: department number, department name
    -- need to pull from dept_emp: department number, employee number
    -- join departments and dept_emp on department number
    -- join employees and dept_emp on employee number
    -- where employees in the Sales and Development departments

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
    -- need to pull from employees: employee last names
    -- In descending order, list the frequency count of employee last names

## Bonus (Optional)
As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

1. Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the code below to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:
   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```
    * Consult [SQLAlchemy documentation](https://docs.sqlalchemy.org/en/latest/core/engines.html#postgresql) for more information.
            * If using a password, do not upload your password to your GitHub repository. See [https://www.youtube.com/watch?v=2uaTPmNvH0I](https://www.youtube.com/watch?v=2uaTPmNvH0I) and [https://help.github.com/en/github/using-git/ignoring-files](https://help.github.com/en/github/using-git/ignoring-files) for more information.
2. Create a histogram to visualize the most common salary ranges for employees.
3. Create a bar chart of average salary by title.