--1. Write a query to find the number of jobs available in the employees table.
select count(distinct job_id) as job_number from employees;
--2. Write a query to get the number of employees working in each post.
select job_id, count(job_id) from employees group by job_id order by;
--3.  Write a query to find the manager ID and the salary of the lowest-paid employee under that manager.
select manager_id,first_name,last_name 
from employees
group by manager_id
having min(salary)
order by manager_id;