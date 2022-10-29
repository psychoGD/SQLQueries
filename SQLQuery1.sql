--CREATE DATABASE Test
--Go 
--USE Test

--Create TABLE Departments(
--[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
--[Financing] MONEY NOT NULL DEFAULT 0,
--[Name] NVARCHAR(100) NOT NULL,
--UNIQUE(Name),
--CHECK(Name!=' ') ,
--CHECK(Financing>0)
--)

--CREATE TABLE Faculties(
--[Id] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
--[Dean] NVARCHAR(MAX) NOT NULL,
--[Name] NVARCHAR(100) NOT NULL ,
--UNIQUE(Name),
--CHECK(Name!=' '),
--CHECK(Dean!=' '),
--)


--CREATE TABLE Groups(
--[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
--[Name] NVARCHAR(10) NOT NULL,
--[Rating] INT NOT NULL ,
--[Year] INT NOT NULL,
--CHECK([Year] BETWEEN 1 AND 5), 
--CHECK(Rating BETWEEN 0 AND 5),
--UNIQUE(Name),
--CHECK(Name!=' ')
--)

--CREATE TABLE Teachers(
--[Id] INT IDENtiTY(1,1) NOT NULL PRIMARY KEY,
--[EmploymentDate] Date NOT NULL,
--[IsAsistan] BIT NOT NULL DEFAULT 0,
--[IsProfessor] BIT NOT NULL DEFAULT 0,
--[Name] NVARCHAR(MAX) NOT NULL,
--[Position] NVARCHAR(MAX) NOT NULL ,
--[Premium] MONEY NOT NULL DEFAULT 0,
--[Salary] MONEY NOT NULL ,
--[Surname] NVARCHAR(MAX) NOT NULL,
--CHECK(Surname!=' '),
--CHECK(Salary>0),
--CHECK(Premium>0),
--CHECK(Position!=' '),
--CHECK(Name!=' '),
--CHECK(EmploymentDate>'01.01.1990')
--)

--INSERT INTO Departments([Name],[Financing])
--VALUES ('a320',30000),
--('b321',50000),
--('c322',435),
--('f323',435)

--TRUNCATE TABLE Departments 
--INSERT INTO Teachers([EmploymentDate],[IsAsistan],[IsProfessor],[Name],[Position],[Premium],[Salary],[Surname])
--VALUES ('2018-06-23',1,0,'Memmed','bas leytnant',20.5,400.67,'Memmedov'),
--('2016-03-25',0,1,'Ismayil','Kapitan',30.5,1600.67,'Ismayilov'),
--('2013-05-12',0,1,'Lazim','kicik leytnant',10.5,2000.67,'Lazimov')

--INSERT INTO Faculties([Dean],[Name])
--VALUES ('Rauf','Programmer'),
--('Mehman','WineMaking'),
--('Fuad','Accounting'),
--('Rufet','Pilot')

--INSERT INTO Groups([Name],[Rating],[Year])
--VALUES ('3212AF',4,2),
--('2143CA',3,3),
--('4567RF',2,1),
--('8453PS',1,4)
--1. Print departments table but arrange its fields in the reverse order
--SELECT *
--FROM Departments
--ORDER BY Id desc

--2. Print group names and their ratings using “Group Name” and “Group Rating”, respectively, as names of the fields
--SELECT [Name],[Rating] AS 'Group Name','Group Rating'
--FROM Groups

-- 3. Print for the teachers their surname, percentage of wage rate 
--  to premium ratio and percentage of wage rate to the salary ratio
--  (the amount of wage rate and premium).
-- ?


-- 4 . Print the faculty table as a single field in the following format: 
-- "The dean of faculty [faculty] is [dean]".

--SELECT 'The Dean Of Faculty '+ Name+' is '+Dean
--FROM Faculties 

--5. Identify names of the teachers who are professors and whose
--wage rate exceeds 1050.

--SELECT Name
--FROM Teachers AS T
--WHERE T.IsProfessor=1 AND T.Salary>1050


--6. Print names of the departments whose funding is less than
--11,000 or more than 25,000.

--SELECT Name
--FROM Departments
--WHERE Departments.Financing<11000 or Departments.Financing>25000

--7. Print names of faculties other than Computer Science.

--SELECT *
--FROM Faculties
--WHERE Faculties.Name != 'Computer Science'


--8. Print names and positions of teachers who are not professors.

--SELECT Name,Position
--FROM Teachers
--WHERE IsProfessor=0

--9. Print surnames, positions, wage rates, and premia of assistants
--whose premium is in the range from 160 to 550.

--SELECT Surname,Position,Salary,Premium
--FROM Teachers
--WHERE Premium BETWEEN 160 AND 550


--10.Print surnames and wage rates of assistants.

--SELECT Surname,Salary
--FROM Teachers
--WHERE IsAsistan=1


--11.Print surnames and positions of the teachers who were hired
--before 01.01.2000.



--12.Print names of the departments in alphabetical order up
--to  the  Software Development Department. The output field
--should be named "Name of Department".


--13.Print names of the assistants whose salary (amount of wage
--rate and premium) is not more than 1200.
--1
--Homework 3
--14.Print names of groups of the 5th year whose rating is in the range
--from 2 to 4.
--15.Print names of assistants whose wage rate is less than 550 or
--premium is less than 200.