----- CASE Statements -----

-- DROP TABLE employee;

-- CREATE TABLE employee (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR(50),
--   age INTEGER,
--   salary NUMERIC,
--   position VARCHAR(50)
-- );

-- INSERT INTO employee (name, age, salary, position) VALUES
-- ('John Doe', 25, 2500, 'Developer'),
-- ('Jane Smith', 30, 3500, 'Manager'),
-- ('Bob Johnson', 45, 5000, 'Director'),
-- ('Mike Brown', 22, 2000, 'Intern');

-- SELECT * FROM employee;

-- SELECT name, salary,
--   CASE
--     WHEN salary < 3000 THEN 'Low'
--     WHEN salary BETWEEN 3000 AND 4000 THEN 'Medium'
--     ELSE 'High'
--   END AS salary_category
-- FROM employee;

----- Stored Procedures -----

-- DROP TABLE sales;

-- CREATE TABLE sales (
--   id SERIAL PRIMARY KEY,
--   product_name TEXT,
--   category TEXT,
--   price NUMERIC,
--   quantity INTEGER,
--   sale_date DATE
-- );

-- INSERT INTO sales (product_name, category, price, quantity, sale_date)
-- VALUES
--   ('iPad', 'Electronics', 799, 3, '2022-01-01'),
--   ('MacBook', 'Electronics', 1299, 2, '2022-01-02'),
--   ('iPhone', 'Electronics', 699, 5, '2022-01-03'),
--   ('Samsung TV', 'Electronics', 999, 1, '2022-01-04'),
--   ('Nike Shoes', 'Apparel', 99, 10, '2022-01-05');

-- SELECT * FROM sales;

-- DROP FUNCTION get_average_price(text)

-- CREATE OR REPLACE FUNCTION get_average_price (category_name TEXT)
-- RETURNS NUMERIC
-- AS $$
-- BEGIN
-- 	RETURN (SELECT AVG(price) FROM sales 
-- 			WHERE category = category_name);
-- END;
-- $$ LANGUAGE plpgsql;

SELECT(get_average_price('Electronics'));

-- SELECT category, AVG(price)
-- FROM sales
-- GROUP BY category;












