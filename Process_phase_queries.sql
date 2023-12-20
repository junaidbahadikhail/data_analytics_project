--- process phase ---

-- identify and removing checking null values--
-- datatypes--

SELECT * 
FROM dbo.bike_share
WHERE 
ride_id is NULL
OR  rideable_type is null
OR started_at is null
OR ended_at is null
OR start_station_name IS NULL
OR end_station_name IS NULL
OR member_casual IS NULL ;

--Removing null values if exist 

DELETE 
FROM dbo.bike_share
WHERE 
ride_id is NULL
OR  rideable_type is null
OR started_at is null
OR ended_at is null
OR start_station_name IS NULL
OR end_station_name IS NULL
OR member_casual IS NULL

--identify and removing duplicates --

Select 
Count(*) AS DuplicateCount
FROM bike_share
GROUP BY 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
HAVING COUNT(*)>1

