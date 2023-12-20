--- Analysis Phase ---

--- Riders by member and causal users ---
Select
COUNT(ride_id) AS no_of_riders,
member_casual
FROM bike_share
Group By member_casual

--- rideable type by members and casual users ---
Select
COUNT(ride_id) as no_of_riders,
rideable_type,
member_casual
FROM bike_share
Group by
rideable_type,
member_casual
Order by
Count(ride_id) DESC

--- Mostly used start station by members and casual users ---
Select top 10
Count(ride_id) as no_of_rides,
start_station_name,
member_casual
FROM bike_share
Group by 
start_station_name,
member_casual
order by
Count(ride_id) DESC

--- Mostly used end station by members and casual users ---
Select top 10
Count(ride_id) as no_of_rides,
end_station_name,
member_casual
FROM bike_share
Group by 
end_station_name,
member_casual
order by
Count(ride_id) DESC

-- Time Analysis start at users by member and casual --

-- Month Analysis starting time --

Select 
Count(ride_id) as no_of_rides,
DATEPART(MONTH, started_at) as started_month,
member_casual
FROM bike_share
Group by
member_casual,
DATEPART(MONTH, started_at)
order by 
COUNT(ride_id) DESC

-- DAY Analysis --

Select 
Count(ride_id) as no_of_rides,
DATEPART(WEEKDAY, started_at) as started_day,
member_casual
FROM bike_share
Group by
member_casual,
DATEPART(WEEKDAY, started_at)
order by 
COUNT(ride_id) DESC

-- Hour Analysis --

Select 
Count(ride_id) as no_of_rides,
DATEPART(HOUR, started_at) as started_Hour,
member_casual
FROM bike_share
Group by
member_casual,
DATEPART(HOUR, started_at)
order by 
COUNT(ride_id) DESC

--- Time Analysis end time at users by member and casual
-- Month Analysis ending time --

Select 
Count(ride_id) as no_of_rides,
DATEPART(MONTH, ended_at) as end_month,
member_casual
FROM bike_share
Group by
member_casual,
DATEPART(MONTH, ended_at)
order by 
COUNT(ride_id) DESC

-- DAY Analysis --

Select 
Count(ride_id) as no_of_rides,
DATEPART(WEEKDAY, ended_at) as end_day,
member_casual
FROM bike_share
Group by
member_casual,
DATEPART(WEEKDAY, ended_at)
order by 
COUNT(ride_id) DESC

-- Hour Analysis --

Select 
Count(ride_id) as no_of_rides,
DATEPART(HOUR, ended_at) as end_Hour,
member_casual
FROM bike_share
Group by
member_casual,
DATEPART(HOUR, ended_at)
order by 
COUNT(ride_id) DESC