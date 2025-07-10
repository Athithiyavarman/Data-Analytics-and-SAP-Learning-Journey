-- SQL Aggregations Practice
-- Author: Athithiya Varman


-- ------------------------------------------------------------
1.-- Revising Aggregations - The COUNT() Function
-- ------------------------------------------------------------

SELECT COUNT(*) 
FROM city 
WHERE Population > 100000;

-- ------------------------------------------------------------
2.-- Revising Aggregations - The SUM() Function
-- ------------------------------------------------------------

SELECT SUM(Population) 
FROM city 
WHERE District = "California";

-- ------------------------------------------------------------
3.-- Revising Aggregations - The AVG() Function
-- ------------------------------------------------------------

SELECT AVG(Population) 
FROM city 
WHERE District = "California";

-- ------------------------------------------------------------
4.-- Average Population (Rounded Down)
-- ------------------------------------------------------------

SELECT FLOOR(AVG(Population)) 
FROM city;

-- ------------------------------------------------------------
5.-- Japan Population (Total)
-- ------------------------------------------------------------

SELECT SUM(Population) 
FROM city 
WHERE CountryCode = "JPN";

-- ------------------------------------------------------------
6.-- Population Density Difference (Max - Min)
-- ------------------------------------------------------------

SELECT MAX(Population) - MIN(Population) AS Difference 
FROM city;

-- ------------------------------------------------------------
7.-- Weather Observation Station 2
-- Find total latitude and longitude, rounded to 2 decimal places
-- ------------------------------------------------------------

SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2)
FROM STATION;

-- ------------------------------------------------------------
8.-- Weather Observation Station 13
-- Sum of LAT_N between 38.7880 and 137.2345, truncated to 4 decimals
-- ------------------------------------------------------------

SELECT TRUNCATE(SUM(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;

-- ------------------------------------------------------------
9.-- Weather Observation Station 14
-- Maximum LAT_N below 137.2345, truncated to 4 decimals
-- ------------------------------------------------------------

SELECT TRUNCATE(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345;

-- ------------------------------------------------------------
10.-- Weather Observation Station 15
-- LONG_W corresponding to highest LAT_N under 137.2345, rounded to 4 decimals
-- ------------------------------------------------------------

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N = (
  SELECT MAX(LAT_N)
  FROM STATION
  WHERE LAT_N < 137.2345
);

-- ------------------------------------------------------------
11.-- Weather Observation Station 16
-- Minimum LAT_N greater than 38.7780, rounded to 4 decimals
-- ------------------------------------------------------------

SELECT ROUND(MIN(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7780;

-- ------------------------------------------------------------
12.-- Weather Observation Station 17
-- LONG_W for minimum LAT_N greater than 38.7780, rounded to 4 decimals
-- ------------------------------------------------------------

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N = (
  SELECT MIN(LAT_N)
  FROM STATION
  WHERE LAT_N > 38.7780
);

-- ------------------------------------------------------------
13.-- Weather Observation Station 18
-- Absolute difference of extreme coordinates, rounded to 4 decimals
-- ------------------------------------------------------------

SELECT ROUND(
  ABS(MIN(LAT_N) - MAX(LAT_N)) + 
  ABS(MIN(LONG_W) - MAX(LONG_W)),
  4
)
FROM STATION;

-- ------------------------------------------------------------
14.-- Weather Observation Station 19
-- Euclidean distance between max and min coordinates
-- ------------------------------------------------------------

SELECT ROUND(
  SQRT(
    POWER(MAX(LAT_N) - MIN(LAT_N), 2) + 
    POWER(MAX(LONG_W) - MIN(LONG_W), 2)
  ),
  4
)
FROM STATION;
