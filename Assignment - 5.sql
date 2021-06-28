/*ASSIGNMENT 5 */
/*5.1*/
SELECT * 
FROM Worker
WHERE First_Name != 'Vishal' AND First_name !='Shubham'


/*5.2*/
SELECT * 
FROM Worker
WHERE LEN(First_name) = 6 AND RIGHT(First_name,1) = 'h'

/*5.3*/
SELECT EMAIL , CONCAT(LOWER(First_Name),LOWER(Last_Name),'@ineuron.com' ) AS 'Valid - E-mail'
FROM Worker 
WHERE EMAIL = (CONCAT(LOWER(First_Name),LOWER(Last_Name),'@ineuron.com' ))