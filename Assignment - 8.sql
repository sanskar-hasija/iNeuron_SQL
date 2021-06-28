/*ASSIGNMENT 8*/
/* 8.1*/
INSERT INTO Worker_Clone Values('Ravi','Sherawat','ravisherawat@ineuron.com','Finance', 45000,'2018-02-12')
INSERT INTO Worker_Clone Values('Anuj','Mehra','anujmehra@ineuron.com','HR', 60000,  '2017-04-17')
INSERT INTO Worker_Clone Values('Rahul','Jain','rahuljain@ineuron.com','Purchase', 30000, '2017-12-20')
INSERT INTO Worker_Clone Values('Arohi','Patil','aarohipatil@ineuron.com','Finance', 60000, '2019-11-12')

SELECT * FROM Worker
INTERSECT 
SELECT * FROM Worker_Clone


/* 8.2*/
WITH t1 AS (SELECT w.ID   FROM Worker w  LEFT JOIN Worker_Clone wc ON w.ID = wc.ID)
SELECT * 
FROM Worker_Clone 
WHERE ID NOT IN (SELECT * FROM t1)

