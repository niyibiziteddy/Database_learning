-- 1. Write a query to display the name, including first_name and last_name and salary for all employees whose 
--salary is out of the range between $10,000 and $15,000.
select first_name,last_name, salary from employees where salary not between 10000 and 15000;

-- 2. Write a query to display the name, including first_name and last_name, and department ID who works in the 
--department 30 or 100 and arrange the result in ascending order according to the department ID.
select fist_name , last_name ,department_id
from employees where department_id IN (30,100) 
order by department_id asc;

