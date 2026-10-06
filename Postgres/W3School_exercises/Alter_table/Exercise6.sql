--Write a SQL statement to drop the existing primary from the table locations on a combination of columns location_id and country_id.

ALTER TABLE locations
DROP CONSTRAINT locations_pkey;