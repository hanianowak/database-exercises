USE codeup_test_db;


DROP TABLE IF EXISTS albums;

-- Create an albums table with the following columns:
--
-- id — auto incrementing unsigned integer primary key
-- artist — string for storing the recording artist name
-- name — string for storing a record name
-- release_date — integer representing year record was released
-- sales — floating point value for number of records sold (in millions)
-- genre — string for storing the record's genre(s)


CREATE TABLE albums (
  id int unsigned not null auto_increment,
  artist varchar(100),
  name varchar(100),
  release_date integer,
  sales float,
  genre varchar(100),
  primary key (id),
  unique (name, artist)
);