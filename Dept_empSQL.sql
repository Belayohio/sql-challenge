create table dept_emp(dept_id int primary key not null,emp_no int not null,dept_no text not null,
FOREIGN KEY (emp_no) REFERENCES salaries(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no));
 select * from dept_emp;