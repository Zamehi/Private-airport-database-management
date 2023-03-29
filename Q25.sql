
-- 25. 4 Queries 
-- a. list names of all corporations and persons 
select cname as corp_names, pname as person_names from corp
full outer join owners on owners.OID = corp.OID
full outer join PERSON on OWNERS.OID = PERSON.OID

-- b. list essn of all employees
select employee.SSN , employee.PNAME from  EMPLOYEE
order by SSN

-- c. list all hangar locations
select hangar.LOC, hangar.Reg# from HANGAR
group by hangar.LOC,hangar.Reg#
order by hangar.LOC

-- d. list of all planetypes and how much weights they can carry 
select PLANE_TYPE.OF_TYPE, PLANE_TYPE.PWEIGHT from PLANE_TYPE
group by PLANE_TYPE.OF_TYPE, PLANE_TYPE.PWEIGHT
