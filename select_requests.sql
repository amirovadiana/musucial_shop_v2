SELECT treck_name, duration from treck
WHERE duration = (SELECT MAX(duration) FROM treck);

SELECT treck_name, duration FROM treck
WHERE duration >= 210
ORDER BY duration;

SELECT collection_name, release_year FROM collection
WHERE release_year BETWEEN '2018-01-01' AND '2020-12-31';

SELECT artist_name FROM artist
WHERE artist_name NOT LIKE '% %';

SELECT treck_name FROM treck
WHERE string_to_array(lower(treck_name), ' ') && ARRAY ['my', 'мой'];



SELECT genre_name, COUNT(artist_id) FROM artist_genre ag
RIGHT JOIN genre g ON ag.genre_id = g.genre_id
GROUP BY genre_name;

SELECT COUNT(treck_id) FROM treck t
JOIN album a ON a.album_id = t.album_id
WHERE release_year BETWEEN '2019-01-01' AND '2020-12-31';

SELECT album_name, round(AVG(duration), 2) FROM treck t
JOIN album a ON t.album_id = a.album_id
GROUP BY album_name;

SELECT artist_name FROM artist
WHERE artist_name NOT IN
	(SELECT artist_name FROM artist ar
	JOIN artist_album aa ON ar.artist_id = aa.artist_id
	JOIN album al ON al.album_id = aa.album_id
	WHERE al.release_year BETWEEN '2020-01-01' AND '2020-12-31');

SELECT DISTINCT collection_name FROM collection c
JOIN treck_collection tc ON c.collection_id = tc.collection_id
JOIN treck t ON tc.treck_id = t.treck_id
JOIN album a ON t.album_id = a.album_id
JOIN artist_album aa ON a.album_id = aa.album_id
JOIN artist ar ON aa.artist_id = ar.artist_id
WHERE collection_name LIKE '%Astropilot%';



SELECT album_name, COUNT(*) FROM album a
JOIN artist_album aa ON a.album_id = aa.album_id
JOIN artist ON artist.artist_id = aa.artist_id
JOIN artist_genre ag ON aa.artist_id = ag.artist_id
JOIN genre g ON ag.genre_id = g.genre_id
GROUP BY album_name, artist.artist_id
having COUNT(DISTINCT genre_name) > 1;

SELECT treck_name FROM treck t
FULL JOIN treck_collection tc ON t.treck_id = tc.treck_id
FULL JOIN collection c ON tc.collection_id = c.collection_id
WHERE collection_name IS NULL;

SELECT a.artist_name, t.duration FROM artist a
	JOIN artist_album aa ON a.artist_id = aa.artist_id
	JOIN album al ON aa.album_id = al.album_id
	JOIN treck t ON al.album_id = t.album_id
WHERE duration = (SELECT min(duration) from treck t
JOIN artist_album ON aa.album_id = t.album_id);

SELECT a.album_name FROM album a
JOIN treck t ON a.album_id = t.album_id
GROUP BY a.album_id
HAVING COUNT(treck_id) = (SELECT COUNT(treck_id) FROM treck
						GROUP BY album_id
						ORDER BY 1
						LIMIT 1);