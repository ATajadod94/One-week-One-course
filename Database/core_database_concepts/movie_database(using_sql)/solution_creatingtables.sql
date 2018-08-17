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
    tagid INTEGER NOT NULL,
    content TEXT NOT NULL,
	PRIMARY KEY (tagid)
);

CREATE TABLE genres (
    genreid INTEGER NOT NULL,
    name TEXT NOT NULL,
    PRIMARY KEY (genreid)
);

CREATE TABLE ratings (
    userid INTEGER NOT NULL,
    movieid INTEGER NOT NULL,
    rating NUMERIC NOT NULL,
    timestamp BIGINT NOT NULL,
    PRIMARY KEY (userid, movieid),
    FOREIGN KEY (userid) REFERENCES users(userid),
    FOREIGN KEY (movieid) REFERENCES movies(movieid),
    CONSTRAINT rating CHECK (rating>=0 AND rating<=5)
);

CREATE TABLE tags (
    userid INTEGER NOT NULL,
    movieid INTEGER NOT NULL,
    tagid INTEGER NOT NULL,
    timestamp BIGINT,
    PRIMARY KEY (userid, movieid, tagid),
    FOREIGN KEY (userid) REFERENCES users(userid),
    FOREIGN KEY (movieid) REFERENCES movies(movieid),
    FOREIGN KEY (tagid) REFERENCES taginfo(tagid)
);

CREATE TABLE hasagenre (
  movieid INTEGER NOT NULL,
  genreid INTEGER NOT NULL,
  PRIMARY KEY (movieid, genreid),
  FOREIGN KEY (movieid) REFERENCES movies(movieid),
  FOREIGN KEY (genreid) REFERENCES genres(genreid)
);
