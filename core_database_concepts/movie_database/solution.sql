CREATE TABLE users (
    userid INTEGER,
    name TEXT,
    PRIMARY KEY (userid)
);

CREATE TABLE movies (
    movieid INTEGER,
    title TEXT,
    PRIMARY KEY (movieid)
);

CREATE TABLE taginfo (
    tagid INTEGER,
    content TEXT,
);

CREATE TABLE genres (
    genreid INTEGER,
    name TEXT,
    PRIMARY KEY (genreid)
);

CREATE TABLE ratings (
    userid INTEGER,
    movieid INTEGER,
    rating NUMERIC,
    timestamp BIGINT,
    FOREIGN KEY (userid) REFERENCES users(userid),
    FOREIGN KEY (movieid) REFERENCES movies(movieid)
);

CREATE TABLE tags (
    userid INTEGER,
    movieid INTEGER,
    tagid INTEGER,
    timestamp BIGINT,
    FOREIGN KEY (userid) REFERENCES users(userid),
    FOREIGN KEY (movieid) REFERENCES movies(movieid),
    FOREIGN KEY (tagid) REFERENCES taginfo(tagid)
);

CREATE TABLE hasagenre (
  movieid INTEGER,
  genreid INTEGER,
  FOREIGN KEY (movieid) REFERENCES movies(movieid),
  FOREIGN KEY (genreid) REFERENCES genres(genreid),
);
