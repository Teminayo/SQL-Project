SELECT * FROM Donation_Data
SELECT COUNT(id) FROM Donation_Data
SELECT COUNT (first_name) FROM Donation_Data
SELECT SUM(donation) FROM Donation_Data

SELECT COUNT (ID) FROM Donation_Data WHERE STATE = "California";

SELECT COUNT (ID) FROM Donation_Data WHERE STATE = "California" AND gender = "Female"

SELECT COUNT (ID) FROM Donation_Data WHERE STATE = "Florida" AND gender = "male" AND shirt_size ="XL";

SELECT COUNT (ID) FROM Donation_Data WHERE STATE = "California" AND gender = "male" OR shirt_size ="XL";

SELECT COUNT (ID) FROM Donation_Data WHERE STATE = "Florida" AND gender = "Male" OR shirt_size ="XL";

SELECT COUNT (ID) FROM Donation_Data WHERE STATE = "Florida" AND shirt_size ="XL"OR gender = "Male" ;

SELECT MIN (donation) FROM Donation_Data

SELECT MAX (donation) FROM Donation_Data



SELECT AVG (donation) FROM Donation_Data

SELECT AVG(donation) FROM Donation_Data WHERE state = "New York"


SELECT AVG(donation) FROM Donation_Data WHERE state = "New York" AND gender = "Female";

SELECT AVG(donation) FROM Donation_Data WHERE state = "New York" AND gender = "Female" and shirt_size = "M";




SELECT ROUND(AVG(donation), 2) FROM Donation_Data WHERE state = "New York" AND gender = "Female" and shirt_size = "M";
SELECT ROUND(AVG(donation)) FROM Donation_Data WHERE state = "New York" AND gender = "Female" and shirt_size = "M";
SELECT ROUND(AVG(donation), 1) FROM Donation_Data WHERE state = "New York" AND gender = "Female" and shirt_size = "M";


SELECT gender, COUNT(gender) FROM Donation_Data GROUP BY gender;

SELECT gender  FROM Donation_Data GROUP BY gender;

 SELECT job_field, COUNT(job_field) FROM Donation_Data GROUP BY job_field ORDER BY job_field DESC;

 SELECT job_field, COUNT(job_field) FROM Donation_Data GROUP BY job_field ORDER BY COUNT (job_field) DESC;

 SELECT job_field, COUNT(job_field) FROM Donation_Data GROUP BY job_field ORDER BY  COUNT(job_field) aSC;

SELECT gender, COUNT(gender) FROM Donation_Data GROUP BY job_field;

SELECT job_field, COUNT(job_field) FROM Donation_Data WHERE gender = "Female" GROUP BY job_field;



SELECT * FROM Donor_Data2
SELECT Donation_Data.id,Donation_Data.first_name,Donation_Data.gender,Donation_Data.donation,Donor_Data2.donation_frequency,Donor_Data2.car 
FROM Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id


SELECT Donation_Data.id,Donation_Data.first_name,Donation_Data.gender,Donation_Data.donation,Donor_Data2.donation_frequency,Donor_Data2.car 
FROM Donation_Data
INNER JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id


SELECT Donation_Data.id,Donation_Data.first_name,Donation_Data.gender,Donation_Data.donation,Donor_Data2.donation_frequency,Donor_Data2.car 
FROM Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id WHERE Donor_Data2.donation_frequency = "Weekly";

SELECT Donation_Data.id,Donation_Data.first_name,Donation_Data.gender,Donation_Data.donation,Donor_Data2.donation_frequency,Donor_Data2.car,shirt_size
FROM Donation_Data
 JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id WHERE Donor_Data2.donation_frequency = "Weekly" AND shirt_size = "2XL";

SELECT Donation_Data.id,Donation_Data.first_name,Donation_Data.gender,Donation_Data.donation,Donor_Data2.donation_frequency,Donor_Data2.car 
FROM Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id WHERE Donor_Data2.donation_frequency = "Weekly";

SELECT * FROM Donor_Datav2


SELECT Donation_Data.id,Donation_Data.first_name,Donation_Data.gender,Donation_Data.donation,Donor_Datav2.donation_frequency,Donor_Datav2.car 
FROM Donation_Data
JOIN Donor_Datav2
ON Donation_Data.id = Donor_Datav2.id WHERE Donor_Datav2.donation_frequency = "Weekly";

SELECT Donation_Data.id,Donation_Data.first_name,Donation_Data.gender,Donation_Data.donation,Donor_Datav2.donation_frequency,Donor_Datav2.car,shirt_size 
FROM Donation_Data
LEFT JOIN Donor_Datav2
ON Donation_Data.id = Donor_Datav2.id;


SELECT Donation_Data.id,Donation_Data.first_name,Donation_Data.gender,Donation_Data.donation,Donor_Datav2.donation_frequency,Donor_Datav2.car shirt_size
FROM Donation_Data
RIGHT JOIN Donor_Datav2
ON Donation_Data.id = Donor_Datav2.id;

SELECT Donation_Data.id,Donation_Data.first_name,Donation_Data.gender,Donation_Data.donation,Donor_Datav2.donation_frequency,Donor_Datav2.car shirt_size
FROM Donation_Data
JOIN Donor_Datav2
ON Donation_Data.id = Donor_Datav2.id;



SELECT * FROM Donor_Data2
UNION
SELECT * FROM Donor_Datav2


