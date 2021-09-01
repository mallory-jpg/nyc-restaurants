CREATE DATABASE codeacademy;
USE codeacademy;

CREATE TABLE `nomnom` (
    name TEXT,
    neighborhood TEXT,
    cuisine TEXT,
    review DECIMAL, -- needs to be decimal, not INT
    price TEXT,
    health TEXT
);

-- insert info into postgresdb
COPY nomnom(name, neighborhood, cuisine, review, price, health)
FROM '/Users/mallory/Desktop/DataEngineering/CodeAcademyProjects/SQL/NYRestaurants/CodeAcademyNYRestaurants.csv'
DELIMITER ','
CSV HEADER ;

ALTER TABLE nomnom
ALTER COLUMN review TYPE DECIMAL;

-- check it out
SELECT *
FROM nomnom;