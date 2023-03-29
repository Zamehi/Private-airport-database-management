-- 10. find the location and capacity of the hangar with the most available space.

SELECT top 1 LOC,  CAPACITY - COUNT(Reg#) AS AVAILABLE_SPACE
FROM HANGAR
GROUP BY LOC, CAPACITY
ORDER BY AVAILABLE_SPACE DESC