-- use school database
USE school;

-- 1.create employee table
CREATE TABLE employee (
	employeeID INT PRIMARY KEY,
    employee_name VARCHAR(100)NOT NULL,
    age INT NOT NULL,
    department VARCHAR(100) NOT NULL,
    salary DECIMAL(7, 2) NOT NULL,
    hire_date DATE NOT NULL
);

-- 2.select specific columns
SELECT employee_name, age, salary FROM employee;

-- 3.insert records in the employee table
INSERT INTO employee(employeeID, employee_name, age , department, salary, hire_date)
	VALUES
    (1, 'Victor Imani', '30', 'IT', 55000.00, '2023-05-01'),
    (2, 'Dale Mandala', '40', 'HR', 33000.00, '2023-05-02'),
    (3, 'Anthony Malika', '35', 'Finance', 42000.00, '2023-05-03'),
    (4, 'Joe Doe', '28', 'HR', 32000.00, '2023-05-04'),
    (5, 'Rob Johnson', '42', 'Procurement', 55000.00, '2023-05-05'),
    (6, 'Kendle Caia', '25', 'Admin', 65000.00, '2023-05-06'),
    (7, 'Anne Jilks', '48', 'IT', 35000.00, '2023-05-07'),
    (8, 'Safa Wilkoks', '32', 'Procurement', 25000.00, '2023-05-08'),
    (9, 'Triz Wendy', '36', 'Finance', 40000.00, '2023-05-09'),
    (10, 'Bright Tracy', '50', 'Admin', 60000.00, '2023-05-10');

-- 4.sort the data by name, salary, and department
SELECT employee_name, salary department FROM employee
	ORDER BY salary ASC;
    
-- 5.sort the data by name, salary, and department and get the top 3 most paid
SELECT employee_name, salary department FROM employee
	ORDER BY salary DESC
    LIMIT 3;
    
-- 6.find uique departments
SELECT DISTINCT department
	FROM employee;
    
-- 7.find employees in HR or employees with salary > 30000
SELECT * FROM employee
	WHERE (department = 'HR' OR salary > 40000);
    
-- 8.find the two youngest employees and the date they were hired
SELECT employee_name, salary, department , hire_date
	FROM employee
    ORDER BY age ASC
    LIMIT 2;
    
-- find distinct departments and sort them alphabetically
SELECT DISTINCT department
	FROM employee
    ORDER BY department ASC;