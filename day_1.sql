-- create database
create database school;

-- use the created database
Use school;

-- create table
CREATE TABLE Students (
StudentID INT PRIMARY KEY,
FirstName VARCHAR(100) NOT NULL,
LastName VARCHAR(100),
Age INT check (Age > 18),
Email  VARCHAR(255) NOT NULL UNIQUE
);

-- add values into table
INSERT INTO Students (StudentID, FirstName, LastName, Age, Email)
values (1 , 'John' , 'Doe','20' ,'john.dor@example.com'),
(2, 'Jane', 'Smith' , '22', 'jane.smith@example.com'),
(3, 'Michael' ,'Brown' ,'19',  'michael.brown@example.com');

-- display table details
SELECT * FROM  Students;

-- alter the table
-- 1. Add a new column named EnrollmentDate
-- 2. Add the max length to 300 characters
-- 3. Drop column LastName
ALTER TABLE Students
  ADD COLUMN EnrollmentDate DATE,
  MODIFY COLUMN Email  VARCHAR (300) NOT NULL UNIQUE,
  DROP COLUMN LastName;
