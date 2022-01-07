# 3
# a. Six rows
# b. 29 Unique artists 
# c. ID
# d. The oldest album is 1967 & the youngest is 2011
;


SELECT *
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date
FROM albums
WHERE name = "Sgt. Pepper's Lonely Hearts Club Band"; 

SELECT genre
FROM albums
WHERE name = 'Nevermind';


SELECT name
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT name
FROM albums
WHERE sales < 20;

SELECT *
FROM albums
WHERE genre LIKE '%Rock%';
# Because using the syntax = will only list rock as an output. If you use LIKE and wildcard '%' will list in output everything that has the word rock in genre
;
 




