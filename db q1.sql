
-- Create sample tables
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    department_id INT
);

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert sample data
INSERT INTO departments (department_name) VALUES
('HR'),
('IT'),
('Finance'),
('Marketing'),
('Sales');

INSERT INTO employees (name, department_id) VALUES
('John Doe', 1),
('Jane Smith', 2),
('Bob Johnson', 1),
('Alice Brown', 3),
('Charlie Davis', 2),
('Eva Wilson', 4),  
('Frank Miller', 1),
('Grace Moore', 5),
('Henry Allen', 2),
('Ivy Green', 4),
('Jack White', 5),
('Kelly Harris', 3),
('Leo Turner', 2),
('Mia Young', 1),
('Nick King', 5),
('Olivia Taylor', 3),
('Paul Clark', 4),
('Quinn Lee', 2),
('Rachel Harris', 1),
('Sam Turner', 5);

select name,department_name
from employees1 join departments
on employees1.department_id = departments.department_id ;

select department_name,count(*)
from employees1 join departments
on employees1.department_id = departments.department_id
GROUP by department_name;