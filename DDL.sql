create database practice_db_3;
use practice_db_3;
CREATE TABLE Customer (
    Customer_ID INT AUTO_INCREMENT,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Mobile_Number VARCHAR(15) NOT NULL,
    CONSTRAINT pk_customer_customer_id PRIMARY KEY (Customer_ID),
    CONSTRAINT uq_customer_mobile UNIQUE (Mobile_Number)
);

CREATE TABLE Order_Table (
    Order_ID INT AUTO_INCREMENT,
    Order_Date DATE,
    Order_Amount DECIMAL(10,2),
    Customer_ID INT NOT NULL,
    CONSTRAINT pk_orders_order_id PRIMARY KEY (Order_ID),
    CONSTRAINT fk_customer FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID)
);