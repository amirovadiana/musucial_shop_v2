INSERT INTO genre(genre_id, genre_name) VALUES
	(1, 'rock'),
	(2, 'pop'),
	(3, 'house'),
	(4, 'electro'),
	(5, 'ambient');

INSERT INTO artist(artist_id, artist_name) VALUES
	(1, 'Queen'),
	(2, 'Lana Del Rey'),
	(3, 'The Blaze'),
	(4, 'Пикник'),
	(5, 'Astropilot'),
	(6, 'Cloower Wooma');
	

INSERT INTO artist_genre(artist_genre_id, artist_id, genre_id) VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3),
	(4, 4, 1),
	(5, 5, 4),
	(6, 6, 5);

INSERT INTO album(album_id, album_name, release_year) VALUES
	(1, 'Bohemian Rhapsody', '2018-10-19'),
	(2, 'Lust For Life', '2017-07-21'),
	(3, 'TERRITORY', '2017-01-01'),
	(4, 'Один на один', '2024-07-19'),
	(5, 'Soul Surfer. Remastered 2019', '2019-08-05');

INSERT INTO artist_album(artist_album_id, artist_id, album_id) VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3),
	(4, 4, 4),
	(5, 5, 5),
	(6, 6, 5);

INSERT INTO treck(treck_id, treck_name, duration, album_id) VALUES
	(1, 'Somebody To Love', 297, 1),
	(2, 'Killer Queen', 181, 1),
	(3, 'Bohemian Rhapsody', 355, 1),
	(4, 'Crazy Little Thing Called Love', 163, 1),
	(5, 'We Will Rock You', 129, 1),
	(6, 'Another One Bites The Dust', 214, 1),
	(7, 'Love', 272, 2),
	(8, 'Lust For Life', 264, 2),
	(9, 'Cherry', 180, 2),
	(10, 'White Mustang', 164, 2),
	(11, 'Summer Bummer', 260, 2),
	(12, 'In My Feelings', 238, 2),
	(13, 'PRELUDE', 112, 3),
	(14, 'TERRITORY',276, 3),
	(15, 'Virile', 321, 3),
	(16, 'INTERLUDE', 93, 3),
	(17, 'JUVENILE', 203, 3),
	(18, 'SPARKS & ASHES', 183, 3),
	(19, 'Один на один', 213, 4),
	(20, 'Вдоль по улице, по бесстыжей', 204, 4),
	(21, 'Ой ты, Солнце, закатись!', 247, 4),
	(22, 'Гитары тихие рыданья', 245, 4),
	(23, 'Тихая надежда', 228, 4),
	(24, 'Ничего, ничего не бойся!', 242, 4),
	(25, 'The Bliss Of Now', 471, 5),
	(26, 'Entering Godmode', 530, 5),
	(27, 'Nature Song', 565, 5),
	(28, 'Starway', 557, 5);
	
INSERT INTO collection(collection_id, collection_name, release_year) VALUES
	(1, 'Rock', '2018-09-30'),
	(2, 'Music of 2017', '2017-04-25'),
	(3, 'Musicial evening', '2020-01-13'),
	(4, 'Hits', '2024-07-22'),
	(5, 'Astropilot & other', '2020-01-05');

INSERT INTO treck_collection(treck_collection_id, treck_id, collection_id) VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 3, 1),
	(4, 4, 1),
	(5, 5, 1),
	(6, 6, 1),
	(7, 19, 1),
	(8, 20, 1),
	(9, 21, 1),
	(10, 22, 1),
	(11, 23, 1),
	(12, 24, 1),
	(13, 7, 2),
	(14, 8, 2),
	(15, 9, 2),
	(16, 10, 2),
	(17, 11, 2),
	(18, 12, 2),
	(19, 13, 2),
	(20, 14, 2),
	(21, 15, 2),
	(22, 16, 2),
	(23, 17, 2),
	(24, 18, 2),
	(25, 3, 3),
	(26, 7, 3),
	(27, 9, 3),
	(28, 11, 3),
	(29, 16, 3),
	(30, 3, 4),
	(31, 5, 4),
	(32, 7, 4),
	(33, 14, 4),
	(34, 19, 4),
	(35, 24, 4),
	(36, 25, 5),
	(37, 27, 5);