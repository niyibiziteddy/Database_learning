/*Write a SQL statement to create a table named countries2 including columns country_id, 
country_name and region_id and make sure that no countries except Italy, 
India and China will be entered in the table.*/

-- CREATE TABLE countries2(
--     country_id VARCHAR(3) PRIMARY KEY,
--     country_name VARCHAR (30) 
--     CHECK (country_name != 'Italy' OR country_name != 'India' OR country_name != 'China') NOT NULL,
--     region_id VARCHAR (3) NOT NULL
-- );

ALTER TABLE countries2 DROP CONSTRAINT countries2_country_name_check, 
ADD CONSTRAINT country_name_check CHECK (country_name IN ('Italy','China','India'));