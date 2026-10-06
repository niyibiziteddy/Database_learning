--Write a SQL statement insert rows from the country_new table to countries table.
INSERT INTO countries SELECT* FROM country_new;