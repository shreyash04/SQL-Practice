-- CREATE TABLE sales_data (
--     id SERIAL PRIMARY KEY,
--     date DATE,
--     item TEXT,
--     units_sold INTEGER,
--     price_per_unit NUMERIC(10, 2)
-- );

-- INSERT INTO sales_data (date, item, units_sold, price_per_unit)
-- VALUES
--     ('2021-01-01', 'apple', 10, 1.50),
--     ('2021-01-02', 'banana', 20, 0.75),
--     ('2021-01-03', 'orange', 15, 1.00),
--     ('2021-01-04', 'apple', 12, 1.50),
--     ('2021-01-05', 'banana', 18, 0.75),
--     ('2021-01-06', 'orange', 20, 1.00),
--     ('2021-01-07', 'apple', 8, 1.50),
--     ('2021-01-08', 'banana', 22, 0.75),
--     ('2021-01-09', 'orange', 10, 1.00);

-- SELECT * FROM sales_data;

-- SELECT item, units_sold,
-- RANK() OVER (ORDER BY units_sold DESC) AS rank_of_units,
-- DENSE_RANK() OVER (ORDER BY units_sold DESC) AS dense_rank_of_units,
-- ROW_NUMBER() OVER (ORDER BY units_sold ASC) AS row_number_of_units
-- FROM sales_data;

SELECT item, units_sold, 
LAG(units_sold) OVER (ORDER BY date) AS units_sold_yesterday,
LEAD(units_sold) OVER (ORDER BY date) AS units_sold_the_next_day
FROM sales_data;








