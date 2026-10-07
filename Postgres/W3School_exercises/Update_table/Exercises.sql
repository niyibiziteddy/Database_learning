--1.Write a SQL statement to change the email column of the employees table with 'not available' for all employees.
UPDATE employees SET email = 'not available';
--2. Write a SQL statement to change the email and commission_pct column of the employees table with 'not available' and 0.10 for all employees.
UPDATE employees set email = 'not available', commission_pct = '0.10';
-- 3. Write a SQL statement to change the email and commission_pct column of the employees table with 'not available' and 0.10 for those employees whose department_id is 110.
UPDATE employees set email = 'not available', commission_pct = 0.10 WHERE department_id = 110;
-- 4. Write a SQL statement to change the email column of employees table with 'not available' for those employees whose department_id is 80 and gets a commission is less than.20%.
UPDATE employees set email = 'not available' WHERE (department_id = 80 AND commission < 0.20) 
--4. Write a SQL statement to change the email column of the employees table with 'not available' for those employees who belongs to the 'Accounting' department.
UPDATE employees set email = 'not available' 
WHERE department_id IN 
(select department_id from department where department_name = 'Accounting' );

--5. Write a SQL statement to change the salary of an employee to 8000 whose ID is 105, if the existing salary is less than 5000.
UPDATE employees set salary = 8000 where employee_id = 105 AND salary < 5000;
-- 6.  Write a SQL statement to change the job ID of the employee which ID is 118 to SH_CLERK if the employee belongs to a department which ID is 30 and the existing job ID does not start with SH.
update employees set job_id = 'SH_CLERK' 
where employee_id = 118 AND 
department_id = 30
AND job_id NOT LIKE 'SH%' ;

--7. Write a SQL statement to increase the salary of employees under the department 40, 90 and 110 according
-- to the company rules that, the salary will be increased by 25% of the department 40, 15% for department 90 
-- and 10% of the department 110 and the rest of the department will remain same.
UPDATE employees set salary
    case department_id
        when department_id = 90 then  salary + salary * 0.15,
        when department_id = 110 then set salary = salary * 0.1,
        when department_id = 40 then set salary = salary * 0.25
        else salary
    end
where department_id in (40,90,110);