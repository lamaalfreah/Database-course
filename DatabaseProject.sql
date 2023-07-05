CREATE TABLE Student(
    UniversityID INT PRIMARY KEY,
    StudentName VARCHAR(20),
    Phone VARCHAR(10), 
    Email VARCHAR(50),
    College VARCHAR(20),
)


CREATE TABLE LRD (
    BuildingNO INT PRIMARY KEY,
    LRDName VARCHAR(30),
    AvailableLocker INT,
)

CREATE TABLE Locker (
    SerialNO INT PRIMARY KEY,
    Location_info VARCHAR(80),
    Locker_Status VARCHAR(20),
    Rental_BuildingNum INT foreign key references LRD (BuildingNO),
	Student_id INT foreign key references Student (UniversityID)
)


CREATE TABLE RentLocker (
    Student_id INT foreign key references Student (UniversityID),
    Rental_Start_Date DATE,
    Rental_End_Date DATE,
    Payment_Status VARchar(10) CHECK (Payment_Status = 'valid'),
	Rental_BuildingNum INT foreign key references LRD (BuildingNO)  
)



-- Add Students data to the database:
INSERT INTO Student(UniversityID,StudentName,Phone,Email,College)
VALUES(4250107,'Lama Alfreah', '0539294442','Tu4250107@taibahu.edu.sa','CCSE')

INSERT INTO Student(UniversityID,StudentName,Phone,Email,College)
VALUES(4152242,'Manar Althubyani','0548604346','Tu4152242@taibahu.edu.sa','CCSE')

INSERT INTO Student(UniversityID,StudentName,Phone,Email,College)
VALUES (4156892, 'Shada Aloufi', '0509349315','Tu4156892@taibahu.edu.sa', 'CCSE')

INSERT INTO Student(UniversityID,StudentName,Phone,Email,College)
VALUES (4152243, 'Shouq Alharbi', '0509722939','Tu4152243@taibahu.edu.sa', 'CCSE')

INSERT INTO Student(UniversityID,StudentName,Phone,Email,College)
VALUES(4152479,'Bshayer Rakan','0536360563','Tu4152479@taibahu.edu.sa','CCSE')

INSERT INTO Student(UniversityID,StudentName,Phone,Email,College)
VALUES(4151658,'Reham Almezini','0530103384','TU4151658@taibahu.edu.sa','CCSE')

INSERT INTO Student(UniversityID,StudentName,Phone,Email,College)
VALUES(4253618,'Asmaa Alsharif','0501670306','TU4253618@taibahu.edu.sa','CCSE')

INSERT INTO Student(UniversityID,StudentName,Phone,Email,College)
VALUES(4253563,'Danya Alhazmi','0595020244','TU4253563@taibahu.edu.sa','CCSE')

INSERT INTO Student(UniversityID,StudentName,Email,College)
VALUES(4252022,'Dana Rakan','TU4252022@taibahu.edu.sa','CCSE')

INSERT INTO Student(UniversityID,StudentName,Email,College)
VALUES(435015,'Rana Almezini','TU435015@taibahu.edu.sa','CCSE')


-- Add LRD data to the database:
INSERT INTO LRD(BuildingNO,LRDName,AvailableLocker)
VALUES(364,'LOCKER RENTAL DEPARTMENT',15)


-- Add lockers data to the database:
INSERT INTO Locker(SerialNO,Location_info,Locker_Status,Rental_BuildingNum,Student_id)
VALUES(1,'laibrary building /ground floor','RENT',364,4152242)

INSERT INTO Locker(SerialNO,Location_info,Locker_Status,Rental_BuildingNum)
VALUES(2,'laibrary building /ground floor','AVALIABLE',364)

INSERT INTO Locker(SerialNO,Location_info,Locker_Status,Rental_BuildingNum)
VALUES(3,'laibrary building /ground floor','AVALIABLE',364)

INSERT INTO Locker(SerialNO,Location_info,Locker_Status,Rental_BuildingNum,Student_id)
VALUES(4,'laibrary building /ground floor','RENT',364,4250107)

INSERT INTO Locker(SerialNO,Location_info,Locker_Status,Rental_BuildingNum,Student_id)
VALUES(5,'laibrary building /ground floor','RENT',364,4156892)

INSERT INTO Locker(SerialNO,Location_info,Locker_Status,Rental_BuildingNum)
VALUES(6,'laibrary building /ground floor','AVALIABLE',364)

INSERT INTO Locker(SerialNO,Location_info,Locker_Status,Rental_BuildingNum)
VALUES(7,'laibrary building /ground floor','AVALIABLE',364)

INSERT INTO Locker(SerialNO,Location_info,Locker_Status,Rental_BuildingNum,Student_id)
VALUES(8,'laibrary building /first floor','RENT',364,4152243)

INSERT INTO Locker(SerialNO,Location_info,Locker_Status,Rental_BuildingNum)
VALUES(9,'laibrary building /first floor','AVALIABLE',364)

