-- create table for departments with columns dept_no (PRIMARY KEY) and dept_name
CREATE TABLE departments (
	dept_no	VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

-- create table for titles with columns title_id (PRIMARY KEY) and title
CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id)
);

-- create table for employees with columns emp_no (PRIMARY KEY),
	-- emp_title_id ((emp_title_id) REFERENCES titles (title_id)), birth_date,
	-- first_name, last_name, sex and hire_date
CREATE TABLE employees (
	emp_no VARCHAR(30) NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

-- create table for dept_emp with columns emp_no (PRIMARY KEY)(FOREIGN KEY (emp_no) 
	-- REFERENCES employees (emp_no)), dept_no (PRIMARY KEY)(FOREIGN KEY (dept_no)
	-- REFERENCES departments (dept_no))
CREATE TABLE dept_emp (
	emp_no VARCHAR(30) NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- create table for dept_manager with columns emp_no (PRIMARY KEY)(FOREIGN KEY (emp_no) 
	-- REFERENCES employees (emp_no)), dept_no (PRIMARY KEY)(FOREIGN KEY (dept_no)
	-- REFERENCES departments (dept_no))
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- create table for salaries with columns emp_no (PRIMARY KEY)(FOREIGN KEY (emp_no) 
	-- REFERENCES employees (emp_no)), salary
CREATE TABLE salaries (
	emp_no VARCHAR(30) NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no, salary),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
