CREATE TABLE query1 AS
SELECT  genres.name as name,  COUNT(hasagenre.movieid) as moviecount
FROM  hasagenre, genres
WHERE genres.genreid == hasagenre.genreid
GROUP BY hasagenre.genreid


CREATE TABLE query2 AS
SELECT genres.name as name, AVG(ratings.rating) as ratings
FROM genres, ratings, hasagenre
WHERE ratings.movieid == hasagenre.movieid and hasagenre.genreid == genres.genreid
GROUP BY genres.genreid

CREATE TABLE query3 AS
SELECT movies.title , COUNT(ratings.rating) as countofratings
FROM movies, ratings
where ratings.movieid == movies.movieid
GROUP BY movies.movieid
HAVING countofratings  > 10

CREATE TABLE query4 AS
SELECT movies.movieid, movies.title
FROM movies, genres, hasagenre
WHERE movies.movieid == hasagenre.movieid and genres.name == "Comedy" and genres.genreid == hasagenre.genreid

CREATE TABLE query5 AS
SELECT movies.title, AVG(ratings.rating)
FROM movies, ratings
WHERE ratings.movieid == movies.movieid
GROUP BY movies.title

CREATE TABLE query6 AS
SELECT AVG(ratings.rating) as average
FROM query4, ratings
WHERE ratings.movieid == query4.movieid
