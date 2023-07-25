#Problem: Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.
#MySQL

SELECT ROUND(S.LAT_N,4)
FROM STATION AS S
WHERE (SELECT COUNT(LAT_N) FROM STATION WHERE LAT_N < S.LAT_N)=(SELECT COUNT(LAT_N) FROM STATION WHERE LAT_N > S.LAT_N);
