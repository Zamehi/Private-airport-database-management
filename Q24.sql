-- 24			# of planes each pilot is authorized to fly
SELECT PILOT.PNAME as "Pilot's Name", COUNT(PILOT.FLIES_MODEL) AS '# of AUTHORIZED PLANES TO FLY'
FROM PILOT
GROUP BY PILOT.PNAME