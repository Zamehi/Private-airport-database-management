-- 7. names and registration numbers of airplanes that have undergone maintenance in the past week.

select airplane.reg# from airplane 
full outer join SERVICE_RECORD
on SERVICE_RECORD.reg# = airplane.reg#
where (datediff (week,SERVICE_RECORD.SDATE,getdate()) < 1)             

