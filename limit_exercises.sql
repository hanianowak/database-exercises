use employees;

SELECT DISTINCT last_name FROM employees
order by last_name DESC
limit 10;

select first_name, last_name
from employees
where hire_date like '199%'
  and birth_date like '%12-25'
order by hire_date DESC
limit 5;