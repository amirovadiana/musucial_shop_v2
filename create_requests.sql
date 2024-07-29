CREATE TABLE IF NOT EXISTS artist(
    artist_id serial PRIMARY KEY,
    artist_name varchar(100) NOT  NULL
);

CREATE TABLE IF NOT EXISTS album(
	album_id serial PRIMARY KEY,
	album_name varchar(160) NOT NULL,
	release_year date NOT NULL CHECK (release_year>'1999-12-31')
);

CREATE TABLE IF NOT EXISTS treck(
	treck_id SMALLINT PRIMARY KEY,
	treck_name varchar(160) NOT NULL,
	duration int NOT NULL CHECK (duration>60),
	album_id int NOT NULL,
	CONSTRAINT album_fk FOREIGN KEY(album_id) REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS genre(
	genre_id serial PRIMARY KEY,
	genre_name varchar(160) NOT NULL
);

CREATE TABLE IF NOT EXISTS collection(
	collection_id serial PRIMARY KEY,
	collection_name varchar(160) NOT NULL,
	release_year date NOT NULL CHECK (release_year>'2009-12-31')
);

CREATE TABLE IF NOT EXISTS treck_collection(
	treck_collection_id serial PRIMARY KEY,
	treck_id SMALLINT NOT NULL,
	collection_id INT NOT NULL,
	CONSTRAINT treck_c FOREIGN KEY(treck_id) REFERENCES treck(treck_id),
	CONSTRAINT collection_t FOREIGN KEY(collection_id) REFERENCES collection(collection_id)
);

CREATE TABLE IF NOT EXISTS artist_genre(
	artist_genre_id serial PRIMARY KEY,
	artist_id int NOT NULL,
	genre_id int NOT NULL,
	CONSTRAINT a_genre FOREIGN KEY(genre_id) REFERENCES genre(genre_id),
	CONSTRAINT g_artist FOREIGN KEY(artist_id) REFERENCES artist(artist_id)
);

CREATE TABLE IF NOT EXISTS artist_album(
	artist_album_id serial PRIMARY KEY,
	artist_id int NOT NULL,
	album_id int NOT NULL,
	CONSTRAINT artist_al FOREIGN KEY(artist_id) REFERENCES artist(artist_id),
	CONSTRAINT album_ar FOREIGN KEY(album_id) REFERENCES album(album_id)
);