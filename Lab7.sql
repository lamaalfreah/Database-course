/* 1- Create the following table(Std_grades) in new Database lab7_2022
2- Display the student information who’s mark > the average .
3- Count the number of student and name it Count.
4- Create a view that display the student ID if they get A+ and display it.
5- Display the first and last name for student that had the minimum mark.*/ 

CREATE TABLE Std_grades (
ID INT PRIMARY KEY,
Fname VARCHAR(20),
Lname VARCHAR(20),
mark INT
)

INSERT INTO Std_grades VALUES 
(0615, 'Amera', 'Majed', 98),
(0513, 'Wafa', 'Ahmad' , 56),
(0713, 'Abeer', 'salem', 96),
(0533, 'ohood', 'Ahmad', 86)

SELECT * FROM  Std_grades WHERE mark > (SELECT AVG (mark) FROM  Std_grades)

SELECT COUNT(*) AS count FROM Std_grades

CREATE VIEW V1 AS SELECT ID FROM Std_grades WHERE mark > 95 

SELECT *  FROM  V1 

SELECT Fname , Lname FROM  Std_grades WHERE mark=(SELECT MIN (mark) FROM  Std_grades)