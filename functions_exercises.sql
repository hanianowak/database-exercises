use employees;

select concat(first_name, ' ', last_name)
from employees
where last_name LIKE 'E%'
  and last_name like '%e';

select first_name, last_name, hire_date, datediff(curdate(), hire_date)
from employees
where birth_date like '%12-25';



