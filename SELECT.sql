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