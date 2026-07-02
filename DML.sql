INSERT INTO customers (first_name, last_name, phone_number) VALUES ('Uday', 'Goud', '9848734172'), 
('Anil', 'Goud' '6305915005'), 
('Tony', 'Naidu', '6305915006'), 
('Ajay', 'Goud', '6305915007'),
('sai', 'Goud', '6305915008'),
('vamshi', 'Reddy', '6305915009');

# Out of 4 customer who placed orders, 2 customers have placed multiple orders, and 2 customers have placed single order each.

INSERT INTO orders (order_date, order_amount, customer_id) VALUES
('2022-02-17', 120.00, 101),
('2021-08-13', 300.50, 101),
('2025-10-29', 199.99, 102),
('2023-05-12', 460.00, 102),
('2020-04-10', 32.00, 103),
('2024-12-25', 180.00, 104);

# Find customers who have placed orders.

SELECT 
    `c`.customer_id,
    `c`.first_name,
    `c`.last_name,
    `c`.phone_number,
    `o`.order_id,
    `o`.order_date,
    `o`.order_amount
FROM
    customers AS `c`
        INNER JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id
ORDER BY `c`.customer_id;

# Find customers who have placed one order.

SELECT 
    `c`.customer_id,
    `c`.first_name,
    `c`.last_name,
    COUNT(`o`.order_id) AS `No.of Orders`
FROM
    customers AS `c`
        INNER JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id
GROUP BY `c`.customer_id , `c`.first_name , `c`.last_name
HAVING `No.of Orders` < 2
ORDER BY `c`.customer_id;

# Find customers who have placed more than one order.

SELECT 
    `c`.customer_id,
    `c`.first_name,
    `c`.last_name,
    COUNT(`o`.order_id) AS `No.of Orders`
FROM
    customers AS `c`
        INNER JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id
GROUP BY `c`.customer_id , `c`.first_name , `c`.last_name
HAVING `No.of Orders` > 1
ORDER BY `c`.customer_id;

# Find customers without orders.

SELECT 
    `c`.customer_id,
    `c`.first_name,
    `c`.last_name,
    `o`.order_id,
    `o`.order_date,
    `o`.order_amount
FROM
    customers AS `c`
        LEFT JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id
WHERE
    `o`.order_id IS NULL;

# Find customers including those without orders.

SELECT 
    `c`.customer_id,
    `c`.first_name,
    `c`.last_name,
    COUNT(`o`.order_id) AS `Total no.of orders`
FROM
    customers AS `c`
        LEFT JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id
GROUP BY `c`.customer_id , `c`.first_name , `c`.last_name;

# Find customers having orders placed after 2025.

SELECT 
    `c`.customer_id,
    `c`.first_name,
    `c`.last_name,
    `o`.order_id,
    `o`.order_date,
    `o`.order_amount
FROM
    customers AS `c`
        LEFT JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id
WHERE
    `o`.order_date >= '2022-02-17';