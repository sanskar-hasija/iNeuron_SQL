/*ASSIGNMENT 2*/
/*2.1*/
SELECT LEFT(First_name , 3) AS 'First 3 Letters'
FROM Worker

/*2.2*/
SELECT CHARINDEX('a',First_Name) AS pos
FROM Worker 
WHERE First_Name = 'Shreyansh'

/*2.3*/
WITH W1 AS (SELECT  [DEPARTMENT]  AS Department , MAX([Salary]) AS Salary
FROM Worker
GROUP BY  [DEPARTMENT])
SELECT w.First_name , w.Last_name, w.DEPARTMENT , w.Salary 
FROM Worker w
JOIN W1 
ON w.DEPARTMENT = W1.Department AND w.Salary = W1.Salary