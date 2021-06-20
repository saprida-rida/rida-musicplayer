CREATE TABLE tb_artist (
    artist_id SMALLINT(5) NOT NULL AUTO_INCREMENT,
    artist_name CHAR (128)NOT NULL,
    PRIMARY KEY(artist_id)
);

CREATE TABLE tb_album (
    artist_id SMALLINT(5) NOT NULL,
    album_id SMALLINT(4) NOT NULL,
	album_name CHAR(128) NOT NULL,
    PRIMARY KEY(album_id),
    UNIQUE KEY(artist_id),
    FOREIGN KEY(artist_id) REFERENCES tb_artist(artist_id)
);

CREATE TABLE tb_track (
    track_id SMALLINT(3) NOT NULL,
	track_name CHAR(128) NOT NULL,
	artist_id SMALLINT(5) NOT NULL,
	album_id SMALLINT(4) NOT NULL,
	time DECIMAL(5,2) NOT NULL,
    PRIMARY KEY(track_id),
    UNIQUE KEY(artist_id),
	UNIQUE KEY(album_id),
    FOREIGN KEY(artist_id) REFERENCES tb_artist(artist_id),
	FOREIGN KEY(album_id) REFERENCES tb_album(album_id)
);

CREATE TABLE tb_played (
	artist_id SMALLINT(5) NOT NULL,
	album_id SMALLINT(4) NOT NULL,
    track_id SMALLINT(3) NOT NULL,
	played TIMESTAMP,
    PRIMARY KEY(played),
    UNIQUE KEY(artist_id),
	UNIQUE KEY(album_id),
	UNIQUE KEY(track_id),
    FOREIGN KEY(artist_id) REFERENCES tb_artist(artist_id),
	FOREIGN KEY(album_id) REFERENCES tb_album(album_id),
	FOREIGN KEY(track_id) REFERENCES tb_track(track_id)
);


