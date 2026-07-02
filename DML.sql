USE codegnan_hyd_sanyu;

ALTER TABLE orders AUTO_INCREMENT = 201;


INSERT INTO customers (customer_id, first_name, last_name, mobile_number) VALUES
(101, 'Sanyu', 'Kumar', '9876543210'),  
(102, 'Sai', 'Ram', '9876543211'),     
(103, 'Stephen', 'Root', '9876543212'),  
(104, 'Ananya', 'Sharma', '9876543213'), 
(105, 'Rahul', 'Verma', '9876543214'), 
(106, 'Priya', 'Patel', '9876543215');  

INSERT INTO orders (order_date, order_amount, customer_id) VALUES

('2024-06-15 10:00:00', 40000.00, 101),
('2024-06-16 14:30:00', 1500.00, 101), 

('2024-07-10 11:15:00', 38000.00, 102), 
('2024-07-12 09:00:00', 2500.00, 102), 

('2023-08-20 16:45:00', 42000.00, 103), 

('2024-05-01 12:00:00', 5000.00, 104);  


SELECT * from customers;
SELECT * from orders;


SELECT 
    `c`.customer_id, `c`.first_name, `c`.last_name, `o`.order_id
FROM
    customers AS `c`
        INNER JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id;



SELECT 
    `c`.customer_id, 
    `c`.first_name,
    `c`.last_name,
    COUNT(`o`.order_id) AS total_orders
FROM customers AS `c`
INNER JOIN orders AS `o` ON `c`.customer_id = `o`.customer_id
GROUP BY `c`.customer_id, `c`.first_name, `c`.last_name
HAVING COUNT(`o`.order_id) = 1;



SELECT 
    `c`.customer_id,
    `c`.first_name,
    `c`.last_name,
    COUNT(`o`.order_id) AS total_orders
FROM
    customers AS `c`
        INNER JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id
GROUP BY `c`.customer_id , `c`.first_name , `c`.last_name
HAVING COUNT(`o`.order_id) >= 1;



SELECT 
    `c`.customer_id, `c`.first_name, `c`.last_name
FROM
    customers AS `c`
        LEFT JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id
WHERE
    `o`.order_id IS NULL;



SELECT 
    `c`.customer_id,
    `c`.first_name,
    `c`.last_name,
    `o`.order_id,
    `o`.order_amount
FROM
    customers AS `c`
        LEFT JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id;



SELECT 
    `c`.customer_id,
    `c`.first_name,
    `c`.last_name,
    `o`.order_id,
    `o`.order_amount
FROM
    customers AS `c`
        INNER JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id
WHERE
    `o`.order_date > '2025-12-31 23:11:59';
    



SELECT 
    `c`.customer_id,
    `c`.first_name,
    `c`.last_name,
    COUNT(`o`.order_id) AS total_orders
FROM
    customers AS `c`
        INNER JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id
GROUP BY `c`.customer_id , `c`.first_name , `c`.last_name;

