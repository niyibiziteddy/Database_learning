-- 1. Write a query to make a join with employees and departments table to find the name of the employee, 
-- including first_name and last name, department ID and name of departments.
select e.first_name,e.last_name,d.department_id,d.department_name
from employees e inner join departments d on e.department_id = d.department_id
--or

select first_name,last_name,department_id,department_name
from employees inner join departments using (department_id)

-- 2.  Write a query to make a join with two tables employees and itself to find the employee id, last_name as 
-- Employee along with their manager_id and last name as Manager.
select e.last_name as name,
e.employee_id as emp_id,
m.last_name as manager name,m.employee_id as manager_id
From employee e join employee m 
on e.manager_id = m.employee_id;

-- 3.  Write a query to make a join with a table employees and itself to find the name, 
-- including first_name and last_name and hire date for those employees who were hired after the employee Jones.
select e.first_name as "first name",
e.last_name as "last name",
e.hire_date as "hire date"
from employee e 
join employee h
on e.employee_id = h.employee_id
where e.hire_date > (select hire_date from employee where first_name = 'Jones');

-- 4. Write a query to make a join with two tables employees and departments to get the department
-- name and number of employees working in each department.
select department_name, count(*) as "number of Employees"
from employee join departments using (department_id)
group by department_name
order by department_name asc;

-- 5.  Write a query to make a join to find the employee ID, job title and number of days an employee worked, 
-- for all the employees who worked in a department which ID is 90.
select employee_id,end_date - start_date Days
from job_history join jobs using (job_id)
where department_id = 90;

-- 6. Write a query to make a join with two tables employees and departments to display the department ID,
-- department name and the first name of the manager.
select d.department_id, d.department_name, e.first_name,e.manager_id
from departments d join employees e on (d.manager_id = e.employee_id);

-- 7. Write a query to make a join with three tables departments, employees, and locations to display the 
-- department name, manager name, and city.
select d.department_name as "department name",
e.first_name ||' '|| e.last_name as "full name",
l.city as "manager city"
from employees e join 
departments d on e.employee_id = d.manager_id
join locations l on d.location_id = l.location_id;

