-- 1. Create departments table and import data
CREATE TABLE departments(
	dept_no VARCHAR(40) primary key,
	dept_name VARCHAR(40)
);
SELECT * FROM departments

-- 2. Create dept_manager table and import data
CREATE TABLE dept_manager(
	dept_no VARCHAR(40),
	emp_no INTEGER,
	foreign key (dept_no) references departments(dept_no),
	primary key (emp_no)
);
	
SELECT * FROM dept_manager

--3. Create dept_emp table and import data
CREATE TABLE dept_emp(
	emp_no INTEGER,
	dept_no VARCHAR(40),
	foreign key (dept_no) references departments(dept_no),
	primary key (emp_no,dept_no)
); 
	
SELECT * FROM dept_emp


-- 4. Create employees table and import data
CREATE TABLE employees (
	emp_no INTEGER,
	emp_title_id VARCHAR(40),
	birth_date DATE,
	first_name VARCHAR(40),
	last_name VARCHAR(40),
	sex VARCHAR(1),
	hire_date DATE,
	primary key (emp_no),
	foreign key (emp_title_id) references titles(title_id)
);
	
SELECT * FROM employees


--5. Create salaries table and import data
CREATE TABLE salaries(
	emp_no INTEGER,
	salary INTEGER,
	foreign key (emp_no) references employees(emp_no),
	primary key (emp_no)
); 
	
SELECT * FROM salaries


--6. Create titles table and import data
CREATE TABLE titles(
	title_id VARCHAR(40) primary key,
	titles VARCHAR(40)
);

SELECT * FROM titles
