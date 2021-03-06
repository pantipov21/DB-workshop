insert into singers(singer_name) values('Исполнитель 1');
insert into singers(singer_name) values('Исполнитель 2');
insert into singers(singer_name) values('Исполнитель 3');
insert into singers(singer_name) values('Исполнитель 4');
insert into singers(singer_name) values('Исполнитель 5');
insert into singers(singer_name) values('Исполнитель 6');
insert into singers(singer_name) values('Исполнитель_7');
insert into singers(singer_name) values('Исполнитель 8');

insert into styles(style_name) values('Жанр_1');
insert into styles(style_name) values('Жанр_2');
insert into styles(style_name) values('Жанр_3');
insert into styles(style_name) values('Жанр_4');
insert into styles(style_name) values('Жанр_5');

insert into albums(album_name, album_year) values('Альбом_1',2016);
insert into albums(album_name, album_year) values('Альбом_2',2016);
insert into albums(album_name, album_year) values('Альбом_3',2017);
insert into albums(album_name, album_year) values('Альбом_4',2018);
insert into albums(album_name, album_year) values('Альбом_5',2019);
insert into albums(album_name, album_year) values('Альбом_6',2019);
insert into albums(album_name, album_year) values('Альбом_7',2020);
insert into albums(album_name, album_year) values('Альбом_8',2021);

insert into collections(collection_name, collection_year) values('Сборник_1',2016);
insert into collections(collection_name, collection_year) values('Сборник_2',2017);
insert into collections(collection_name, collection_year) values('Сборник_3',2018);
insert into collections(collection_name, collection_year) values('Сборник_4',2019);
insert into collections(collection_name, collection_year) values('Сборник_5',2020);
insert into collections(collection_name, collection_year) values('Сборник_6',2021);
insert into collections(collection_name, collection_year) values('Сборник_7',2021);
insert into collections(collection_name, collection_year) values('Сборник_8',2022);

insert into tracks(album_id, track_name, duration) values(1, 'Песня1', 80);
insert into tracks(album_id, track_name, duration) values(1, 'Песня2', 85);
insert into tracks(album_id, track_name, duration) values(2, 'Песня3', 90);
insert into tracks(album_id, track_name, duration) values(2, 'Песня4', 95);
insert into tracks(album_id, track_name, duration) values(3, 'Песня5', 100);
insert into tracks(album_id, track_name, duration) values(3, 'Песня6', 105);
insert into tracks(album_id, track_name, duration) values(4, 'Песня7', 110);
insert into tracks(album_id, track_name, duration) values(4, 'Песня8', 115);
insert into tracks(album_id, track_name, duration) values(5, 'Песня9', 120);
insert into tracks(album_id, track_name, duration) values(5, 'Песня10', 125);
insert into tracks(album_id, track_name, duration) values(6, 'Песня11', 130);
insert into tracks(album_id, track_name, duration) values(6, 'Песня12', 135);
insert into tracks(album_id, track_name, duration) values(7, 'Песня13', 140);
insert into tracks(album_id, track_name, duration) values(7, 'Песня14', 145);
insert into tracks(album_id, track_name, duration) values(8, 'Песня15', 240);
insert into tracks(album_id, track_name, duration) values(8, 'Песня16', 255);
insert into tracks(album_id, track_name, duration) values(8, 'Песня17', 110);

insert into singers_styles(style_id, singer_id) values(1, 1);
insert into singers_styles(style_id, singer_id) values(1, 2);
insert into singers_styles(style_id, singer_id) values(2, 2);
insert into singers_styles(style_id, singer_id) values(3, 3);
insert into singers_styles(style_id, singer_id) values(3, 4);
insert into singers_styles(style_id, singer_id) values(3, 5);
insert into singers_styles(style_id, singer_id) values(4, 6);
insert into singers_styles(style_id, singer_id) values(5, 7);
insert into singers_styles(style_id, singer_id) values(5, 8);

insert into albums_singers(singer_id, album_id) values(1, 1);
insert into albums_singers(singer_id, album_id) values(2, 2);
insert into albums_singers(singer_id, album_id) values(3, 2);
insert into albums_singers(singer_id, album_id) values(4, 3);
insert into albums_singers(singer_id, album_id) values(5, 3);
insert into albums_singers(singer_id, album_id) values(6, 4);
insert into albums_singers(singer_id, album_id) values(7, 4);
insert into albums_singers(singer_id, album_id) values(8, 5);
insert into albums_singers(singer_id, album_id) values(1, 5);
insert into albums_singers(singer_id, album_id) values(2, 6);
insert into albums_singers(singer_id, album_id) values(3, 6);
insert into albums_singers(singer_id, album_id) values(4, 7);
insert into albums_singers(singer_id, album_id) values(5, 7);
insert into albums_singers(singer_id, album_id) values(6, 8);
insert into albums_singers(singer_id, album_id) values(7, 1);
insert into albums_singers(singer_id, album_id) values(8, 3);
insert into albums_singers(singer_id, album_id) values(1, 4);


insert into collection_tracks(collection_id, track_id) values(1, 1);
insert into collection_tracks(collection_id, track_id) values(1, 2);
insert into collection_tracks(collection_id, track_id) values(1, 3);
insert into collection_tracks(collection_id, track_id) values(2, 3);
insert into collection_tracks(collection_id, track_id) values(2, 4);
insert into collection_tracks(collection_id, track_id) values(2, 5);
insert into collection_tracks(collection_id, track_id) values(3, 5);
insert into collection_tracks(collection_id, track_id) values(3, 6);
insert into collection_tracks(collection_id, track_id) values(3, 7);
insert into collection_tracks(collection_id, track_id) values(4, 8);
insert into collection_tracks(collection_id, track_id) values(4, 9);
insert into collection_tracks(collection_id, track_id) values(5, 10);
insert into collection_tracks(collection_id, track_id) values(5, 11);
insert into collection_tracks(collection_id, track_id) values(5, 12);
insert into collection_tracks(collection_id, track_id) values(6, 13);
insert into collection_tracks(collection_id, track_id) values(6, 14);
insert into collection_tracks(collection_id, track_id) values(6, 15);
insert into collection_tracks(collection_id, track_id) values(7, 1);
insert into collection_tracks(collection_id, track_id) values(7, 2);
insert into collection_tracks(collection_id, track_id) values(7, 16);
insert into collection_tracks(collection_id, track_id) values(8, 3);
insert into collection_tracks(collection_id, track_id) values(8, 4);
insert into collection_tracks(collection_id, track_id) values(8, 10);
