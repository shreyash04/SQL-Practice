----- Casting -----

-- DROP TABLE students;

-- CREATE TABLE students (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR(50),
--   age INTEGER,
--   marks FLOAT(2)
-- );

-- INSERT INTO students (name, age, marks) VALUES
--   ('John', 20, 78.5),
--   ('Jane', 22, 89.2),
--   ('Peter', 21, 92.3),
--   ('Mary', 23, 86.7),
--   ('David', 19, 73.9);

-- SELECT * FROM students;

-- SELECT name, age::numeric, CAST(marks AS int)
-- FROM students;

-- SELECT '2022-01-01'::date;

-- SELECT '2022-01-01 12:30:00'::timestamp;

----- Working with Date & Datetime -----

-- DROP TABLE orders;

-- CREATE TABLE orders (
--     id SERIAL PRIMARY KEY,
--     order_date TIMESTAMP,
--     customer_name VARCHAR(255),
--     total_amount NUMERIC(10,2)
-- );

-- INSERT INTO orders (order_date, customer_name, total_amount) VALUES
-- ('2022-01-01 10:00:00', 'John Doe', 100.00),
-- ('2022-01-02 12:30:00', 'Jane Smith', 200.50),
-- ('2022-01-03 14:45:00', 'Bob Johnson', 50.25),
-- ('2022-01-04 20:15:00', 'Sara Lee', 75.80);

-- SELECT * FROM orders;

-- SELECT order_date, 
-- 	CAST(order_date AS date) AS date_of_order, 
-- 	order_date::time AS time_of_order 
-- FROM orders;

-- SELECT
--   id, order_date,
--   EXTRACT(HOUR FROM order_date) AS order_hour,
--   EXTRACT(MINUTE FROM order_date) AS order_minute,
--   EXTRACT(DAY FROM order_date) AS order_day,
--   EXTRACT(MONTH FROM order_date) AS order_month,
--   EXTRACT(YEAR FROM order_date) AS order_year
-- FROM orders;

-- SELECT id, order_date,
--   order_date AT TIME ZONE 'UTC' AT TIME ZONE 'America/Los_Angeles' AS order_date_pst
-- FROM orders;

