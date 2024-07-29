SELECT treck_name, MAX(duration) FROM treck
GROUP BY treck_name, duration
ORDER BY duration DESC LIMIT 1;

SELECT treck_name, duration FROM treck
WHERE duration > 210
ORDER BY duration;

SELECT collection_name, release_year FROM collection
WHERE release_year BETWEEN '2018-01-01' AND '2020-12-31';

SELECT artist_name FROM artist
WHERE artist_name NOT LIKE '% %';

SELECT treck_name FROM treck
WHERE treck_name LIKE '%мой%' OR treck_name LIKE '%my%';



SELECT genre_name, COUNT(artist_id) FROM artist_genre ag
LEFT JOIN genre g ON ag.genre_id = g.genre_id
GROUP BY genre_name;

SELECT COUNT(treck_id), release_year FROM treck t
JOIN album a ON a.album_id = t.album_id
WHERE release_year BETWEEN '2019-01-01' AND '2020-12-31'
GROUP BY release_year;

SELECT album_name, round(AVG(duration), 2) FROM treck t
JOIN album a ON t.album_id = a.album_id
GROUP BY album_name;

SELECT artist_name, release_year FROM artist ar
JOIN artist_album aa ON ar.artist_id = aa.artist_id
JOIN album al ON al.album_id = aa.album_id
WHERE release_year NOT BETWEEN '2020-01-01' AND '2020-12-31';

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
GROUP BY album_name
having COUNT(DISTINCT genre_name) > 1;

SELECT treck_name FROM treck t
FULL JOIN treck_collection tc ON t.treck_id = tc.treck_id
FULL JOIN collection c ON tc.collection_id = c.collection_id
WHERE collection_name IS NULL;

SELECT a.artist_name, t.duration FROM artist a
JOIN artist_album aa ON a.artist_id = aa.artist_id
JOIN album al ON aa.album_id = al.album_id
JOIN treck t ON al.album_id = t.album_id
ORDER BY t.duration, artist_name DESC LIMIT 3;

SELECT a.album_name, COUNT(*) FROM treck t
JOIN album a ON t.album_id = a.album_id
GROUP BY album_name
ORDER BY COUNT LIMIT 1;