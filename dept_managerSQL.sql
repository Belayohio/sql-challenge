create table dept_manager(man_id int primary key not null,dept_no text not null,
emp_no integer not null,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES salaries(emp_no));
select * from dept_manager;