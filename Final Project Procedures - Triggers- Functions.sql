/*Final Project Procedures

USE FinalProject;
GO
CREATE PROC spStudents
AS
SELECT * FROM Student
ORDER BY studentFName;
GO
EXEC spStudents;

USE FinalProject;
GO
CREATE PROC spGetInstructor
			@InstructorId int
AS
BEGIN
	SELECT * FROM Instructor
	WHERE instID = @InstructorID;
END
GO
EXEC spGetInstructor 3;


USE FinalProject;
GO
CREATE PROC spClasses
		@ClassID int,
		@ClassName varchar OUTPUT,
		@ClassCode varchar OUTPUT
AS
SELECT @ClassName = className, @ClassCode = classCode
FROM Classes
WHERE classID = @ClassID;
GO
DECLARE @ClassName varchar;
DECLARE @ClassCode varchar;
EXEC spClasses 3, @ClassName OUTPUT, @ClassCode OUTPUT;
SELECT @ClassName AS 'Class Name', @ClassCode AS 'Class Code';


USE FinalProject;
GO
CREATE PROC spClassCount
AS
DECLARE @ClassCount int;
SELECT @ClassCount = COUNT(*)
FROM Classes
RETURN @ClassCount;
GO

DECLARE @ClassCount int;
EXEC @ClassCount = spClassCount;
PRINT 'There are ' + CONVERT(varchar, @ClassCount) + ' classes in the catalog';
GO

Final Project User Defined Functions


USE FinalProject;
GO
CREATE FUNCTION fnGetClass
    (@ClassName varchar(50) = '%')
    RETURNS int
BEGIN
    RETURN (SELECT classID FROM Classes WHERE className Like @ClassName);
END; 

GO
SELECT classID, className FROM Classes 
WHERE classID = dbo.fnGetClass('Progra%');



USE FinalProject;
GO
CREATE FUNCTION fnInstructors
	(@InstrName nvarchar(50) = '%')
	RETURNS table
RETURN
	(SELECT * FROM Instructor WHERE instFName LIKE @InstrName);
GO
SELECT * FROM dbo.fnInstructors('%e%');

Final Project Triggers
*/
 USE FinalProject;
 GO
 SELECT * INTO StudentArchive
 FROM Student
 WHERE 1=0;

 ALTER TABLE StudentArchive
 ADD Activity varchar(50);
 GO

 CREATE TRIGGER StudentArchive_INSERT ON Student
    AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @StudentID int
	DECLARE @FirstName nvarchar(30)
	DECLARE @LastName nvarchar(50)
	DECLARE @DOB datetime
	DECLARE @PhoneNumber nvarchar(30)
	DECLARE @Email nvarchar(50)
	DECLARE @Address nvarchar(100)
	DECLARE @Zip nvarchar(20)

    SELECT @StudentID =INSERTED.studentID, @FirstName = INSERTED.studentFName, @LastName = INSERTED.studentLName,
	@DOB = INSERTED.studentDOB, @PhoneNumber = INSERTED.studentPhone, @Email = INSERTED.studentEmail, @Address = INSERTED.studentAddress, @Zip = INSERTED.zipcode
	FROM INSERTED
    INSERT INTO StudentArchive (studentID, studentFName, studentLName, studentDOB, studentPhone, studentEmail, studentAddress, zipcode, Activity) VALUES(@StudentID, @FirstName, @LastName, @DOB, @PhoneNumber, @Email, @Address, @Zip, 'Inserted' )
END

GO
INSERT INTO Student (studentID, studentFName, studentLName, studentDOB, studentPhone, studentEmail, studentAddress, zipcode) VALUES(8,'Holland','Kiroway','05/23/1987','231-854-7843','hkiroway@mail.nmc.edu','4856 Jury Lane','49690');

GO
-- view data in customer archive
SELECT * FROM StudentArchive;
GO

