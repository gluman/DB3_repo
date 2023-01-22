--количество исполнителей в каждом жанре;
SELECT mg.name_mg, COUNT(gs.gs_id) FROM genres_singers gs 
LEFT JOIN music_genres mg  ON mg.mg_id = gs.mg_id 
GROUP BY mg.name_mg 


--количество треков, вошедших в альбомы 2019-2020 годов;
SELECT COUNT(track_id) FROM tracks t 
LEFT JOIN albums a ON t.album_id = a.album_id 
WHERE a.year_album BETWEEN '2019-01-01' AND '2020-12-31';

--средняя продолжительность треков по каждому альбому;

SELECT a.name_album, AVG(t.time_track) FROM albums a 
LEFT JOIN tracks t ON t.album_id = a.album_id 
GROUP BY a.album_id 

--все исполнители, которые не выпустили альбомы в 2020 году;
SELECT DISTINCT name_singer  FROM singers s
FULL JOIN albums_singers as2 ON s.singer_id  = as2.singer_id 
FULL JOIN albums a ON a.album_id = as2.album_id 
WHERE a.year_album NOT BETWEEN '2020-01-01' AND '2021-01-01'
GROUP BY s.name_singer


--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT c.name_collection  FROM collections c
JOIN collections_tracks ct ON c.collection_id = ct.collection_id
JOIN tracks t ON t.track_id = ct.track_id 
JOIN albums a ON a.album_id = t.album_id 
JOIN albums_singers as2 ON as2.album_id = a.album_id
JOIN singers s ON s.singer_id = as2.singer_id
WHERE s.name_singer = 'Prodigy';


--название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT a.name_album FROM albums a
JOIN albums_singers as2 ON as2.album_id = a.album_id
JOIN singers s ON s.singer_id = as2.singer_id 
JOIN genres_singers gs ON gs.singer_id = as2.singer_id
GROUP BY a.name_album 
HAVING count(gs.mg_id) > 1

--наименование треков, которые не входят в сборники;
SELECT * FROM tracks t
LEFT JOIN collections_tracks ct ON t.track_id = ct.track_id 
WHERE ct.collection_id IS NULL

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
SELECT name_singer  FROM singers s
JOIN albums_singers as2 ON s.singer_id = as2.singer_id 
JOIN tracks t ON t.album_id = as2.album_id 
WHERE t.time_track = (SELECT MIN(t2.time_track) FROM tracks t2) 

--название альбомов, содержащих наименьшее количество треков.

WITH q AS (SELECT name_album, count(t.track_id) cnt FROM albums a 
JOIN tracks t ON t.album_id = a.album_id
GROUP BY name_album)
SELECT name_album, cnt FROM q
WHERE cnt = (SELECT MIN(cnt) FROM q)





