select cname, caddress from corp 
full outer join owners
on owners.OID = corp.oid 
INNER join PLANE_TYPE
on owners.Reg# = PLANE_TYPE.Reg# 
where (PLANE_TYPE.CAPACITY >200);
