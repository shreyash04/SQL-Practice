-- CREATE TABLE employees (
--     employee_id INTEGER ,
--     employee_name TEXT ,
--     employee_salary NUMERIC(10, 2)
-- );

-- SELECT * FROM employees;

-- ALTER TABLE employees ALTER COLUMN employee_name SET NOT NULL;
-- ALTER TABLE employees ALTER COLUMN employee_salary SET NOT NULL;
-- ALTER TABLE employees ADD CONSTRAINT unique_emplyee UNIQUE (employee_name);
-- ALTER TABLE employees ADD CONSTRAINT check_slary check (employee_salary>5000);

-- INSERT INTO employees (employee_id, employee_name, employee_salary) VALUES
-- (1, 'Shrey', 30000);

-- SELECT * FROM users;

-- ANSWER 1:
-- ALTER TABLE users RENAME COLUMN email_to TO user_email;

-- ANSWER 2:
-- ALTER TABLE users ADD COLUMN phone VARCHAR(20);

-- ANSWER 3:
-- ALTER TABLE users DROP COLUMN phone;

-- ANSWER 4:
-- ALTER TABLE users ALTER COLUMN age TYPE SMALLINT;

-----------------------

-- CREATE TABLE students (
--   id int PRIMARY KEY,
--   name varchar(50),
--   age int,
--   gender varchar(10)
-- );

-- SELECT * FROM students;

-- INSERT INTO students (id, name, age, gender) VALUES
-- (1, 'Shrey', 23, 'Male');

-- CREATE TABLE courses (
-- 	id int PRIMARY KEY	,
-- 	name varchar(50),
-- 	duration int
-- );

-- DROP TABLE students;

-- CREATE TABLE students (
-- 	id int PRIMARY KEY,
-- 	name varchar(50),
-- 	age int,
-- 	gender varchar(10),
-- 	course_id int,
-- 	FOREIGN KEY (course_id) REFERENCES courses(id) 
-- );


-- INSERT INTO courses(id, name, duration) VALUES
-- (1, 'Math', 22);

-- INSERT INTO students (id, name, age, gender, course_id) VALUES
-- (1, 'Shrey', 23, 'Male', 1);

-- SELECT * FROM courses;
-- SELECT * FROM students;




















