CREATE DATABASE Asignment2_AI1604_KhangNH_Lecturer_SonNT
USE Asignment2_AI1604_KhangNH_Lecturer_SonNT
-- Drop DATABASE Asignment2_AI1604_KhangNH_Lecturer_SonNT
-- Lecturer table
CREATE TABLE Lecturers(
	LID INT IDENTITY(1,1) PRIMARY KEY,
	LImage VARBINARY(MAX),
	Email VARCHAR(255)
);

-- Fake data into lecturer table
INSERT INTO Lecturers(LImage,Email) VALUES (00112111 ,'Sonnt@fpt.edu.vn')
INSERT INTO Lecturers(LImage,Email) VALUES (0011121233411 ,'Sonnt5@fpt.edu.vn')
INSERT INTO Lecturers(LImage,Email) VALUES (0011121233411 ,'TuNT57@fpt.edu.vn')
INSERT INTO Lecturers(LImage,Email) VALUES (0011211123 ,'phake1@fpt.edu.vn')

-- Lecturer name table
CREATE TABLE LecturerName(
	LID INT,
	SurName VARCHAR(255),
	MiddleName VARCHAR(255),
	GivenName VARCHAR(255)
);


-- Fake data into Lecturer name table
INSERT INTO LecturerName(LID, SurName, MiddleName, GivenName) VALUES (1, 'Ngo', 'Tung', 'Son');
INSERT INTO LecturerName(LID, SurName, MiddleName, GivenName) VALUES (2, 'Ngo', 'Tung', 'Son');
INSERT INTO LecturerName(LID, SurName, MiddleName, GivenName) VALUES (3, 'Nguyen', 'Thi Thanh', 'Tu');
-- Add contraint Foreign key
ALTER TABLE LecturerName
ADD FOREIGN KEY (LID) REFERENCES Lecturers(LID)

-- Create department table
CREATE TABLE Departments(
	DID INT IDENTITY(1,1) PRIMARY KEY,
	DName VARCHAR(255),
	DEmail VARCHAR(255),
	DLocation VARCHAR(255)
);

-- fake data into department table
INSERT INTO Departments(DName, DEmail, DLocation) VALUES ('Computing Fundamental', 'ComputingFundamental@fpt.edu.vn', '102L'); 
INSERT INTO Departments(DName, DEmail, DLocation) VALUES ('Computer Science', 'ComputerScience@fe.edu.vn', '102R');
INSERT INTO Departments(DName, DEmail, DLocation) VALUES ('Artificial Intelligence', 'ArtificialIntelligence@fpt.edu.vn', '103L'); 
INSERT INTO Departments(DName, DEmail, DLocation) VALUES ('GraphicDesign', 'GraphicDesign@fpt.edu.vn', '105L'); 

-- The First relation ship in this DB: Lecturer and Department, sometime it is one to many: a deparment have mary lecturer. 
-- But in this case, I think it's is many to many relationship. I have create a relation ship is many to many relation ship.
-- Because, I think my lecturer (Mr SonNT) can work for more than one department each semester.

CREATE TABLE LecturerInDepartment(
	LID INT,
	DID INT,
	StartDate date,
	EndDate date
);

-- Create contraint FK
ALTER TABLE LecturerInDepartment
ADD FOREIGN KEY (LID) REFERENCES Lecturers(LID)
ALTER TABLE LecturerInDepartment
ADD FOREIGN KEY (DID) REFERENCES Departments(DID)

-- Fake data into LecturerInDepartment table
INSERT INTO LecturerInDepartment(LID, DID, StartDate) VALUES (1,1, '2012-1-3');
INSERT INTO LecturerInDepartment(LID, DID, StartDate) VALUES (2,1, '2014-2-7');
INSERT INTO LecturerInDepartment(LID, DID, StartDate) VALUES (3,1, '2015-3-3');
INSERT INTO LecturerInDepartment(LID, DID, StartDate, EndDate) VALUES (3,1, '2012-3-3', '2016-3-3');

-- students table
CREATE TABLE Students(
	SID INT IDENTITY(1,1) PRIMARY KEY,
	LImage VARBINARY(MAX),
	Email VARCHAR(255)
);

