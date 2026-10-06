-- Creating new table of jobs having check constraint.
CREATE TABLE jobs(
    job_id SERIAL PRIMARY KEY,
    job_title VARCHAR(20) NOT NULL,
    min_salary INT NOT NULL,
    max_salary INT CHECK (max_salary < 25000) NOT NULL
);