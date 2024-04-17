-- SHOW search_path;

-- CREATE TABLE customers (
--     customer_id SERIAL PRIMARY KEY,
--     customer_name VARCHAR(50) NOT NULL,
--     customer_email VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE orders (
--     order_id SERIAL PRIMARY KEY,
--     customer_id INTEGER NOT NULL,
--     order_date DATE NOT NULL,
--     order_amount DECIMAL(10,2) NOT NULL
-- );

-- INSERT INTO customers (customer_name, customer_email) VALUES
--     ('John Doe', 'johndoe@example.com'),
--     ('Jane Smith', 'janesmith@example.com'),
--     ('Bob Johnson', 'bobjohnson@example.com');

-- INSERT INTO orders (customer_id, order_date, order_amount) VALUES
--     (1, '2021-01-01', 50.00),
--     (1, '2021-02-01', 75.00),
--     (2, '2021-02-15', 125.00),
--     (3, '2021-03-01', 200.00);

-- SELECT * FROM customers;
-- SELECT * FROM orders;

-- Subquery example
-- SELECT customer_name
-- FROM customers
-- WHERE customer_id IN (SELECT customer_id FROM orders WHERE order_amount > 100);


-- Retrieve the customer_name, email, and the total number of orders they have placed
SELECT customer_name, customer_email,
(SELECT COUNT(*) FROM orders WHERE orders.customer_id = C.customer_id) as total_orders,
(SELECT SUM(order_amount) FROM orders WHERE orders.customer_id = C.customer_id) as total_order_amount
FROM customers C;










