--QUESTION 1--
select employees.emp_no,
employees.first_name,
employees.last_name,
employees.sex,
salaries.salary
from employees
inner join salaries on
employees.emp_no = salaries.emp_no;

--QUESTION 2--
select first_name,
last_name,
hire_date 
from employees 
where employees.hire_date like '%1986%'
order by hire_date asc

--QUESTION 3--
create view question2_1 as
select departments.dept_no,
departments.dept_name,
dept_manager.emp_no
from departments
inner join dept_manager on 
departments.dept_no = dept_manager.dept_no

select question2_1.dept_no,
question2_1.dept_name,
question2_1.emp_no,
employees.first_name,
employees.last_name
from employees
inner join question2_1 on
question2_1.emp_no = employees.emp_no

--QUESTION 4--
create view question4_1 as
select departments.dept_no,
departments.dept_name,
dept_emp.emp_no
from departments
inner join dept_emp on 
dept_emp.dept_no = departments.dept_no

select question4_1.emp_no,
question4_1.dept_name,
employees.first_name,
employees.last_name
from employees
inner join question4_1 on
question4_1.emp_no = employees.emp_no

--QUESTION 5--
select first_name,
last_name,
sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

--QUESTION 6--
create view question6_1 as
select employees.emp_no,
employees.first_name,
employees.last_name,
dept_emp.dept_no
from employees
inner join dept_emp on
employees.emp_no = dept_emp.emp_no

select departments.dept_name,
question6_1.emp_no,
question6_1.first_name,
question6_1.last_name
from question6_1
inner join departments on
departments.dept_no = question6_1.dept_no

--QUESTION 7--
create view question7_1 as
select employees.emp_no,
employees.first_name,
employees.last_name,
dept_emp.dept_no
from employees
inner join dept_emp on
employees.emp_no = dept_emp.emp_no

select question7_1.emp_no,
question7_1.first_name,
question7_1.last_name,
departments.dept_name
from question7_1
inner join departments on
question7_1.dept_no = departments.dept_no
where departments.dept_name = 'Sales' OR departments.dept_name = 'Development'

--QUESTION 8--
select last_name, count(last_name) as "Total count"
from employees
group by last_name
order by count(last_name) desc

--EPILOGUE--
SELECT * from employees where emp_no = '499942'