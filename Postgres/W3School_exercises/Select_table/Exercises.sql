-- 1. Write a query to display the names (first_name, last_name) using an alias name “First Name", "Last Name".
select first_name as 'First Name', last_name as 'Last Name' from employees;  
-- 2. Write a query to get the details of all employees from the employee table in descending order by their first name.
select * from employees order by first_name desc;
-- 3. Write a query to get the names (first_name, last_name), salary and 15% of salary as PF for all the employees.
select first_name, last_name, salary, salary*0.15 as PF from employees;
-- 4.  Write a query to get the employee ID, names (first_name, last_name) and salary in ascending order according to their salary.
select employee_id, first_name || ' ' || last_name as Names , salary from employees order by salary asc;