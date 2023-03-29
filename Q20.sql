
-- 20			# of planes of each type
SELECT OF_TYPE as 'Plane Type', COUNT(OF_TYPE) as 'No. of planes' 
FROM PLANE_TYPE
GROUP BY OF_TYPE