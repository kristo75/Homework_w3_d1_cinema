DROP TABLE albums;
DROP TABLE artist;

CREATE TABLE artist (
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  id SERIAL4 PRIMARY KEY
);

CREATE TABLE albums (
  album_name VARCHAR(255),
  genre VARCHAR(255),
  id SERIAL4 PRIMARY KEY,
  artist_id INT4 REFERENCES artist(id)
);
