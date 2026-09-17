/*
script purpose: create new database "datawarehouse" after checking if it already exists. Sets up three schemas
within the database: bronze, silver, gold.
*/
DROP DATABASE IF EXISTS datawarehouse;
CREATE DATABASE datawarehouse;
USE datawarehouse;

DROP DATABASE IF EXISTS bronze;
DROP DATABASE IF EXISTS silver;
DROP DATABASE IF EXISTS gold;
CREATE DATABASE bronze;
CREATE DATABASE silver;
CREATE DATABASE gold;
