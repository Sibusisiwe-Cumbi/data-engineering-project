/*
Stored Procedure: Load Bronze Layer
Script Purpose:

    This stored procedure prepares the Bronze Layer for loading source data.


    It performs the following actions:

    - Truncates the Bronze tables before loading new data.

    - Records the start and end time of the Bronze Layer preparation.


Loading Method:

    The original project uses BULK INSERT to load CSV files into the Bronze

    Layer. Since this project is implemented using MySQL, the CSV data was

    loaded using the MySQL Load Wizard.


    The Load Wizard was used because the file-loading commands were not

    working correctly on the PC. The Bronze tables were truncated before

    loading the data, following the same overall process documented in this

    procedure.


    MySQL does not allow LOAD DATA INFILE to be used inside a stored

    procedure, so the CSV loading is performed separately using Load Wizard.


CSV File Location:

    C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/


Parameters:

    None.

    This stored procedure does not accept any parameters or return any values.


Usage Example:

    CALL bronze.load_bronze();

*/


USE bronze;

TRUNCATE TABLE bronze.crm_cust_info;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cust_info.csv'
INTO TABLE bronze.crm_cust_info
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE TABLE bronze.crm_prd_info;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/prd_info.csv'
INTO TABLE bronze.crm_prd_info
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE TABLE bronze.crm_sales_details;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sales_details.csv'
INTO TABLE bronze.crm_sales_details
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE TABLE bronze.erp_loc_a101;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/loc_a101.csv'
INTO TABLE bronze.erp_loc_a101
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE TABLE bronze.erp_cust_az12;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cust_az12.csv'
INTO TABLE bronze.erp_cust_az12
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE TABLE bronze.erp_px_cat_g1v2;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/px_cat_g1v2.csv'
INTO TABLE bronze.erp_px_cat_g1v2
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;
