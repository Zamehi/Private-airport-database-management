-- 8. find the names and phone numbers of all owners who have purchased a plane in the past month.
select person.PNAME, person.PPHONE ,corp.cname ,corp.cphone from owners
full outer join person
on owners.OID= person.OID
full outer join corp
on owners.oid = corp.oid
full outer join airplane
on owners.Reg#= airplane.Reg#
where (datediff (month,airplane.Pdate,getdate()) <= 1);
