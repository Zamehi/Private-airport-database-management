
-- 21			total # services given to a plane
SELECT AIRPLANE.Reg# AS 'AIRPLANE ID', COUNT(SERVICE_RECORD.Reg#) AS 'Services Used'
FROM AIRPLANE
INNER JOIN SERVICE_RECORD on AIRPLANE.Reg# = SERVICE_RECORD.Reg#
GROUP BY  SERVICE_RECORD.Reg#, AIRPLANE.Reg#

