CREATE TABLE IF NOT EXISTS music_genres(
	mg_id SERIAL PRIMARY KEY,
	name_mg TEXT NOT null
);

CREATE TABLE IF NOT EXISTS singers (
	singer_id SERIAL PRIMARY KEY,
	name_singer TEXT NOT null
);

CREATE TABLE IF NOT EXISTS albums (
	album_id SERIAL PRIMARY KEY,
	name_album TEXT NOT null,
	year_album DATE NOT null
);

CREATE TABLE IF NOT EXISTS tracks (
	track_id SERIAL PRIMARY KEY,
	name_track TEXT NOT null,
	album_id INTEGER NOT null references albums(album_id),
	time_track INTERVAL NOT null
);

CREATE TABLE IF NOT EXISTS collections (
	collection_id SERIAL PRIMARY KEY,
	name_collection TEXT NOT null,
	year_collection DATE NOT null
);

CREATE TABLE IF NOT EXISTS genres_singers (
	gs_id SERIAL PRIMARY KEY,
	mg_id INTEGER NOT NULL REFERENCES music_genres(mg_id),
	singer_id INTEGER NOT NULL REFERENCES singers(singer_id)
);

CREATE TABLE IF NOT EXISTS albums_singers (
	as_id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES music_genres(mg_id),
	singer_id INTEGER NOT NULL REFERENCES singers(singer_id)
);

CREATE TABLE IF NOT EXISTS collections_tracks (
	ct_id SERIAL PRIMARY KEY,
	collection_id INTEGER NOT NULL REFERENCES collections(collection_id),
	track_id INTEGER NOT NULL REFERENCES tracks(track_id)
);




