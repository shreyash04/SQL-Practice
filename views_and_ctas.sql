----- VIEWS -----

-- DROP TABLE customers;
-- DROP TABLE orders;

-- CREATE TABLE customers (
--     customer_id INT PRIMARY KEY,
--     first_name TEXT,
--     last_name TEXT
-- );

-- CREATE TABLE orders (
--     order_id INT PRIMARY KEY,
--     customer_id INT,
--     order_date DATE,
--     item TEXT,
--     quantity INT,
--     price NUMERIC(10,2)
-- );

-- INSERT INTO customers (customer_id, first_name, last_name)
-- VALUES (101, 'John', 'Doe');

-- INSERT INTO orders (order_id, customer_id, order_date, item, quantity, price)
-- VALUES (1, 101, '2022-01-01', 'Shoes', 2, 50);

-- SELECT * FROM customers;
-- SELECT * FROM orders;

-- CREATE VIEW customer_orders_view AS (
-- SELECT customers.customer_id, first_name, last_name, order_date, item, quantity, price
-- FROM customers
-- JOIN orders ON customers.customer_id = orders.customer_id);

----- CTAS -----

-- DROP TABLE employees;

-- CREATE TABLE employees (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR(50) NOT NULL,
--   department VARCHAR(50) NOT NULL,
--   salary INTEGER NOT NULL
-- );

-- INSERT INTO employees (name, department, salary) VALUES
-- ('John Doe', 'Sales', 50000),
-- ('Jane Smith', 'Marketing', 60000),
-- ('Bob Johnson', 'Finance', 70000),
-- ('Karen Williams', 'Sales', 55000),
-- ('Mike Johnson', 'Marketing', 65000),
-- ('Sarah Lee', 'Finance', 75000);

-- SELECT * FROM employees;

-- CREATE TABLE salary_grt_70k AS (
-- 	SELECT * FROM employees
-- 	WHERE salary > 70000
-- );

-- SElECT * FROM salary_grt_70k;













