-- 3. find the registration numbers of airplanes that have never
-- undergone maintenance.
select AIRPLANE.Reg# from AIRPLANE
full outer join SERVICE_RECORD on AIRPLANE.Reg#= SERVICE_RECORD.Reg#
where (SERVICE_RECORD.SHOUR= 0)
