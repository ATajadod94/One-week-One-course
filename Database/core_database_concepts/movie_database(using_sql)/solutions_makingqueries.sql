CREATE TABLE query1 AS
SELECT
  genres.name as name,
  COUNT(hasagenre.movieid) as moviecount
FROM
  hasagenre,
  genres
WHERE
  genres.genreid = hasagenre.genreid
GROUP BY
  hasagenre.genreid;


CREATE TABLE query2 AS
SELECT
  genres.name as name,
  cast(AVG(ratings.rating) AS NUMERIC) AS rating
FROM
  genres,
  ratings,
  hasagenre
WHERE
  ratings.movieid = hasagenre.movieid
  and hasagenre.genreid = genres.genreid
GROUP BY
  genres.genreid;


CREATE TABLE query3 AS
SELECT
  movies.title as title,
  cast(COUNT(ratings.rating) AS BIGINT) AS countofratings
FROM
  movies,
  ratings
where
  ratings.movieid = movies.movieid
GROUP BY
  movies.movieid
HAVING
  countofratings > 10;

CREATE TABLE query4 AS
SELECT
  movies.movieid as movieid,
  movies.title as title
FROM
  movies,
  genres,
  hasagenre
WHERE
  movies.movieid = hasagenre.movieid
  and genres.name = 'Comedy'
  and genres.genreid = hasagenre.genreid;


CREATE TABLE query5 AS
SELECT
  movies.title as title,
  cast(AVG(ratings.rating) AS numeric) AS average
FROM
  movies,
  ratings
WHERE
  ratings.movieid = movies.movieid
GROUP BY
  movies.title;


CREATE TABLE query6 AS
SELECT
  cast(AVG(ratings.rating) AS NUMERIC) AS average
FROM
  query4,
  ratings
WHERE
  query4.movieid = ratings.movieid;


CREATE TABLE query7helper AS
SELECT
  movies.movieid
FROM
  movies,
  genres,
  hasagenre
WHERE
  movies.movieid = hasagenre.movieid
  and genres.genreid = hasagenre.genreid
  and genres.name = "Comedy"
INTERSECT
SELECT
  movies.movieid
FROM
  movies,
  genres,
  hasagenre
WHERE
  movies.movieid = hasagenre.movieid
  and genres.genreid = hasagenre.genreid
  and genres.name = "Romance";


CREATE TABLE query7 AS
SElECT
  cast(AVG(ratings.rating) AS numeric) as average
FROM
  ratings,
  query7helper
WHERE
  query7helper.movieid = ratings.movieid;



CREATE TABLE query8helper AS
SELECT
  movies.movieid
FROM
  movies,
  genres,
  hasagenre
WHERE
  movies.movieid = hasagenre.movieid
  and genres.genreid = hasagenre.genreid
  and genres.name = "Romance"
EXCEPT
SELECT
  movies.movieid
FROM
  movies,
  genres,
  hasagenre
WHERE
  movies.movieid = hasagenre.movieid
  and genres.genreid = hasagenre.genreid
  and genres.name = "Comedy";


CREATE TABLE query8 AS
SElECT
  cast(AVG(ratings.rating) AS NUMERIC) as average
FROM
  ratings,
  query8helper
WHERE
  query8helper.movieid = ratings.movieid;


CREATE TABLE query9 AS
SElECT
  ratings.movieid as movieid,
  cast(ratings.rating as Numeric) AS rating
FROM
  ratings
WHERE
  ratings.userid =:v1;



CREATE TABLE recommendation AS
SElECT
  ratings.movieid,
  ratings.rating
FROM
  ratings
WHERE
  ratings.userid = :v1;

SElECT
  ratings.movieid,
  ratings.rating
FROM
  ratings
WHERE
  ratings.userid = :v1;


drop table query7helper;

drop table query8helper;


