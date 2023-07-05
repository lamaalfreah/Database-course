/*
1. Create two tables in the database.
2. Retrieve e_name ,d_no from Employee and d_name from department by Inner ,left and right join?
3. Retrieve the employees that work in department CS.
4. Retrieve the manager of department where the employee Noor works.
*/

 CREATE TABLE Employee (
   employee_no INT PRIMARY KEY,
   e_name VARCHAR(20),
   Salary INT,
   phone VARCHAR(10),
   d_no INT
)

CREATE TABLE Department (
   d_no INT PRIMARY KEY,
   d_name VARCHAR(20),
   manager_no INT
)

INSERT INTO Employee VALUES 
(1456, 'Ahmad', 4000, '0555558888', 1),
(1457, 'Khaled', 4500, '0555553333', 2),
(1458, 'Ahmad', 3000, '0555554444', 3),
(1459, 'Mohamed', 6000, '0555555777', 4),
(1460, 'Noor', 5000, '0555553334', 2),
(1461, 'Waleed', 7000, '0555553222', NULL)

INSERT INTO Department VALUES 
(1, 'CS', 1457),
(2, 'IS', 1459),
(3, 'SE', 1444),
(4, 'NT', 1433),
(5, 'SS', 1411)

/*Inner Join:*/
SELECT Employee.e_name ,Employee.d_no ,Department.d_name 
FROM Employee 
INNER JOIN Department 
ON Employee.d_no = Department.d_no

/*Left Join:*/
SELECT Employee.e_name ,Employee.d_no ,Department.d_name 
FROM Employee 
LEFT JOIN Department 
ON Employee.d_no = Department.d_no

/*Right Join:*/
SELECT Employee.e_name ,Employee.d_no ,Department.d_name 
FROM Employee 
RIGHT JOIN Department 
ON Employee.d_no = Department.d_no

SELECT e_name FROM Employee 
WHERE d_no = (SELECT d_no FROM Department WHERE d_name = 'CS')

SELECT e_name FROM Employee 
WHERE employee_no = (SELECT manager_no FROM Department WHERE d_no = (SELECT d_no FROM Employee WHERE e_name = 'Noor'))




