/* Chapter 13 Final Project Views - Peter Steele*/
/*
CREATE VIEW [Student Name] AS 
SELECT StudentID, StudentFName, StudentLName
FROM Student;
GO
SELECT * FROM [Student Name];
GO
UPDATE [Student Name]
SET studentFName='Pete'
WHERE studentFName = 'Peter';

*/
GO


CREATE VIEW [Class] AS
SELECT className, classCredit, classContactHours, classSeats
FROM Classes;


GO

/*

CREATE VIEW [Teachers] AS
SELECT CONCAT(instFName, ' ', instLName) AS 'Teacher', instPhone, instEmail
FROM Instructor;


GO


CREATE VIEW [Semester Class] AS
SELECT Classes.className AS 'Class Name', CONCAT(Instructor.instFName, ' ', Instructor.instLName) AS 'Teacher', SemesterClasses.semesterClassYear AS 'Semester/Year'
FROM SemesterClasses
JOIN Classes ON Classes.classID = SemesterClasses.classID
JOIN Instructor ON Instructor.instID = SemesterClasses.instID;


GO


SELECT * FROM [Semester Class];*/