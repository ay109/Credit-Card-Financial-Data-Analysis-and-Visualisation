-- Creating a Database for Credit Card details named "ccdb"

CREATE DATABASE ccdb;

-- To make tables in the database ccdb using USE command to select the database "ccdb"

USE ccdb;

-- Creating our 1st table in the database for storing credit card details named "cc_detail"

CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

-- Creating another table in the database for storing customer details named "cust_details"

CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

-- Having a look at the tables made

SELECT *
FROM cust_detail;

-- Importing Data to SQL database from CSV files

	LOAD DATA INFILE 'C:/credit_card.csv' 
	INTO TABLE cc_detail
	FIELDS TERMINATED BY ','
	IGNORE 1 LINES;
    
	LOAD DATA INFILE 'C:/customer.csv' 
	INTO TABLE cust_Detail
	FIELDS TERMINATED BY ','
	IGNORE 1 LINES;
    
    SELECT * FROM cc_detail;
    
    -- Updating the new data into the tables
    
    LOAD DATA INFILE 'C:/cc_add.csv' 
	INTO TABLE cc_detail
	FIELDS TERMINATED BY ','
	IGNORE 1 LINES;
    
    LOAD DATA INFILE 'C:/cust_add.csv' 
	INTO TABLE cust_Detail
	FIELDS TERMINATED BY ','
	IGNORE 1 LINES;
    
    

