USE cdg_hyd;
# Create tables in the database.

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT,
    first_name CHAR(100) NOT NULL,
    last_name CHAR(100) NOT NULL,
    mobile_number CHAR(10) NOT NULL,
    CONSTRAINT `pk_customers_customer_id` PRIMARY KEY (customer_id),
    CONSTRAINT `uq_customers_mobile_number` UNIQUE (mobile_number)
);

DESCRIBE customers;

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT,
    order_date DATETIME NOT NULL,
    order_amount DECIMAL(10 , 2 ) NOT NULL,
    customer_id INT NOT NULL,
    CONSTRAINT `pk_orders_order_id` PRIMARY KEY (order_id),
    CONSTRAINT `fk_customers_customer_id` FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
);

DESCRIBE orders;

ALTER TABLE customers AUTO_INCREMENT=101;
ALTER TABLE orders AUTO_INCREMENT=201;