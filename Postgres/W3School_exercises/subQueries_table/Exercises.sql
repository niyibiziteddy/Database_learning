-- 1. Write a query to find the first_name, last_name and salaries of the employees who have a higher salary than
-- the employee whose last_name is Bull.
select first_name,last_name ,salary
from employees
where salary > (select salary from employees where last_name = 'Bull') 
-- 3. Write a SQL subquery to find the first_name and last_name of the employees under a manager who works 
-- for a department based in the United States.
--This answer is from the question source

SELECT first_name, -- Selects the first_name column from the employees table
       last_name -- Selects the last_name column from the employees table
FROM employees -- Specifies the table from which to retrieve data, in this case, the employees table
WHERE manager_id IN ( -- Filters the rows to include only those where the manager_id matches an employee_id
        SELECT employee_id -- Subquery: Selects the employee_id of managers located in the US
        FROM employees 
        WHERE department_id IN ( -- Filters managers based on the department_id
                SELECT department_id -- Subquery: Selects the department_id of departments located in the US
                FROM departments 
                WHERE location_id IN ( -- Filters departments based on the location_id
                        SELECT location_id -- Subquery: Selects the location_id of locations in the US
                        FROM locations 
                        WHERE country_id = 'US' -- Filters locations based on the country_id, 'US'
                    )
            )
    );


-- 4 .  Write a SQL subquery to find the first_name and last_name of the employees who are working as a manager.
select first_name,last_name
from employees 
where employee_id in(select distinct manager_id from employees);

-- 5 . Write a SQL subquery to find the first_name, last_name and salary, which is greater 
-- than the average salary of the employees.
select first_name, last_name,salary
from employees 
where salary > (select avg(salary) from employees);

-- 6 .  Write a SQL subquery to find the employee ID, first name, last name and salary of all employees 
-- whose salary is above the average salary for their departments.
select first_name, last_name, salary
from employees e1
where salary > (select avg(salary) from employees e2 where e1.department_id = e2.department_id )