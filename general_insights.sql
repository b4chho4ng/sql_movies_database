SELECT avg(IMDB_Rating) AS average_rating FROM imdb_top_1000;

SELECT Series_Title, Director, (CAST(REPLACE(Gross, ",", "") AS INTEGER)) AS revenue FROM imdb_top_1000
ORDER BY CAST(REPLACE(Gross, ",", "") AS INTEGER) DESC;

SELECT Series_Title, Director, IMDB_Rating FROM imdb_top_1000
ORDER BY IMDB_Rating DESC
LIMIT 50;

SELECT Director, count(Director) AS movies_directed, avg(IMDB_Rating) AS avg_rating
FROM imdb_top_1000
GROUP BY Director
ORDER BY movies_directed DESC
LIMIT 50;

SELECT Director, 
	   round(avg(IMDB_Rating), 1) AS average_rating, 
	   SUM(CAST(REPLACE(Gross, ",", "") AS INTEGER))/1000000 AS total_gross_in_mil
FROM imdb_top_1000
WHERE Gross IS NOT NULL
GROUP BY Director
ORDER BY average_rating DESC
LIMIT 50;