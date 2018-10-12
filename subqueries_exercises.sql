use employees;

# Find all the employees with the same hire date as employee 101010 using a sub-query.
# 69 Rows
select last_name
from employees
where birth_date in (select birth_date from employees where emp_no = '101010');

# Find all the titles held by all employees with the first name Aamod.
select t.title
from titles as t
       join employees e on t.emp_no = e.emp_no
where e.first_name in (select first_name from employees where first_name = 'Aamod');
# 314 total titles, 6 unique titles
#
# Find all the current department managers that are female.
# +------------+------------+
# | first_name | last_name  |
# +------------+------------+
# | Isamu      | Legleitner |
# | Karsten    | Sigstam    |
# | Leon       | DasSarma   |
# | Hilary     | Kambil     |
# +------------+------------+
select first_name, last_name
from employees as e
join dept_manager manager on e.emp_no = manager.emp_no
where e.gender = 'F' and manager.to_date = '9999-01-01'