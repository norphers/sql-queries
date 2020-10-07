SELECT COUNT(*)
FROM flights;

SELECT Origin, AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides
FROM flights
GROUP BY Origin;

SELECT Origin, colYear, ColMonth, AVG(ArrDelay) AS prom_arribades
FROM flights
GROUP BY Origin, ColYear, colMonth					
ORDER BY Origin ASC, colYear ASC, ColMonth ASC;

SELECT City, colYear, ColMonth, AVG(ArrDelay) AS prom_arribades
FROM flights INNER JOIN usairports ON flights.origin=usairports.IATA
GROUP BY City, ColYear, colMonth
ORDER BY City ASC, colYear ASC, ColMonth ASC;

SELECT UniqueCarrier, colYear, ColMonth, SUM(Cancelled) AS total_cancelled
FROM flights 
GROUP BY UniqueCarrier, ColYear, colMonth
HAVING SUM(Cancelled)>=1									
ORDER BY total_cancelled DESC;

SELECT TailNum, SUM(Distance) AS totalDistance			
FROM flights 
WHERE TailNum!=""                                  
GROUP BY TailNum					
ORDER BY totalDistance DESC
LIMIT 10;

SELECT UniqueCarrier, AVG(ArrDelay) AS avgDelay
from flights
GROUP BY UniqueCarrier
HAVING AVG(arrDelay)>10						
ORDER BY AVG(arrDelay) DESC;