INSERT INTO Locker(SerialNO,Location_info,Locker_Status,Rental_BuildingNum,Student_id)
VALUES(10,'laibrary building /first floor','RENT',364,4152479)

INSERT INTO Locker(SerialNO,Location_info,Locker_Status,Rental_BuildingNum,Student_id)
VALUES(11,'laibrary building /first floor','RENT',364,4253618)

INSERT INTO Locker(SerialNO,Location_info,Locker_Status,Rental_BuildingNum,Student_id)
VALUES(12,'laibrary building /first floor','RENT',364,4253563)

INSERT INTO Locker(SerialNO,Location_info,Locker_Status,Rental_BuildingNum,Student_id)
VALUES(13,'laibrary building /first floor','RENT',364,435015)

INSERT INTO Locker(SerialNO,Location_info,Locker_Status,Rental_BuildingNum,Student_id)
VALUES(14,'laibrary building /first floor','RENT',364,4252022)

INSERT INTO Locker(SerialNO,Location_info,Locker_Status,Rental_BuildingNum,Student_id)
VALUES(15,'laibrary building /first floor','RENT',364,4151658)


-- Rent a locker to a Student:
INSERT INTO RentLocker(Student_id,Rental_Start_Date,Rental_End_Date,Payment_Status,Rental_BuildingNum)
VALUES(4152242,'2022/08/24','2023/08/24','valid',364)

INSERT INTO RentLocker(Student_id,Rental_Start_Date,Rental_End_Date,Payment_Status,Rental_BuildingNum)
VALUES(4151658,'2023/05/12','2024/05/12','valid',364)

INSERT INTO RentLocker(Student_id,Rental_Start_Date,Rental_End_Date,Payment_Status,Rental_BuildingNum)
VALUES(4252022,'2022/12/10','2023/12/10','valid',364)

INSERT INTO RentLocker(Student_id,Rental_Start_Date,Rental_End_Date,Payment_Status,Rental_BuildingNum)
VALUES(435015,'2023/03/09','2024/03/09','valid',364)

INSERT INTO RentLocker(Student_id,Rental_Start_Date,Rental_End_Date,Payment_Status,Rental_BuildingNum)
VALUES(4152479,'2022/12/12','2023/12/12','valid',364)

INSERT INTO RentLocker(Student_id,Rental_Start_Date,Rental_End_Date,Payment_Status,Rental_BuildingNum)
VALUES(4152243,'2023/01/01','2024/01/01','valid',364)

INSERT INTO RentLocker(Student_id,Rental_Start_Date,Rental_End_Date,Payment_Status,Rental_BuildingNum)
VALUES(4156892,'2023/11/01','2024/11/01','valid',364)

INSERT INTO RentLocker(Student_id,Rental_Start_Date,Rental_End_Date,Payment_Status,Rental_BuildingNum)
VALUES(4250107,'2022/12/16','2023/12/16','valid',364)

INSERT INTO RentLocker(Student_id,Rental_Start_Date,Rental_End_Date,Payment_Status,Rental_BuildingNum)
VALUES(4253618,'2022/12/16','2023/12/16','valid',364)

INSERT INTO RentLocker(Student_id,Rental_Start_Date,Rental_End_Date,Payment_Status,Rental_BuildingNum)
VALUES(4253563,'2022/12/16','2023/12/16','valid',364)


-- Retrieve all students information: 
SELECT * FROM Student

-- Retrieve LRD information: 
SELECT * FROM LRD

-- Retrieve all Lockers information: 
SELECT * FROM Locker

-- Retrieve all RentLocker information: 
SELECT * FROM RentLocker

-- Retrieve the total rental lockers:
SELECT count(Student_id) AS 'Total rental lockers'
FROM Locker

-- Retrieve the total avaliable lockers:
SELECT count(Locker_Status) AS 'Total avaliable lockers'
FROM Locker
WHERE Locker_Status = 'AVALIABLE'


-- Update some student information in the database
UPDATE Student
SET Phone = '0504367771'
WHERE UniversityID = 4250107

UPDATE Student
SET Phone = '0538764791'
WHERE UniversityID = 4253618

-- Retrieve all students information: 
SELECT * FROM Student


-- Renew a locker rental for a Student
UPDATE RentLocker
SET Rental_End_Date = '2024-12-16'
WHERE Student_id = 4250107 


-- Retrieve all RentLocker information: 
SELECT * FROM RentLocker


-- Terminate a locker rental for a Student
DELETE FROM RentLocker 
WHERE Student_id = 4152243 

-- Update locker information in the database
UPDATE Locker
SET Locker_Status = 'AVALIABLE', Student_id = NULL
WHERE Student_id = 4152243 

-- Retrieve all Lockers information: 
SELECT * FROM Locker

-- Retrieve all RentLocker information: 
SELECT * FROM RentLocker

-- Retrieve the total rental lockers:
SELECT count(Student_id) AS 'Total rental lockers'
FROM Locker

-- Retrieve the total avaliable lockers:
SELECT count(Locker_Status) AS 'Total avaliable lockers'
FROM Locker
WHERE Locker_Status = 'AVALIABLE'


