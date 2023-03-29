-- 12. find the average number of maintenance hours per plane, broken down by plane type. 
select PLANE_TYPE.OF_TYPE as plane_type ,avg (shour) as avg_mantainance_hrs from SERVICE_RECORD
full outer join PLANE_TYPE on PLANE_TYPE.Reg# = SERVICE_RECORD.Reg#
group by PLANE_TYPE.OF_TYPE