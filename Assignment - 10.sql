/*ASSIGNMENT 10*/
/* 10.1 */
WITH t1 AS (
SELECT * , ROW_NUMBER() OVER (ORDER BY SALARY DESC ) as rownumber FROM Worker
)
SELECT *
FROM t1 
WHERE rownumber = 5

/* 10.2*/
WITH t1 AS 
(SELECT Salary 
FROM Worker
GROUP BY Salary HAVING COUNT(*) > 1)

SELECT  * FROM Worker
WHERE Salary IN (SELECT * FROM t1)
ORDER BY  Salary DESC
