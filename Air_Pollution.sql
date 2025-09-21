-- Top 5 Busiest Locations by Total Vehicles
SELECT Location,
SUM(VehicleCount) as TotalVehicles
From optimum-courier-472707-k9.smart_city_data.synthetic_traffic_air_quality
Group by Location
Order by TotalVehicles DESC
Limit 5;

-- Average Pollution Levels by Location

SELECT Location,
Round(Avg(PM2_5),2) as Avg_PM2_5,
Round(Avg(PM10),2) as Avg_PM10,
Round(Avg(NO2),2) as Avg_NO2
From optimum-courier-472707-k9.smart_city_data.synthetic_traffic_air_quality
Group by Location
Order by Avg_PM2_5 DESC
Limit 5;

-- Hourly Traffic Trends
SELECT 
  Location,
  EXTRACT(HOUR FROM Time) AS Hourly_Traffic,
  Avg(VehicleCount) AS AVg_Vehicle
FROM 
  `optimum-courier-472707-k9.smart_city_data.synthetic_traffic_air_quality`
GROUP BY 
  Location, Hourly_Traffic
ORDER BY 
  Hourly_Traffic;

-- Correlation Between Traffic and Pollution
SELECT 
  ROUND(CORR(VehicleCount, PM2_5), 2) AS Corr_Vehicle_PM2_5,
  ROUND(CORR(VehicleCount, PM10), 2) AS Corr_Vehicle_PM10,
  ROUND(CORR(VehicleCount, NO2), 2) AS Corr_Vehicle_NO2
FROM 
  `optimum-courier-472707-k9.smart_city_data.synthetic_traffic_air_quality`;

  -- Top 3 Most Polluted Hours of the Day
  SELECT 
EXTRACT(HOUR FROM Time) AS Hours,
  Round(Avg(PM2_5),2) as Avg_PM2_5,
Round(Avg(PM10),2) as Avg_PM10,
Round(Avg(NO2),2) as Avg_NO2
FROM `optimum-courier-472707-k9.smart_city_data.synthetic_traffic_air_quality`
GROUP BY Hours
ORDER BY Hours DESC 
  Limit 3;

-- Daily Traffic & Pollution Trends

SELECT 
  Location,
  EXTRACT(HOUR FROM Time) AS Hourly_Traffic,
  Avg(VehicleCount) AS AVg_Vehicle,
    Round(Avg(PM2_5),2) as Avg_PM2_5,
Round(Avg(PM10),2) as Avg_PM10,
Round(Avg(NO2),2) as Avg_NO2
FROM 
  `optimum-courier-472707-k9.smart_city_data.synthetic_traffic_air_quality`
GROUP BY 
  Location, Hourly_Traffic
ORDER BY 
  Hourly_Traffic;

-- Location vs. Pollution Heatmap (Top 5 Polluted Locations)
SELECT Location,
    Round(Max(PM2_5),2) as Max_PM2_5,
Round(Max(PM10),2) as Max_PM10,
Round(Max(NO2),2) as Max_NO2
From optimum-courier-472707-k9.smart_city_data.synthetic_traffic_air_quality
Group by Location
Order by Max_Pm2_5 DESC
Limit 5;



