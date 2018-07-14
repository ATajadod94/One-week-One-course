CREATE TABLE query1 AS
SELECT  genres.name as name,  COUNT(hasagenre.movieid) as moviecount
FROM  hasagenre, genres
WHERE genres.genreid = hasagenre.genreid
GROUP BY hasagenre.genreid;


CREATE TABLE query2 AS
SELECT genres.name as name, AVG(ratings.rating) as ratings
FROM genres, ratings, hasagenre
WHERE ratings.movieid = hasagenre.movieid and hasagenre.genreid == genres.genreid
GROUP BY genres.genreid;

CREATE TABLE query3 AS
SELECT movies.title , COUNT(ratings.rating) as countofratings
FROM movies, ratings
where ratings.movieid = movies.movieid
GROUP BY movies.movieid
HAVING countofratings  > 10;

CREATE TABLE query4 AS
SELECT movies.movieid, movies.title
FROM movies, genres, hasagenre
WHERE movies.movieid = hasagenre.movieid and genres.name == "Comedy" and genres.genreid == hasagenre.genreid;

CREATE TABLE query5 AS
SELECT movies.title, AVG(ratings.rating)
FROM movies, ratings
WHERE ratings.movieid = movies.movieid
GROUP BY movies.title;

CREATE TABLE query6 AS
SELECT AVG(ratings.rating) as averge
FROM query4, ratings
WHERE query4.movieid = ratings.movieid;

CREATE TABLE query7helper AS
SELECT movies.movieid
FROM movies, genres, hasagenre
WHERE movies.movieid == hasagenre.movieid  and genres.genreid == hasagenre.genreid and
      genres.name == "Comedy"
INTERSECT
SELECT movies.movieid
FROM movies, genres, hasagenre
WHERE movies.movieid == hasagenre.movieid  and genres.genreid == hasagenre.genreid and
      genres.name == "Romance";

CREATE TABLE query7 AS
SElECT AVG(ratings.rating) as average
FROM ratings, query7helper
WHERE query7helper.movieid == ratings.movieid;


CREATE TABLE query8helper AS
SELECT movies.movieid
FROM movies, genres, hasagenre
WHERE movies.movieid = hasagenre.movieid  and genres.genreid = hasagenre.genreid and
      genres.name = "Romance"
EXCEPT
SELECT movies.movieid
FROM movies, genres, hasagenre
WHERE movies.movieid = hasagenre.movieid  and genres.genreid = hasagenre.genreid and
      genres.name = "Comedy";

CREATE TABLE query8 AS
SElECT AVG(ratings.rating) as average
FROM ratings, query8helper
WHERE query8helper.movieid = ratings.movieid;


CREATE TABLE query9 AS
SElECT ratings.movieid, ratings.rating
FROM ratings
WHERE ratings.userid = :v1;
