-- 9. number of airplanes each pilot is authorized to fly.
select pilot.PNAME, COUNT (PLANE_TYPE.MODEL) as num_authorized from PILOT 
full outer join PLANE_TYPE
on pilot.FLIES_MODEL= PLANE_TYPE.MODEL
group by PILOT.SSN,pilot.PNAME;

