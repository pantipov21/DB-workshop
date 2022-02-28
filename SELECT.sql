select album_name, album_year from albums 
	where album_year=2018;
	
select track_name, duration from tracks 
	order by duration desc limit 1;
	
select track_name from tracks 
	where duration >= 3.5*60;	
	
select collection_name from collections 
	where collection_year BETWEEN 2018 and 2020;
	
select singer_name from singers 
	where singer_name not like '%% %%';	
	
select track_name from tracks 
	where track_name like '%%мой%%';
	
SELECT count(singer_id), style_id FROM singers_styles GROUP BY style_id;

SELECT count(tracks.id) FROM tracks
	JOIN albums ON albums.id = tracks.album_id
	WHERE albums.album_year>=2019 AND albums.album_year<=2020;
	
SELECT album_id, avg(duration) FROM tracks
	GROUP BY album_id ORDER BY album_id;	
	
SELECT DISTINCT singer_id, album_name, album_year FROM albums_singers
	JOIN albums ON album_id = albums.id
	WHERE album_year != 2020
	ORDER BY singer_id;
	
SELECT DISTINCT c.collection_name FROM collections AS c
	LEFT JOIN collection_tracks AS ct ON c.id = ct.collection_id
	LEFT JOIN tracks AS t ON t.id = ct.track_id
	LEFT JOIN albums AS a ON a.id = t.album_id
	LEFT JOIN albums_singers AS am ON am.album_id = a.id
	LEFT JOIN singers AS m ON m.id = am.singer_id
	WHERE m.singer_name LIKE '%%3%%'
	ORDER BY c.collection_name
	
SELECT album_name FROM albums
	LEFT JOIN albums_singers ON albums.id = albums_singers.album_id
	LEFT JOIN singers ON singers.id = albums_singers.singer_id
	LEFT JOIN singers_styles ON singers.id = singers_styles.singer_id
	LEFT JOIN styles ON styles.id = singers_styles.style_id
	GROUP BY album_name
	HAVING count(DISTINCT styles.style_name) > 1
	ORDER BY album_name;	
	
SELECT track_name FROM tracks
	LEFT JOIN collection_tracks ON tracks.id = collection_tracks.track_id
	WHERE collection_tracks.track_id IS NULL;


SELECT singers.singer_name, tracks.duration FROM tracks
	LEFT JOIN albums ON albums.id = tracks.album_id
	LEFT JOIN albums_singers ON albums_singers.album_id = albums.id
	LEFT JOIN singers ON singers.id = albums_singers.singer_id
	GROUP BY singers.singer_name, tracks.duration
	HAVING tracks.duration = (SELECT min(duration) FROM tracks);


SELECT DISTINCT albums.album_name FROM albums 
	LEFT JOIN tracks ON tracks.album_id = albums.id
	WHERE tracks.album_id IN (
	    SELECT album_id
	    FROM tracks
	    GROUP BY album_id
	    HAVING count(id) = (
		SELECT count(id) FROM tracks
		GROUP BY album_id
		ORDER BY count
		LIMIT 1
	    )
	)
	ORDER BY albums.album_name;
