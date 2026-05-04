create database FlightDB
use FlightDB

select * from Flight_Booking

/* 1. Total Flights & Revenue.*/
SELECT 
    COUNT(*) AS Total_Flights,
    SUM(price) AS Total_Revenue
FROM Flight_Booking;

/*2. Average Ticket Price by Airline.*/
SELECT 
    airline,
    AVG(price) AS Avg_Price
FROM Flight_Booking
GROUP BY airline
ORDER BY Avg_Price DESC;

/*3. Price Trend by Days Left*/
SELECT 
    days_left,
    AVG(price) AS Avg_Price
FROM Flight_Booking
GROUP BY days_left
ORDER BY days_left;

/*4. Stops Impact on Price*/
SELECT 
    stops,
    COUNT(*) AS Total_Flights,
    AVG(price) AS Avg_Price
FROM Flight_Booking
GROUP BY stops;

/*5. Class-wise Price Comparison*/
SELECT 
    class,
    AVG(price) AS Avg_Price
FROM Flight_Booking
GROUP BY class;

/*6. Most Expensive Routes.*/
SELECT TOP 10
    source_city,
    destination_city,
    AVG(price) AS Avg_Price
FROM Flight_Booking
GROUP BY source_city, destination_city
ORDER BY Avg_Price DESC;

/*7. Departure Time Analysis.*/
SELECT 
    departure_time,
    AVG(price) AS Avg_Price
FROM Flight_Booking
GROUP BY departure_time
ORDER BY Avg_Price DESC;

/*8. Rank Airlines by Price.*/
select 
  airline,
  AVG(price) as avg_price,
  Rank() over(order by AVG(price) desc) as Price_Rank
from flight_Booking
group by airline;

/*9. Price Category (Case Statement).*/
SELECT 
    airline,
    price,
    CASE 
        WHEN price > 10000 THEN 'Expensive'
        WHEN price BETWEEN 5000 AND 10000 THEN 'Moderate'
        ELSE 'Cheap'
    END AS Price_Category
FROM Flight_Booking;

/*10.Running Average Price Trend*/
SELECT 
    days_left,
    AVG(price) AS Avg_Price,
    AVG(AVG(price)) OVER (ORDER BY days_left ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS Running_Avg
FROM Flight_Booking
GROUP BY days_left;

/*11.Identify Premium Airlines.*/
SELECT airline
FROM Flight_Booking
GROUP BY airline
HAVING AVG(price) > (
    SELECT AVG(price) FROM Flight_Booking
);




