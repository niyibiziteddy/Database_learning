CREATE TABLE countries(
    country_id SERIAL PRIMARY KEY,
    country_name VARCHAR(50) NOT NULL,
    region_id INT NOT NULL
)