-- List the following details of each employee: employee number, last name, first name, sex, and salary.

select e.emp_no as "Employee Number" ,e.last_name as "Last Name",e.first_name as "First Name",e.sex as "Sex",s.salary as "Salary"
FROM salaries as s
INNER JOIN employees as e ON
e.emp_no = s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.

select first_name as "First Name",last_name as "Last Name",hire_date as "Hire Date"
from employees where hire_date like '%1986%';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select dm.dept_no as "Department Number",d.dept_name as "Department Name",dm.emp_no as "Manager Employee Number",e.last_name as "Last Name",e.first_name as "First Name"
from dept_manager as dm
inner join department as d ON
dm.dept_no = d.dept_no
inner join employees as e ON
e.emp_no = dm.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.

select e.emp_no as "Employee Number",e.last_name as "Last Name",e.first_name as "First Name",d.dept_name as "Department Name"
from employees as e
inner join dept_emp as de
on e.emp_no = de.emp_no
inner join department as d
on d.dept_no = de.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name as "First Name", last_name as "Last Name", sex as "Sex"
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

select de.emp_no as "Employee Number",e.last_name as "Last Name",e.first_name as "First Name",d.dept_name as "Department Name"
from dept_emp as de
inner join employees as e on
de.emp_no = e.emp_no
inner join department as d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select de.emp_no as "Employee Number",e.last_name as "Last Name",e.first_name as "First Name",d.dept_name as "Department Name"
from dept_emp as de
inner join employees as e on
de.emp_no = e.emp_no
inner join department as d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name as "Last Name",count(*) as "Count of Last Name"
from employees
group by last_name
order by "Count of Last Name" desc;