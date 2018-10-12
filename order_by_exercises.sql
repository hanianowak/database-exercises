use employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
# Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Simmen.
select first_name, last_name
from employees
where first_name in ('Irena', 'Vidya','Maya')
order by  last_name, first_name;

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
select first_name, last_name
from employees
where first_name = 'Irena'
   or first_name = 'Vidya'
   or first_name = 'Maya';

# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
select first_name, last_name
from employees
where (first_name = 'Irena'
         or first_name = 'Vidya'
         or first_name = 'Maya')
  and gender = 'M';

# Find all employees whose last name starts with 'E' — 7,330 rows.
select first_name, last_name
from employees
where last_name LIKE 'E%';

# Update your queries for employees with 'E' in their last name to sort the results by their employee number.
# Your results should not change!
select first_name, last_name
from employees
where last_name LIKE 'E%'
order by emp_no desc;

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
select first_name, last_name
from employees
where last_name LIKE 'E%'
   or last_name like '%e';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
select first_name, last_name
from employees
where last_name LIKE 'E%'
  and last_name like '%e';

# Find all employees hired in the 90s — 135,214 rows.
select first_name, last_name
from employees
where hire_date like '199%';

# Find all employees born on Christmas — 842 rows.
select first_name, last_name
from employees
where birth_date like '%12-25';

# Find all employees hired in the 90s and born on Christmas — 362 rows
select first_name, last_name
from employees
where hire_date like '199%'
  and birth_date like '%12-25';

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee
# who was hired last. It should be Khun Bernini.
select first_name, last_name
from employees
where hire_date like '199%'
  and birth_date like '%12-25'
order by hire_date DESC;

# Find all employees with a 'q' in their last name — 1,873 rows.
select first_name, last_name
from employees
where last_name like '%q%';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
select first_name, last_name
from employees
where last_name like '%q%'
  and last_name not like '%qu%';