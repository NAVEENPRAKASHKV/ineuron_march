use march_3;

CREATE TABLE Employee (
    Emp_Id INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Salary INT,
     Manager_id int
);

INSERT INTO Employee (Emp_Id, Emp_Name, Salary,manager_id) VALUES
    (10, 'Anil', 50000,18),
    (11, 'Vikas', 75000,16),
    (12, 'Nisha', 40000,18),
    (13, 'Nidhi', 60000,17),
    (14, 'Priya', 80000,18),
    (15, 'Mohit', 45000,18),
    (16, 'Rajesh', 90000,null),
    (17, 'Raman', 55000,16),
    (18, 'Santosh', 65000,17);

SELECT manager_id, Emp_Name AS manager, AVG(Salary) AS average_salary FROM Employee GROUP BY manager_id ORDER BY manager_id ASC;



