-- 11. Write a SQL query to find the number of planes owned by each corporation, sorted in descending order by number of planes.

select corp.CNAME , count (owners.Reg#) as number_of_planes from corp 
full outer join owners on owners.OID= corp.OID
full outer join airplane on owners.Reg#= airplane.Reg#
group by corp.CNAME
order by number_of_planes desc
