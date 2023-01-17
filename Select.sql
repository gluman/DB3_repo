
--название и год выхода альбомов, вышедших в 2018 году; +
--SELECT name_album, year_album  FROM albums
--WHERE year_album BETWEEN '2018-01-01' AND '2018-12-31';


--название и продолжительность самого длительного трека; +
--SELECT name_track, time_track  FROM tracks 
--WHERE time_track = (SELECT MAX(time_track) FROM tracks);


--название треков, продолжительность которых не менее 3,5 минуты;
--SELECT name_track FROM tracks
--WHERE time_track >= '00:03:30';


--названия сборников, вышедших в период с 2018 по 2020 год включительно;
--SELECT name_collection FROM collections
--WHERE year_collection BETWEEN '2018-01-01' AND '2020-12-31';


--исполнители, чье имя состоит из 1 слова;
--SELECT name_singer FROM singers
--WHERE split_part(name_singer, ' ', 2) = ''


--название треков, которые содержат слово "мой"/"my".
SELECT name_track FROM tracks
WHERE  name_track ILIKE  '%my%' OR name_track ILIKE  '%мой%';










