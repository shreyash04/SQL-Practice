-- CREATE TABLE new_employee (
--     emp_id SERIAL PRIMARY KEY,
--     emp_name VARCHAR(50),
--     emp_manager_id INTEGER
-- );

-- INSERT INTO new_employee (emp_name, emp_manager_id) VALUES
-- ('John', NULL),
-- ('Jane', 1),
-- ('Bob', 2),
-- ('Alice', 2),
-- ('Mike', 3);

-- SELECT * FROM new_employee;

-- SELECT 
-- E1.emp_id, E1.emp_name, E1.emp_manager_id, E2.emp_name AS managed_by
-- FROM new_employee AS E1
-- LEFT JOIN new_employee AS E2 
-- ON E1.emp_manager_id = E2.emp_id;

--------------------

-- CREATE TABLE Ecommerce (
--     order_id SERIAL PRIMARY KEY,
--     user_id INTEGER,
--     product VARCHAR(50)
-- );

-- INSERT INTO Ecommerce (user_id, product) VALUES
-- (1, 'Shoes'),
-- (2, 'T-Shirt'),
-- (3, 'Jeans'),
-- (1, 'Socks'),
-- (2, 'Pants'),
-- (1, 'Hat');

-- SELECT * FROM Ecommerce ORDER BY user_id;

-- SELECT E1.user_id, COUNT(E1.order_id)
-- FROM Ecommerce E1 
-- GROUP BY user_id ORDER BY user_id;

--------------------

-- CREATE TABLE Student (
--     student_id SERIAL PRIMARY KEY,
--     student_name VARCHAR(50),
--     student_class VARCHAR(10),
--     student_teacher VARCHAR(50)
-- );

-- INSERT INTO Student (student_name, student_class, student_teacher) VALUES
-- ('John', '10A', 'Mr. Smith'),
-- ('Jane', '10B', 'Mrs. Jones'),
-- ('Bob', '10A', 'Mr. Smith'),
-- ('Alice', '10B', 'Mrs. Jones'),
-- ('Mike', '10C', 'Mr. Brown');

-- SELECT * FROM Student ORDER BY student_teacher;

-- SELECT S1.student_name, S2.student_name, S1.student_teacher
-- FROM Student S1
-- LEFT JOIN Student S2 ON S1.student_teacher = S2.student_teacher AND S1.student_id != S2.student_id;



















