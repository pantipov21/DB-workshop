create table if not exists albums (
	id serial primary key,
	album_name text not null,
	album_year integer check(album_year > 0)
);

create table if not exists singers (
	id serial primary key,
	singer_name text unique not null
);

create table if not exists styles (
	id serial primary key,
	style_name text not null
);

create table if not exists tracks (
	id serial primary key,
	album_id integer references albums(id),
	track_name text not null,
	duration integer check (duration > 0)
);

create table if not exists collections (
	id serial primary key,
	collection_name text not null,
	collection_year integer check (collection_year > 0)
);

create table if not exists singers_styles (
    id serial primary key,
    style_id integer references styles(id),
    singer_id integer references singers(id)
);

create table if not exists albums_singers (
    id serial primary key,
    singer_id integer references singers(id),
    album_id integer references albums(id)
);

create table if not exists collection_tracks (
    id serial primary key,
    collection_id integer references collections(id),
    track_id integer references tracks(id)
);
