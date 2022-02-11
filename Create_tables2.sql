create table if not exists albums (
	id serial primary key,
	album_name text not null,
	album_year integer check(album_year > 0)
);

create table if not exists singers (
	id serial primary key,
	singer_name text unique not null,
	album_id integer references albums(id)
);

create table if not exists styles (
	id serial primary key,
	style_name text not null,
	singer_id integer references singers(id)
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


create table if not exists departments (
	id serial primary key,
	dep_name text not null 
);

create table if not exists employees (
	id serial primary key,
	employee_name text not null,
	dep_id integer references departments(id),
	boss_id integer references bosses(id)
);

create table if not exists bosses (
	id serial primary key,
	exployee_boss integer references employees(employee_id)
);
