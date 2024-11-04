create table employees(empo_id integer primary key not null,
emp_no integer not null,
FOREIGN KEY (emp_no) REFERENCES salaries(emp_no),
emp_title_id text not null,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
birth_date date not null,
first_name varchar not null,
last_name varchar not null,
sex varchar(5) not null,
hire_date date not null);

select * from employees;