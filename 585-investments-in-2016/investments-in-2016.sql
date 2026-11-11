# Write your MySQL query statement below

Select Round(sum(tiV_2016),2) AS tiv_2016

FROM insurance
WHERE (lat ,lon) IN (
    SELECT lat, lon 
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
)

AND tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance
    GROUP by tiv_2015
    HAVING COUNT(*) > 1 

);

