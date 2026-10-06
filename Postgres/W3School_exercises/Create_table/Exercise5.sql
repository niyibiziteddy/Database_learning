/*Write a SQL statement to create a table job_history including columns employee_id, start_date, end_date,
 job_id and department_id and make sure that, the employee_id column does not contain any duplicate value at 
 the time of insertion and the foreign key column job_id contain only those values which exist in the jobs table.*/

 CREATE TABLE job_history (
    employee_id UNIQUE PRIMARY KEY,
    start_date DATE DEFAULT TIMESTAMP,
    end_date DATE DEFAULT TIMESTAMP,
    job_id INT(10) NOT NULL,
    FOREIGN KEY (job_id)
    REFERENCES jobs(job_id)
 );