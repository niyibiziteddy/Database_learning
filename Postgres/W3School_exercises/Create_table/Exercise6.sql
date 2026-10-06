--Creating the table of Locations
CREATE TABLE locations(
    location_id decimal(4,0),
    street_address VARCHAR(40),
    postal_code VARCHAR(12),
    city VARCHAR(30),
    state_province VARCHAR(25),
    country_id VARCHAR(2)
)