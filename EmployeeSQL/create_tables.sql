DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
    title_id varchar(255) PRIMARY KEY NOT NULL,
    title varchar(255) NOT NULL
);

CREATE TABLE department (
    dept_no varchar(255) PRIMARY KEY NOT NULL,
    dept_name varchar(255)   NOT NULL

);

CREATE TABLE employees (
    emp_no varchar(255) PRIMARY KEY NOT NULL,
    emp_title_id varchar(255) NOT NULL,
    birth_date varchar(255) NOT NULL,
    first_name varchar(255) NOT NULL,
    last_name varchar(255)  NOT NULL,
    sex varchar(255) NOT NULL,
    hire_date varchar(255) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)

);

CREATE TABLE dept_emp (
    id serial PRIMARY KEY NOT NULL,
    emp_no varchar(255) NOT NULL,
    dept_no varchar(255) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES department(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)

);

CREATE TABLE dept_manager (
    id serial PRIMARY KEY NOT NULL,
    dept_no varchar(255) NOT NULL,
    emp_no varchar(255)  NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES department(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)

);

CREATE TABLE salaries (
    emp_no varchar(255) PRIMARY KEY NOT NULL,
    salary int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)

);


