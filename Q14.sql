-- 14. the names and phone numbers of owners who have
--purchased a plane from a corporation that has a hangar in the same location as the owner
SELECT cname, cphone, pname, pphone from person
full outer join owners on OWNERS.OID = person.OID
full outer join CORP on OWNERS.OID= CORP.OID
full outer join airplane on AIRPLANE.reg# = OWNERS.Reg#
full outer join hangar on HANGAR.LOC= CORP.HANGAR_LOC
WHERE Owners.owner_loc = Hangar.loc;
