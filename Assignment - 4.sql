/*ASSIGNMENT 4*/
/*4.1*/
SELECT First_Name , REPLACE(FIRST_NAME ,'a' , 'A') AS Replaced
FROM Worker

/*4.2*/
SELECT * 
FROM Worker
ORDER BY First_Name , DEPARTMENT DESC

/*4.3*/
SELECT First_name , Salary 
FROM Worker
WHERE Salary = (SELECT MAX(Salary) FROM Worker)