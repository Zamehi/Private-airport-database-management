-- 15			PILOTS WHO ARE AUTORIZED TO FLY PERTICULAR PLANE AND THAT PLANE IS CURRENTLY UNDER MAINTANENCE
DECLARE @TODAY_DATE DATE = GETDATE()		-- LOCAL VARIABLE CREATED
SELECT PILOT.SSN AS "Pilot's ID", PILOT.PNAME AS "Pilot's Name", PLANE_TYPE.OF_TYPE as 'Authorized Plane Type', SERVICE_RECORD.SDATE as 'Current Date of Maintenance', SERVICE_RECORD.SWORK as 'Maintenance task'
FROM PILOT
INNER JOIN PLANE_TYPE ON PILOT.FLIES_MODEL = PLANE_TYPE.MODEL
INNER JOIN SERVICE_RECORD ON PLANE_TYPE.Reg# = SERVICE_RECORD.Reg#
WHERE SERVICE_RECORD.SDATE = @TODAY_DATE;
