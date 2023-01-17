--не менее 8 исполнителей; +
--не менее 5 жанров; +
--не менее 8 альбомов; +
--не менее 15 треков; +
--не менее 8 сборников.+


INSERT INTO singers(name_singer)
VALUES ('Roxette'), ('Progigy'), ('Tiesto'), ('David Guetta'), ('Rihanna'), ('Depeche mode'), ('Ledy Gaga');

INSERT INTO	music_genres (name_mg)
VALUES ('pop-music'), ('jaz'), ('dance'), ('hip hop'), ('popular'), ('folk');

INSERT INTO albums(name_album, year_album)
VALUES ('Look Sharp!', '1988-01-01'), -- Roxete
('Have a Nice Day', '1999-01-01'),  -- Roxete
('The Fat of the Land', '1997-01-01'), -- Prodigy
('Kaleidoscope', '2009-01-01'), -- Tieso
('Elements of Life','2007-01-01'), -- Tieso
('One Love', '2009-01-01'), -- David Guetta
('7 - album', '2018-01-01'), -- David Guetta
('Rated R', '2009-01-01'), -- Rihanna
('A Broken Frame', '1982-01-01'), -- Depeche MODE
('The Fame', '2008-01-01');   -- Ledy Gaga

INSERT INTO tracks(name_track, album_id, time_track)
VALUES ('The Look', 1, '00:03:56'),  
('Wish I Could Fly', 2, '00:04:40'), 
('Smack My Bitch Up', 3, '00:05:43'),  
('Diesel Power' , 3, '00:04:18'),  
('Escape Me', 4, '00:04:17'),  
('I Will Be Here', 4, '00:03:26'),  
('Everything' , 5, '00:07:01'),  
('dance4life' , 5, '00:05:22'),  
('Sexy Bitch', 6, '00:03:16'),  
('Memories', 6, '00:03:28'),  
('Dont Leave Me Alone', 7, '00:03:04'),  
('Flames', 7, '00:03:15'),  
('Russian Roulette', 8, '00:03:47'),  
('Te Amo', 8, '00:03:28'),  
('Leave in Silence', 9, '00:04:51'),  
('Just Dance', 10, '00:04:02'),  
('Paparazzi', 10, '00:03:28');

INSERT INTO collections (name_collection, year_collection)
VALUES ('First collection', '1999-01-01'), 
('Fun collection', '1999-01-01'), 
('Dance collection', '1997-01-01'), 
('80x collection', '2009-01-01'), 
('Romantic collection','2007-01-01'), 
('Love tracks', '2012-01-01'), 
('Best of the best', '2018-01-01'), 
('Gold tracks', '2010-01-01'), 
('Top5', '2000-01-01'), 
('New Year collection', '2023-01-01');  











