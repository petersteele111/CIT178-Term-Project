/* Aggregate Functions For Final Project

USE FinalProject;

SELECT AVG(classCredit) AS 'Average Class Credit'
FROM Classes;

SELECT MIN(studentFName)
FROM Student;

SELECT MAX(semesterClassYear)
FROM SemesterClasses;
*/
SELECT COUNT(studentID)
FROM Student;