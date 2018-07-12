SELECT genres.name, COUNT(hasagenre.movieid)
FROM genres, hasagenre
GROUP BY genres.genreid

SELECT genres.name, AVG(ratings.rating)
FROM genres, ratings
GROUP BY genres.genreid

CREATE TABLE query3 AS
  SELECT movies.name, COUNT(ratings.rating) as x
  FROM movies, ratings
  GROUP BY movies.movieid
  WHERE x > 10


CREATE TABLE query4 AS
  SELECT movies.movieid, movies.title
  FROM movies, genres
  WHERE genres.name == "comedy"

CREATE TABLE query5 AS
  SELECT movies.name, AVG(ratings.rating)
  FROM movies, ratings
  WHERE ratings.movieid == movies.movieid

CREATE TABLE query6 AS
SELECT AVG(ratings.rating)
FROM hasagenre, ratings
WHERE hasagenre.movieid == query4.movieid  AND movies.movieid
