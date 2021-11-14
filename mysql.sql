CREATE TABLE Actors_details(
Act_id INT PRIMARY KEY,
Act_Name VARCHAR(30)NOT NULL,
Dir_NAME VARCHAR(30)UNIQUE,
Movie_Title VARCHAR(30),
Movie_Year INT ,
Movie_Budget INT ,
Rev_stars INT );
SELECT * FROM Actors_details;
INSERT INTO Actors_details VALUE(1,'PUNITH_RAJKUMAR','PAWAN','RAJAKUMAR',2017,20000000,5);
INSERT INTO Actors_details(Act_id,Act_Name,Dir_Name,Movie_Title,Movie_Year,Movie_Budget,Rev_stars)
 VALUES(2,'yash','SANTHOSH','RAMACHARI',2014,30000000,4),
(3,'SUDEEP','KOTIGOBBA2','RAVIKUMAR',2016,2500000,3),
(4,'SHIVRAJKUMAR','HARSHA','BHAJARANGI',2017,1560000,3),
(5,'DARSHAN','KURUSHEKTHRA','NAGANNA',2019,300000,3),
(6,'GANESH','YUGRAJBHAT','MUNGARU_MALE',2006,100000,5);
DESCRIBE Actors_details;
SELECT * FROM Actors_details;
DROP TABLE Actor_details;
DROP TABLE Movie_details;
DROP DATABASE movie_database;
ALTER TABLE Actors_details ADD COLUMN Actress_name varchar(30);
SELECT * FROM Actors_details;
ALTER TABLE Actors_details DROP COLUMN Actress_name;
UPDATE Actors_details SET Movie_Title='KGF' WHERE Act_id=2;
UPDATE Actors_details SET Dir_Name='santhosh'WHERE Act_id=1;
SELECT * FROM Actors_details order by Movie_Year DESC;
SELECT * FROM Actors_details order by Movie_Budget; 
UPDATE Actors_details SET Dir_Name='RAVIKUMAR',Movie_Title='KOTTIGOBBA2' WHERE Act_id=3;
SELECT * FROM Actors_details LIMIT 2;
SELECT *FROM Actors_details WHERE Movie_Year BETWEEN 2010 AND 2018;
SELECT *FROM Actors_details WHERE Movie_Year IN( 2006 , 2019);
--PATTERN MATCHING--
SELECT *FROM Actors_details WHERE Movie_Title LIKE '%MALE';
SELECT *FROM Actors_details WHERE Movie_Title LIKE 'KOTTI%';
SELECT *FROM Actors_details WHERE Movie_Title LIKE '_g_';
SELECT *FROM Actors_details WHERE Act_Name LIKE '_U%';
--DATE AND TIME FUNCTIONS
SELECT CURDATE() AS PRESENT_DATE;
SELECT curtime() AS PRESENT_TIME;
SELECT now() AS PRRSENT;
SELECT DATE(NOW()) AS PRESENT_DATE;
SELECT TIME(now())AS PRESENT_TIME;
SELECT dayofmonth(now()) AS PRESENT_DAY;
SELECT month(now()) AS PRESENT_MONTH;
SELECT year(now());
SELECT monthname(NOW());
SELECT week(now());
SELECT dayname(NOW());
--AGGREGATION FUNCTION--
SELECT act_name, MAX(Rev_stars) from Actors_details;
SELECT MIN(MOVIE_BUDGET) FROM ACTORS_DETAILS;
SELECT MOVIE_TITLE ,MIN(MOVIE_BUDGET) FROM ACTORS_DETAILS;
SELECT AVG(MOVIE_BUDGET) FROM actors_details;
SELECT SUM(REV_STARS)FROM actors_details;
SELECT COUNT(*) FROM actors_details;












 























