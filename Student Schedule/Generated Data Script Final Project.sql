USE [FinalProject]
GO
INSERT [dbo].[Zipcode] ([zipcode], [city], [state]) VALUES (49646, N'Kalkaska', N'MI')
INSERT [dbo].[Zipcode] ([zipcode], [city], [state]) VALUES (49690, N'Williamsburg', N'MI')
INSERT [dbo].[Zipcode] ([zipcode], [city], [state]) VALUES (49782, N'Charlevoix', N'MI')
INSERT [dbo].[Zipcode] ([zipcode], [city], [state]) VALUES (49786, N'Bay Mills', N'MI')
INSERT [dbo].[Zipcode] ([zipcode], [city], [state]) VALUES (49788, N'Kincheloe', N'MI')
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([studentID], [studentFName], [studentLName], [studentDOB], [studentPhone], [studentEmail], [studentAddress], [zipcode]) VALUES (1, N'Peter', N'Steele', CAST(N'1990-05-01' AS Date), N'231-357-1970', N'steelep@mail.nmc.edu', N'6847 Cram Road', 49690)
INSERT [dbo].[Student] ([studentID], [studentFName], [studentLName], [studentDOB], [studentPhone], [studentEmail], [studentAddress], [zipcode]) VALUES (2, N'Mike', N'Rogers', CAST(N'1985-06-28' AS Date), N'906-748-2123', N'rogersm@mail.nmc.edu', N'123 Fairy Tale Lane', 49782)
INSERT [dbo].[Student] ([studentID], [studentFName], [studentLName], [studentDOB], [studentPhone], [studentEmail], [studentAddress], [zipcode]) VALUES (3, N'Samantha', N'Green', CAST(N'1997-02-03' AS Date), N'231-364-9526', N'greens@mail.nmc.edu', N'1548 Market Drive', 49646)
INSERT [dbo].[Student] ([studentID], [studentFName], [studentLName], [studentDOB], [studentPhone], [studentEmail], [studentAddress], [zipcode]) VALUES (4, N'Haley', N'Marie', CAST(N'2002-11-29' AS Date), N'231-958-4827', N'marieh@mail.nmc.edu', N'14 Forest Lodge Road', 49788)
INSERT [dbo].[Student] ([studentID], [studentFName], [studentLName], [studentDOB], [studentPhone], [studentEmail], [studentAddress], [zipcode]) VALUES (5, N'Bob', N'Gallagher', CAST(N'2000-08-04' AS Date), N'906-471-1152', N'gallagherb@mail.nmc.edu', N'2152 Lakeshore Drive', 49786)
SET IDENTITY_INSERT [dbo].[Student] OFF
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([instID], [instFName], [instLName], [instDOB], [instPhone], [instEmail], [instAddress], [zipcode]) VALUES (1, N'Lue', N'Dobbs', CAST(N'1969-01-13' AS Date), N'231-658-4297', N'dobbsl@nmc.edu', N'7845 Holley Lane', 49690)
INSERT [dbo].[Instructor] ([instID], [instFName], [instLName], [instDOB], [instPhone], [instEmail], [instAddress], [zipcode]) VALUES (2, N'Marry', N'Smith', CAST(N'1954-03-03' AS Date), N'906-222-3619', N'smithm@nmc.edu', N'291 Gavel Road', 49782)
INSERT [dbo].[Instructor] ([instID], [instFName], [instLName], [instDOB], [instPhone], [instEmail], [instAddress], [zipcode]) VALUES (3, N'Juniper', N'Street', CAST(N'1982-06-30' AS Date), N'231-433-2297', N'streetj@nmc.edu', N'28163 Tilson Way', 49646)
INSERT [dbo].[Instructor] ([instID], [instFName], [instLName], [instDOB], [instPhone], [instEmail], [instAddress], [zipcode]) VALUES (4, N'Harry', N'Potter', CAST(N'1978-01-25' AS Date), N'231-714-4885', N'potterh@nmc.edu', N'123 Privet Drive', 49788)
INSERT [dbo].[Instructor] ([instID], [instFName], [instLName], [instDOB], [instPhone], [instEmail], [instAddress], [zipcode]) VALUES (5, N'Cyndie', N'Bobier', CAST(N'1975-10-31' AS Date), N'906-482-3279', N'bobierc@nmc.edu', N'1837 Bug Lane', 49786)
SET IDENTITY_INSERT [dbo].[Instructor] OFF
SET IDENTITY_INSERT [dbo].[Classes] ON 

INSERT [dbo].[Classes] ([classID], [className], [classCode], [classCredit], [classContactHours], [classSeats]) VALUES (1, N'Programming Logic and Design', N'CIT110', 3, 3, 24)
INSERT [dbo].[Classes] ([classID], [className], [classCode], [classCredit], [classContactHours], [classSeats]) VALUES (2, N'Relational Databases', N'CIT178', 3, 3, 24)
INSERT [dbo].[Classes] ([classID], [className], [classCode], [classCredit], [classContactHours], [classSeats]) VALUES (3, N'HTML and CSS Programing', N'CIT180', 3, 3, 23)
INSERT [dbo].[Classes] ([classID], [className], [classCode], [classCredit], [classContactHours], [classSeats]) VALUES (4, N'Networking Technologies', N'CIT213', 4, 5, 20)
INSERT [dbo].[Classes] ([classID], [className], [classCode], [classCredit], [classContactHours], [classSeats]) VALUES (5, N'Public Speaking', N'COM111', 4, 4, 20)
SET IDENTITY_INSERT [dbo].[Classes] OFF
INSERT [dbo].[SemesterClasses] ([classID], [instID], [CRN], [semesterClassYear]) VALUES (1, 1, 1667, N'F19')
INSERT [dbo].[SemesterClasses] ([classID], [instID], [CRN], [semesterClassYear]) VALUES (2, 2, 1552, N'F19')
INSERT [dbo].[SemesterClasses] ([classID], [instID], [CRN], [semesterClassYear]) VALUES (3, 3, 1447, N'F19')
INSERT [dbo].[SemesterClasses] ([classID], [instID], [CRN], [semesterClassYear]) VALUES (4, 4, 1203, N'F19')
INSERT [dbo].[SemesterClasses] ([classID], [instID], [CRN], [semesterClassYear]) VALUES (5, 5, 2140, N'F19')
SET IDENTITY_INSERT [dbo].[StudentSchedule] ON 

INSERT [dbo].[StudentSchedule] ([scheduleID], [studentID], [classID], [CRN], [semesterClassYear]) VALUES (1, 1, 1, 1667, N'F19')
INSERT [dbo].[StudentSchedule] ([scheduleID], [studentID], [classID], [CRN], [semesterClassYear]) VALUES (2, 2, 2, 1552, N'F19')
INSERT [dbo].[StudentSchedule] ([scheduleID], [studentID], [classID], [CRN], [semesterClassYear]) VALUES (3, 3, 3, 1447, N'F19')
INSERT [dbo].[StudentSchedule] ([scheduleID], [studentID], [classID], [CRN], [semesterClassYear]) VALUES (4, 4, 4, 1203, N'F19')
INSERT [dbo].[StudentSchedule] ([scheduleID], [studentID], [classID], [CRN], [semesterClassYear]) VALUES (5, 5, 5, 2140, N'F19')
SET IDENTITY_INSERT [dbo].[StudentSchedule] OFF
