use employees;

# write a query that shows each department along with the name of the current manager for that department.

# Department Name    | Department Manager
# --------------------+--------------------
# Customer Service   | Yuchang Weedman
# Development        | Leon DasSarma
# Finance            | Isamu Legleitner
# Human Resources    | Karsten Sigstam
# Marketing          | Vishwani Minakawa
# Production         | Oscar Ghazalie
# Quality Management | Dung Pesch
# Research           | Hilary Kambil
# Sales              | Hauke Zhang


SELECT CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, d.dept_name
FROM employees as e
       JOIN dept_manager as de ON de.emp_no = e.emp_no
       JOIN departments as d ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01';

# Find the name of all departments currently managed by women.
SELECT d.dept_name
FROM employees as e
       JOIN dept_manager as de ON de.emp_no = e.emp_no
       JOIN departments as d ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
  and e.gender = 'F';

# Find the current titles of employees currently working in the Customer Service department.
# Title              | Count
# -------------------+------
# Assistant Engineer |    68
# Engineer           |   627
# Manager            |     1
# Senior Engineer    |  1790
# Senior Staff       | 11268
# Staff              |  3574
# Technique Leader   |   241


SELECT title, count(t.title)
FROM titles as t
       JOIN dept_emp as d ON d.emp_no = t.emp_no
                               AND t.to_date = d.to_date
       join departments d2 on d.dept_no = d2.dept_no
WHERE d.to_date = '9999-01-01'
  and d2.dept_name = 'Customer Service'
group by title;

# Find the current salary of all current managers.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, d.dept_name, sa.salary
FROM employees as e
       JOIN dept_manager as de ON de.emp_no = e.emp_no
       JOIN departments as d ON d.dept_no = de.dept_no
       join salaries as sa on sa.emp_no = e.emp_no
WHERE sa.to_date = '9999-01-01'
  and de.to_date = '9999-01-01';



