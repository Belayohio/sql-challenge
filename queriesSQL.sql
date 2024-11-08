-- 1-- List the employee number, last name, first name, sex, and salary of each employee.
select * from employees;
select * from salaries
select * from dept_manager;
select * from dept_emp;
select * from departments;
--# lets join  employees table with salaries.
select employees.emp_no,employees.first_name,employees.last_name,employees.sex,salaries.salary
	from employees
		inner join salaries on employees.emp_no=salaries.emp_no;

--2-- List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name,last_name,hire_date
	from employees
		where hire_date between'1986-01-01' and '1986-12-31';
	
 --3--List the manager of each department along with their department number, department name, employee number, last name, and first name.
select dept_manager.dept_no,departments.dept_name,employees.emp_no,employees.first_name,employees.last_name
	from departments
		inner join dept_manager on departments.dept_no=dept_manager.dept_no
		inner join employees on dept_manager.emp_no=employees.emp_no;

--4--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select dept_emp.dept_no,employees.emp_no,first_name,last_name,departments.dept_name
	from employees
		inner join dept_emp on employees.emp_no=dept_emp.emp_no
		inner join departments on dept_emp.dept_no=departments.dept_no;

--5-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select first_name,Last_name,sex
	from employees
		where first_name = 'Hercules' and last_name like 'B%';
--6-- List each employee in the Sales department, including their employee number, last name, and first name.

select employees.emp_no,first_name,last_name
	from employees
		inner join dept_emp on employees.emp_no=dept_emp.emp_no
		inner join departments on dept_emp.dept_no=departments.dept_no
			 where dept_name='Sales';
--7--List each employee in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
select departments.dept_name,employees.emp_no,first_name,last_name 
	from departments
		inner join dept_emp on departments.dept_no=dept_emp.dept_no
		inner join employees on dept_emp.emp_no=employees.emp_no
			 where dept_name in ('Sales','Development');

--List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).
select count(last_name) as frequancy_counts,last_name
	from employees
	group by last_name
		order by last_name desc;



	