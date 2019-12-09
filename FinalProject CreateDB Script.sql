CREATE DATABASE FinalProject;

GO
USE FinalProject;
CREATE TABLE Zipcode (
	zipcode INT PRIMARY KEY NOT NULL,
	city VARCHAR(30) NOT NULL,
	state VARCHAR(2) NOT NULL
);

GO

CREATE TABLE Classes (
	classID INT PRIMARY KEY IDENTITY NOT NULL,
	className VARCHAR(50) NOT NULL,
	classCode VARCHAR(7) NOT NULL,
	classCredit INT NOT NULL,
	classContactHours INT NOT NULL,
	classSeats INT NOT NULL
);

GO

CREATE TABLE Student (
	studentID INT PRIMARY KEY IDENTITY NOT NULL,
	studentFName VARCHAR(50) NOT NULL,
	studentLName VARCHAR(50) NULL,
	studentDOB DATE NULL,
	studentPhone VARCHAR(15) NULL,
	studentEmail VARCHAR(50) NULL,
	studentAddress VARCHAR(50) NULL,
	zipcode INT NOT NULL,
	CONSTRAINT FK_ZIPCODE_STUDENT FOREIGN KEY (zipcode) REFERENCES Zipcode(zipcode)
);

GO

CREATE TABLE Instructor (
	instID INT PRIMARY KEY IDENTITY NOT NULL,
	instFName VARCHAR(50) NOT NULL,
	instLName VARCHAR(50) NULL,
	instDOB DATE NULL,
	instPhone VARCHAR(15) NULL,
	instEmail VARCHAR(50) NULL,
	instAddress VARCHAR(50) NULL,
	zipcode INT NOT NULL,
	CONSTRAINT FK_ZIPCODE_INST FOREIGN KEY (zipcode) REFERENCES Zipcode(zipcode)
);

GO

CREATE TABLE SemesterClasses (
	classID INT NOT NULL,
	instID INT NOT NULL,
	CRN INT NOT NULL,
	semesterClassYear VARCHAR(5) NOT NULL,
	CONSTRAINT PK_SEMESTERCLASSES PRIMARY KEY CLUSTERED (classID, CRN, semesterClassYear),
	CONSTRAINT FK_CLASSID FOREIGN KEY (classID) REFERENCES Classes(classID),
	CONSTRAINT FK_INSTID FOREIGN KEY (instID) REFERENCES Instructor(instID),
);

GO

CREATE TABLE StudentSchedule(
	scheduleID INT PRIMARY KEY IDENTITY NOT NULL,
	studentID INT NOT NULL,
	classID INT NOT NULL,
	CRN INT NOT NULL,
	semesterClassYear VARCHAR(5) NOT NULL,
	CONSTRAINT FK_STUDENTID FOREIGN KEY (studentID) REFERENCES Student(studentID),
	CONSTRAINT FK_SEMESTERCLASSES FOREIGN KEY (classID, CRN, semesterClassYear) 
	REFERENCES SemesterClasses(classID, CRN, semesterClassYear)
);
