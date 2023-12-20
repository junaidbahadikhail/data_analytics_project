USE [cyclistic_bike_share]
GO

SELECT [ride_id]
      ,[rideable_type]
      ,[start_station_name]
      ,[end_station_name]
      ,[start_date]
      ,[end_date]
      ,[month]
      ,[duration]
      ,[member_casual]
  FROM [dbo].[bike_ride]

GO

