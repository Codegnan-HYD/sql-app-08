USE codegnan_hyd_sanyu;

DROP TABLE customers;

CREATE TABLE customers (
    customer_id INT,
    first_name CHAR(100) NOT NULL,
    last_name CHAR(100) NOT NULL,
    mobile_number CHAR(10) UNIQUE NOT NULL,
    CONSTRAINT `pk_customers_customer_id` PRIMARY KEY (customer_id)
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT,
    order_date DATETIME NOT NULL,
    order_amount DECIMAL(10 , 2 ) NOT NULL,
    customer_id INT NOT NULL,
    CONSTRAINT `pk_orders_order_id` PRIMARY KEY (order_id),
    CONSTRAINT `fk_orders_customer_id` FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);