-- Fake data into student table - It is a real value in FPT education system (FAP)

INSERT INTO Students(LImage, Email) VALUES(1324654698133,'giangphha160120@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324651238133,'longdvhe150002@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'LanNNHE150254@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'AnhBTHE151470@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'QuangNTHE151498@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'LiemDXHE153076@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'MinhNDHE160265@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'DuyDNHE160373@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'LamVTHE160382@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'TamVLBHE160536@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'KhangNHHE160625@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'LinhCQHE160679@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'QuanVXHE160843@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'HungNVHE161049@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'TungNDHE161613@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'PhucVHHE161615@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'QuyenBVHE161625@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'MinhPDHE161652@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'MinhTNHE161729@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'PhucVTHE161744@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'AnhPHHE163007@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'TuanNMHE163069@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'DatBTHE163093@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'LamNDHHE163235@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'AnhNHHE163241@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'AnhNLVHE163350@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'BachLXHE164012@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'ex1@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'fake@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'fake2@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'phake3@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'phake4@fpt.edu.vn');
INSERT INTO Students(LImage, Email) VALUES(1324654698133,'phake5@fpt.edu.vn');


-- student's name table
CREATE TABLE StudentName(
	SID INT,
	SurName VARCHAR(255),
	MiddleName VARCHAR(255),
	GivenName VARCHAR(255)
);

ALTER TABLE StudentName
ADD FOREIGN KEY (SID) REFERENCES Students(SID);
-- Fake data into student table name
INSERT INTO StudentName(SID, SurName, MiddleName,GivenName ) VALUES (1,'Phạm','Hương', 'Giang');
INSERT INTO StudentName(SID, SurName, MiddleName, GivenName ) VALUES (2,'Đỗ','Việt', 'Long');
INSERT INTO StudentName(SID, SurName, MiddleName, GivenName ) VALUES (4,'Nguyễn','Ngọc', 'Lân');
INSERT INTO StudentName(SID, SurName, MiddleName, GivenName ) VALUES (5,'Bùi','Tuấn', 'Anh');
INSERT INTO StudentName(SID, SurName, MiddleName, GivenName) VALUES (6,'Nguyễn','Tiến', 'Quang');
INSERT INTO StudentName(SID, SurName, MiddleName, GivenName) VALUES (7,'Đặng','Xuân', 'Liêm');
INSERT INTO StudentName(SID, SurName, MiddleName, GivenName) VALUES (8,'Nguyễn','Đức', 'Minh');
INSERT INTO StudentName(SID, SurName, MiddleName, GivenName) VALUES (9,'Đỗ','Ngọc', 'Duy');
INSERT INTO StudentName(SID, SurName, MiddleName, GivenName) VALUES (10,'Vũ','Thanh', 'Lâm');
INSERT INTO StudentName(SID, SurName, MiddleName, GivenName) VALUES (11,'Vũ','Lê Băng', 'Tâm');
INSERT INTO StudentName(SID, SurName, MiddleName, GivenName) VALUES (12,'Nguyễn','Hải', 'Khang');
INSERT INTO StudentName(SID, SurName, MiddleName, GivenName) VALUES (13,'Chử','Quang', 'Linh');
INSERT INTO StudentName(SID, SurName, MiddleName, GivenName) VALUES (14,'Vương','Xuân', 'Quân');
INSERT INTO StudentName(SID, SurName, MiddleName, GivenName) VALUES (15,'Nguyễn','Việt', 'Hưng');
INSERT INTO StudentName(SID, SurName, MiddleName, GivenName) VALUES (16,'Nguyễn','Duy', 'Tùng');
INSERT INTO StudentName(SID, SurName, MiddleName, GivenName) VALUES (17,'Vũ','Huy', 'Phúc');
INSERT INTO StudentName(SID, SurName, MiddleName, GivenName) VALUES (18,'Bùi','Văn', 'Quyến');

-- create Course table
CREATE TABLE Courses(
	CID INT IDENTITY(1,1) PRIMARY KEY,
	DID INT,
	CName VARCHAR(255)
);
-- Add contraint FK
ALTER TABLE Courses
ADD FOREIGN KEY (DID) REFERENCES Departments(DID)
-- Fake data into Courses table
INSERT INTO Courses(DID, CName) VALUES (1, 'Data Structures and Algorithms(CSD201)');
INSERT INTO Courses(DID, CName) VALUES (1, 'Introduction to Databases(DBI202)');
INSERT INTO Courses(DID, CName) VALUES (1, 'Introduction to Databases(OOP with Java Lab(LAB211))');


-- Create GradeCategoty table
CREATE TABLE GradeCategory(
	CategoryID INT IDENTITY(1,1) PRIMARY KEY,
	CID INT,
	CategoryName VARCHAR(255)
);
-- Add constraint FK
ALTER TABLE GradeCategory
ADD FOREIGN KEY (CID) REFERENCES Courses(CID)
-- Fake data - data is DBI202 and CSD grade item
INSERT INTO GradeCategory(CID, CategoryName) VALUES (1, 'Assignment');
INSERT INTO GradeCategory(CID, CategoryName) VALUES (1, 'Progress test');
INSERT INTO GradeCategory(CID, CategoryName) VALUES (1, 'Practical Exam');
INSERT INTO GradeCategory(CID, CategoryName) VALUES (1, 'Final Exam');

INSERT INTO GradeCategory(CID, CategoryName) VALUES (2, 'Lab');
INSERT INTO GradeCategory(CID, CategoryName) VALUES (2, 'Progress Test');
INSERT INTO GradeCategory(CID, CategoryName) VALUES (2, 'Assignment');
INSERT INTO GradeCategory(CID, CategoryName) VALUES (2, 'Practical Exam');
INSERT INTO GradeCategory(CID, CategoryName) VALUES (2, 'Final Exam');

-- Create grade item table
CREATE TABLE GradeItems(
	GrateItemID INT IDENTITY(1,1) PRIMARY KEY,
	GradeCategoryID INT,
	GradeWeight FLOAT,
	GradeName VARCHAR(255)
);
-- add constraint
ALTER TABLE GradeItems
ADD FOREIGN KEY (GradeCategoryID) REFERENCES GradeCategory(CategoryID);
-- Fake data into GradeItem table
INSERT INTO GradeItems(GradeCategoryID, GradeWeight, GradeName) VALUES (1, 0.1,'Assignment 1');
INSERT INTO GradeItems(GradeCategoryID, GradeWeight, GradeName) VALUES (1, 0.1,'Assignment 2');
INSERT INTO GradeItems(GradeCategoryID, GradeWeight, GradeName) VALUES (2, 0.1,'Progress test 1');
INSERT INTO GradeItems(GradeCategoryID, GradeWeight, GradeName) VALUES (2, 0.1,'Progress test 2');
INSERT INTO GradeItems(GradeCategoryID, GradeWeight, GradeName) VALUES (3, 0.3,'Practical Exam');
INSERT INTO GradeItems(GradeCategoryID, GradeWeight, GradeName) VALUES (4, 0.3,'Final Exam');

INSERT INTO GradeItems(GradeCategoryID, GradeWeight, GradeName) VALUES (5, 0.02,'Lab 1');
INSERT INTO GradeItems(GradeCategoryID, GradeWeight, GradeName) VALUES (5, 0.02,'Lab 2');
INSERT INTO GradeItems(GradeCategoryID, GradeWeight, GradeName) VALUES (5, 0.02,'Lab 3');
INSERT INTO GradeItems(GradeCategoryID, GradeWeight, GradeName) VALUES (5, 0.02,'Lab 4');
INSERT INTO GradeItems(GradeCategoryID, GradeWeight, GradeName) VALUES (5, 0.02,'Lab 5');
INSERT INTO GradeItems(GradeCategoryID, GradeWeight, GradeName) VALUES (6, 0.05,'Progress Test 1');
INSERT INTO GradeItems(GradeCategoryID, GradeWeight, GradeName) VALUES (6, 0.05,'Progress Test 2');
INSERT INTO GradeItems(GradeCategoryID, GradeWeight, GradeName) VALUES (7, 0.2,'Assignment');
INSERT INTO GradeItems(GradeCategoryID, GradeWeight, GradeName) VALUES (8, 0.3,'Practical Exam');
INSERT INTO GradeItems(GradeCategoryID, GradeWeight, GradeName) VALUES (9, 0.3,'Final Exam');

-- create Group table

CREATE TABLE [Groups](
	GID INT IDENTITY(1,1) PRIMARY KEY,
	GName VARCHAR(255),
	Room VARCHAR(255),
);
-- Fake data into Groups table
INSERT INTO [Groups](GName, Room) VALUES ('AI1604', 'BE-315');
INSERT INTO [Groups](GName, Room) VALUES ('IA1603', 'AL-R204');

-- Create slots table
CREATE TABLE Slots(
	SlotID INT IDENTITY(1,1) PRIMARY KEY,
	SlotName VARCHAR(255),
	StartTime TIME,
	EndTime TIME
);
-- Create master data in slot table, in master data table, it will be create one time, and not have to much change.
INSERT INTO Slots(SlotName, StartTime, EndTime) VALUES ('Slot 1', '7:30:00', '9:00:00');
INSERT INTO Slots(SlotName, StartTime, EndTime) VALUES ('Slot 2', '9:10:00', '10:40:00');
INSERT INTO Slots(SlotName, StartTime, EndTime) VALUES ('Slot 3', '10:50:00', '12:20:00');
INSERT INTO Slots(SlotName, StartTime, EndTime) VALUES ('Slot 4', '12:50:00', '14:20:00');
INSERT INTO Slots(SlotName, StartTime, EndTime) VALUES ('Slot 5', '14:30:00', '16:00:00');
INSERT INTO Slots(SlotName, StartTime, EndTime) VALUES ('Slot 6', '16:10:00', '17:40:00');
INSERT INTO Slots(SlotName, StartTime, EndTime) VALUES ('Slot 7', '17:50:00', '19:20:00');
INSERT INTO Slots(SlotName, StartTime, EndTime) VALUES ('Slot 8', '19:30:00', '21:00:00');

-- Create table grade of student
-- The main function of this project: (Attendance managerment and grade managerment for Students)
-- This is many to many Relationship: In "give grade" relationship: Lecturer, Student, CourseID, Course grade type, Value are mandatory.
-- Because: a grade can be give if it has No lecturer or student or Course, or grade type, or value
CREATE TABLE GradeOfStudent(
	LID INT,
	SID INT,
	CID INT,
	GradeItemID INT,
	[Value] FLOAT,
	LecturerComment VARCHAR(255)
);

-- Add constraint
ALTER TABLE GradeOfStudent
ADD FOREIGN KEY (LID) REFERENCES Lecturers(LID)
ALTER TABLE GradeOfStudent
ADD FOREIGN KEY (SID) REFERENCES Students(SID)
ALTER TABLE GradeOfStudent
ADD FOREIGN KEY (CID) REFERENCES Courses(CID)
ALTER TABLE GradeOfStudent
ADD FOREIGN KEY (GradeItemID) REFERENCES GradeItems(GrateItemID)

-- Fake data into GradeOfStudent table
INSERT INTO GradeOfStudent(LID, SID, CID, GradeItemID, [Value], LecturerComment) VALUES (2, 12, 2, 7, 5, 'Non');
INSERT INTO GradeOfStudent(LID, SID, CID, GradeItemID, [Value], LecturerComment) VALUES (2, 12, 2, 8, 0, 'Qua Non');
INSERT INTO GradeOfStudent(LID, SID, CID, GradeItemID, [Value]) VALUES (2, 12, 2, 9, 9);
INSERT INTO GradeOfStudent(LID, SID, CID, GradeItemID, [Value]) VALUES (2, 12, 2, 10, 9);
INSERT INTO GradeOfStudent(LID, SID, CID, GradeItemID, [Value]) VALUES (2, 12, 2, 11, 9);


-- Progress test point of student having SID = 12
INSERT INTO GradeOfStudent(LID, SID, CID, GradeItemID, [Value]) VALUES (2, 12, 2, 12, 7);
INSERT INTO GradeOfStudent(LID, SID, CID, GradeItemID, [Value]) VALUES (2, 12, 2, 13, 8);
-- Assignment point of student having SID = 12
INSERT INTO GradeOfStudent(LID, SID, CID, GradeItemID, [Value]) VALUES (2, 12, 2, 14, 7);
-- Pratical exam of student having SID = 12
INSERT INTO GradeOfStudent(LID, SID, CID, GradeItemID, [Value]) VALUES (2, 12, 2, 15, 6);
-- Final exam of student having SID = 12
INSERT INTO GradeOfStudent(LID, SID, CID, GradeItemID, [Value]) VALUES (2, 12, 2, 16, 6.5);

-- In each semester, Students enroll in a group, this relation ship is many to many relationship
-- because each group has many students and each student can enroll to many groups
-- Create table: 
CREATE TABLE StudentInGroup(
	SID INT,
	GID INT,
	CID INT,
	Semester VARCHAR(255),
	SlotID INT
);
-- Add constraint
ALTER TABLE StudentInGroup
ADD FOREIGN KEY (SID) REFERENCES Students(SID)
ALTER TABLE StudentInGroup
ADD FOREIGN KEY (GID) REFERENCES Groups(GID)
ALTER TABLE StudentInGroup
ADD FOREIGN KEY (CID) REFERENCES Courses(CID)
ALTER TABLE StudentInGroup
ADD FOREIGN KEY (SlotID) REFERENCES Slots(SLotID)

-- Fake data
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (1, 1, 2, 'Spring 2022', 2);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (2, 1, 2, 'Spring 2022', 2);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (4, 1, 2, 'Spring 2022', 2);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (5, 1, 2, 'Spring 2022', 2);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (6, 1, 2, 'Spring 2022', 2);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (7, 1, 2, 'Spring 2022', 2);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (8, 1, 2, 'Spring 2022', 2);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (9, 1, 2, 'Spring 2022', 2);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (10, 1, 2, 'Spring 2022', 2);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (11, 1, 2, 'Spring 2022', 2);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (12, 1, 2, 'Spring 2022', 2);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (13, 1, 2, 'Spring 2022', 2);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (13, 1, 1, 'Spring 2022', 1);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (1, 1, 1, 'Spring 2022', 1);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (2, 1, 1, 'Spring 2022', 1);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (4, 1, 1, 'Spring 2022', 1);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (5, 1, 1, 'Spring 2022', 1);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (6, 1, 1, 'Spring 2022', 1);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (7, 1, 1, 'Spring 2022', 1);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (8, 1, 1, 'Spring 2022', 1);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (9, 1, 1, 'Spring 2022', 1);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (10, 1, 1, 'Spring 2022', 1);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (11, 1, 1, 'Spring 2022', 1);
INSERT INTO StudentInGroup(SID, GID, CID, Semester, SlotID) VALUES (12, 1, 1, 'Spring 2022', 1);

-- the main function of this project: Attendance 
-- in each slot of course, Lecturer will check attendance for student. This is many to many relationship.
-- because: a Lecturer can check attendance for many students, and a students can be checked by many Lecturers
-- In this relationship: Student, Lecturer, Course, Status(addtended or absent),RecordTime are required.But RecordTime is auto saved in some programing frame work like PHP Laravel.
-- In UI, it is a simple way to do this, Lectured open a list of student. Check status and click OK. That will be done.
-- Create StudentAttendance table.
CREATE TABLE StudentAttendance(
	SID INT,
	LID INT,
	CID INT,
	[Status] INT,
	RecordTime DATETIME,
	Comment VARCHAR(255)
);
-- add constraint
ALTER TABLE StudentAttendance
ADD FOREIGN KEY (CID) REFERENCES Courses(CID)
ALTER TABLE StudentAttendance
ADD FOREIGN KEY (SID) REFERENCES Students(SID)
ALTER TABLE StudentAttendance
ADD FOREIGN KEY (LID) REFERENCES Lecturers(LID)

-- Fake data
INSERT INTO StudentAttendance(SID, LID, CID, [Status], RecordTime, Comment) VALUES (1, 2, 2, 1, '2022-2-28 10:40:00 AM', 'Late');
INSERT INTO StudentAttendance(SID, LID, CID, [Status], RecordTime) VALUES (1, 2, 2, 1, '2022-2-28 10:40:00 AM');
INSERT INTO StudentAttendance(SID, LID, CID, [Status], RecordTime) VALUES (4, 2, 2, 1, '2022-2-28 10:40:00 AM');
INSERT INTO StudentAttendance(SID, LID, CID, [Status], RecordTime) VALUES (5, 2, 2, 1, '2022-2-28 10:40:00 AM');
INSERT INTO StudentAttendance(SID, LID, CID, [Status], RecordTime) VALUES (6, 2, 2, 1, '2022-2-28 10:40:00 AM');
INSERT INTO StudentAttendance(SID, LID, CID, [Status], RecordTime) VALUES (7, 2, 2, 1, '2022-2-28 10:40:00 AM');
INSERT INTO StudentAttendance(SID, LID, CID, [Status], RecordTime) VALUES (8, 2, 2, 1, '2022-2-28 10:40:00 AM');
INSERT INTO StudentAttendance(SID, LID, CID, [Status], RecordTime) VALUES (9, 2, 2, 1, '2022-2-28 10:40:00 AM');
INSERT INTO StudentAttendance(SID, LID, CID, [Status], RecordTime) VALUES (10, 2, 2, 1, '2022-2-28 10:40:00 AM');
INSERT INTO StudentAttendance(SID, LID, CID, [Status], RecordTime) VALUES (11, 2, 2, 1, '2022-2-28 10:40:00 AM');
INSERT INTO StudentAttendance(SID, LID, CID, [Status], RecordTime) VALUES (12, 2, 2, 0, '2022-2-28 10:40:00 AM');
INSERT INTO StudentAttendance(SID, LID, CID, [Status], RecordTime) VALUES (13, 2, 2, 1, '2022-2-28 10:40:00 AM');


-- QUERY
--  A query that uses ORDER BY
--  A query that uses INNER JOINS
--  A query that uses aggregate functions
--  A query that uses the GROUP BY and HAVING clauses
--  A query that uses a sub-query as a relation
--  A query that uses a sub-query in the WHERE clause

-- Query 1: A query that uses ORDER BY -- display name of students in a class ordered by name ASC
SELECT s.LImage, s.Email, g.GName, sn.SurName + ' ' + sn.MiddleName + ' ' + sn.GivenName AS [Full Name] FROM Students s 
INNER JOIN StudentInGroup sg ON s.SID = sg.SID 
INNER JOIN Groups g ON sg.GID = g.GID 
INNER JOIN StudentName sn ON sn.SID = s.SID
ORDER BY sn.GivenName ASC

-- Query 2:A query that uses INNER JOINS - A schedule of a student name is Khang. It matches with view schedule in FAP
-- This query will return a object array, Front End programer will use it and display like user interface
-- Some thing went wrong here, because there no slot detail for each course. I don't have the table like this, but it will be OK. There is a sample
-- To show the detail like FAP, I must create a table like course - slot. a course have 30 slot, and each slot having a Slot ID, and a day of each slot.
SELECT * FROM Students s 
INNER JOIN StudentInGroup sg ON s.SID = sg.SID 
INNER JOIN Groups g ON sg.GID = g.GID 
INNER JOIN Slots sl ON sg.SlotID = sl.SlotID
INNER JOIN StudentName sn ON sn.SID = s.SID
WHERE sn.GivenName = 'Khang'

--  A query that uses aggregate functions: Caculate average point of a student in a course
SELECT sn.SurName + ' ' + sn.MiddleName + ' ' + sn.GivenName AS [Full Name], c.CName, SUM(gs.Value * gi.GradeWeight) AS [COURSE TOTAL AVERAGE] FROM Students s 
INNER JOIN GradeOfStudent gs ON s.SID = gs.SID
INNER JOIN Courses c ON C.CID = gs.CID
INNER JOIN GradeItems gi ON gi.GrateItemID = gs.GradeItemID
INNER JOIN StudentName sn ON s.SID = sn.SID
WHERE sn.GivenName = 'Khang'
GROUP BY sn.SurName + ' ' + sn.MiddleName + ' ' + sn.GivenName, c.CName

--  A query that uses the GROUP BY and HAVING clauses: Show the good student in DBI202 who having course average  >= 8.0.
-- This query return a empty record, because there are no student having GPA >= 8
SELECT sn.SurName + ' ' + sn.MiddleName + ' ' + sn.GivenName AS [Full Name], c.CName, SUM(gs.Value * gi.GradeWeight) AS [COURSE TOTAL AVERAGE] FROM Students s 
INNER JOIN GradeOfStudent gs ON s.SID = gs.SID
INNER JOIN Courses c ON C.CID = gs.CID
INNER JOIN GradeItems gi ON gi.GrateItemID = gs.GradeItemID
INNER JOIN StudentName sn ON s.SID = sn.SID
GROUP BY sn.SurName + ' ' + sn.MiddleName + ' ' + sn.GivenName, c.CName
HAVING SUM(gs.Value * gi.GradeWeight) >= 8.0

-- A query that uses a sub-query as a relation: show single activity attendance:

SELECT StudentNametbl.NAME, StudentNametbl.LImage, sa.Status, sa.Comment, LecturerNametbl.TAKER, sa.RecordTime FROM StudentAttendance sa INNER JOIN
(SELECT s.SID AS SID, sn.SurName + ' ' + sn.MiddleName + ' ' + sn.GivenName AS [NAME], s.LImage FROM Students s INNER JOIN StudentName sn on s.SID = sn.SID)StudentNametbl
ON sa.SID = StudentNametbl.SID
INNER JOIN 
(SELECT l.LID as LID, ln.GivenName as TAKER FROM Lecturers l INNER JOIN LecturerName ln ON l.LID = ln.LID)LecturerNametbl
ON sa.LID = LecturerNametbl.LID
-- 
--  A query that uses a sub-query in the WHERE clause: show the student who don't eroll in class
SELECT * FROM Students s WHERE s.SID NOT IN (SELECT SID FROM StudentInGroup)

--  A query that uses partial matching in the WHERE clause: find the student who absent in 2022-02-28
SELECT * FROM Students s 
WHERE s.SID = (SELECT SID FROM StudentAttendance sa WHERE sa.Status = 0)

--  A query that uses a self-JOIN - find the lecturer who is a manager of a nother lecturer
SELECT ln.SurName + ' ' + ln.MiddleName + ' ' + ln.GivenName as [Manager Name], l2.LID AS [Staff ID] FROM Lecturers l1 INNER JOIN Lecturers l2
ON l1.LID = l2.ReportTo
INNER JOIN LecturerName ln ON l1.LID = ln.LID

-- a procedure that show avg of student by Student name and Course Name
	
DROP PROCEDURE ShowAVGOfStudent
CREATE PROCEDURE ShowAVGOfStudent
@SName varchar(255),
@CName varchar(255)
AS
	SELECT sn.SurName + ' ' + sn.MiddleName + ' ' + sn.GivenName AS [Full Name], c.CName, SUM(gs.Value * gi.GradeWeight) AS [COURSE TOTAL AVERAGE] FROM Students s 
	INNER JOIN GradeOfStudent gs ON s.SID = gs.SID
	INNER JOIN Courses c ON C.CID = gs.CID
	INNER JOIN GradeItems gi ON gi.GrateItemID = gs.GradeItemID
	INNER JOIN StudentName sn ON s.SID = sn.SID
	WHERE sn.GivenName = @SName AND c.CName = @CName
	GROUP BY sn.SurName + ' ' + sn.MiddleName + ' ' + sn.GivenName, c.CName

EXEC ShowAVGOfStudent @SName = 'Khang', @CName = 'Introduction to Databases(DBI202)';

-- Trigger: When a lecturer enter a grade that smaller than 0, the transaction will rollback
CREATE TRIGGER trigger_validPoint
ON GradeOfStudent
AFTER INSERT
AS
	DECLARE @ValidPoint INT;
	SELECT @ValidPoint = [Value] FROM inserted
	IF @ValidPoint < 0
	BEGIN
		ROLLBACK TRANSACTION
	END
INSERT INTO GradeOfStudent(LID, SID, CID, GradeItemID, [Value]) VALUES (2, 12, 2, 13, -8);
