/*
* Peter Steele
* Final Project Milestone 2
* Date: 10/9/2019
*/

USE FinalProject;

INSERT INTO Zipcode VALUES 
(49690, 'Williamsburg', 'MI'),
(49646, 'Kalkaska', 'MI'),
(49788, 'Kincheloe', 'MI'),
(49786, 'Bay Mills', 'MI'),
(49782, 'Charlevoix', 'MI');

GO

INSERT INTO Classes VALUES 
('Programming Logic and Design', 'CIT110', 3, 3, 24),
('Relational Databases', 'CIT178', 3, 3, 24),
('HTML and CSS Programing', 'CIT180', 3, 3, 23),
('Networking Technologies', 'CIT213', 4, 5, 20),
('Public Speaking', 'COM111', 4, 4, 20);

GO

INSERT INTO Student VALUES 
('Peter', 'Steele', '1990-05-01', '231-357-1970', 'steelep@mail.nmc.edu', '6847 Cram Road', 49690),
('Mike', 'Rogers', '1985-06-28', '906-748-2123', 'rogersm@mail.nmc.edu', '123 Fairy Tale Lane', 49782),
('Samantha', 'Green', '1997-02-03', '231-364-9526', 'greens@mail.nmc.edu', '1548 Market Drive', 49646),
('Haley', 'Marie', '2002-11-29', '231-958-4827', 'marieh@mail.nmc.edu', '14 Forest Lodge Road', 49788),
('Bob', 'Gallagher', '8/4/2000', '906-471-1152', 'gallagherb@mail.nmc.edu', '2152 Lakeshore Drive', 49786);

GO

INSERT INTO Instructor VALUES 
('Lue', 'Dobbs', '1969-01-13', '231-658-4297', 'dobbsl@nmc.edu', '7845 Holley Lane', 49690),
('Marry', 'Smith', '1954-03-03', '906-222-3619', 'smithm@nmc.edu', '291 Gavel Road', 49782),
('Juniper', 'Street', '1982-06-30', '231-433-2297', 'streetj@nmc.edu', '28163 Tilson Way', 49646),
('Harry', 'Potter', '1978-01-25', '231-714-4885', 'potterh@nmc.edu', '123 Privet Drive', 49788),
('Cyndie', 'Bobier', '1975-10-31', '906-482-3279', 'bobierc@nmc.edu', '1837 Bug Lane', 49786);

GO

INSERT INTO SemesterClasses VALUES
(1, 1, 1667,'F19'),
(2, 2, 1552, 'F19'),
(3, 3, 1447, 'F19'),
(4, 4, 1203, 'F19'),
(5, 5, 2140, 'F19');
GO

INSERT INTO StudentSchedule VALUES
(1, 1, 1667, 'F19'),
(2, 2, 1552, 'F19'),
(3, 3, 1447, 'F19'),
(4, 4, 1203, 'F19'),
(5, 5, 2140, 'F19');
