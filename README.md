# sql_movies_database
1st data analysis project using SQL
Goes through general insights such as revenue based on rating, average rating and average revenue from the top 1000 movies in history.

- There are problems with the Gross column, which is created as TEXT rather than INTEGER.
- Some movies have NULL Gross values, which probably indicates that those movies didn't have a theatrical release / the database doesn't include movies that didn't get release internationally.
- Directors with more movies did have a slightly higher average rating throughout their career. However, the top 1000 movies' rating doesn't fluctuate much (9.0 - 8.0)
- Directors with higher average rating doesn't mean that they make more revenue.
