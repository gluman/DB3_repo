INSERT INTO public.tracks (name_track,album_id,time_track) VALUES
	 ('The Look',1,'00:03:56'),
	 ('Wish I Could Fly',2,'00:04:40'),
	 ('Smack My Bitch Up',3,'00:05:43'),
	 ('Diesel Power',3,'00:04:18'),
	 ('Escape Me',4,'00:04:17'),
	 ('I Will Be Here',4,'00:03:26'),
	 ('Everything',5,'00:07:01'),
	 ('dance4life',5,'00:05:22'),
	 ('Sexy Bitch',6,'00:03:16'),
	 ('Memories',6,'00:03:28');
INSERT INTO public.tracks (name_track,album_id,time_track) VALUES
	 ('Dont Leave Me Alone',7,'00:03:04'),
	 ('Flames',7,'00:03:15'),
	 ('Russian Roulette',8,'00:03:47'),
	 ('Te Amo',8,'00:03:28'),
	 ('Leave in Silence',9,'00:04:51'),
	 ('Just Dance',10,'00:04:02'),
	 ('Paparazzi',10,'00:03:28'),
	 ('Summer Days',11,'00:02:51');

INSERT INTO public.albums (name_album,year_album) VALUES
	 ('Look Sharp!','1988-01-01'),
	 ('Have a Nice Day','1999-01-01'),
	 ('The Fat of the Land','1997-01-01'),
	 ('Kaleidoscope','2009-01-01'),
	 ('Elements of Life','2007-01-01'),
	 ('One Love','2009-01-01'),
	 ('7 - album','2018-01-01'),
	 ('Rated R','2009-01-01'),
	 ('A Broken Frame','1982-01-01'),
	 ('The Fame','2008-01-01');
INSERT INTO public.albums (name_album,year_album) VALUES
	 ('Sentio','2020-01-01');

INSERT INTO public.collections (name_collection,year_collection) VALUES
	 ('First collection','1999-01-01'),
	 ('Fun collection','1999-01-01'),
	 ('Dance collection','1997-01-01'),
	 ('80x collection','2009-01-01'),
	 ('Romantic collection','2007-01-01'),
	 ('Love tracks','2012-01-01'),
	 ('Best of the best','2018-01-01'),
	 ('Gold tracks','2010-01-01'),
	 ('Top5','2000-01-01'),
	 ('New Year collection','2023-01-01');
	
INSERT INTO public.music_genres (name_mg) VALUES
	 ('pop-music'),
	 ('jaz'),
	 ('dance'),
	 ('hip hop'),
	 ('popular'),
	 ('folk');

INSERT INTO public.singers (name_singer) VALUES
	 ('Roxette'),
	 ('Tiesto'),
	 ('David Guetta'),
	 ('Rihanna'),
	 ('Depeche mode'),
	 ('Ledy Gaga'),
	 ('Martin Garrix'),
	 ('Prodigy');


INSERT INTO albums_singers (album_id,singer_id) VALUES
	 (1,1),
	 (2,1),
	 (3,2),
	 (4,3),
	 (5,3),
	 (6,4),
	 (7,4),
	 (8,5),
	 (9,6),
	 (10,7);

INSERT INTO genres_singers (mg_id,singer_id) VALUES
	 (5,1),
	 (3,2),
	 (5,3),
	 (4,4),
	 (1,5),
	 (6,6),
	 (1,7);

INSERT INTO collections_tracks (collection_id,track_id) VALUES
	 (1,1),
	 (1,15),
	 (2,3),
	 (2,9),
	 (3,8),
	 (3,16),
	 (4,1),
	 (4,15),
	 (5,2),
	 (5,11);
INSERT INTO collections_tracks (collection_id,track_id) VALUES
	 (5,14),
	 (6,14),
	 (6,13),
	 (7,2),
	 (7,3),
	 (7,9),
	 (8,4),
	 (8,7),
	 (8,17),
	 (8,5);
INSERT INTO collections_tracks (collection_id,track_id) VALUES
	 (8,6),
	 (8,1),
	 (8,10),
	 (9,3),
	 (9,2),
	 (9,17),
	 (9,8),
	 (9,9),
	 (10,6),
	 (10,8);
	