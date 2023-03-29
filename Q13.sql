
--13. find the names of owners who have purchased a plane that requires maintenance work from an employee 
--who is not qualified to work on that type of plane.
select corp.CNAME as names, PERSON.PNAME as names from corp 
full outer join owners on owners.OID= corp.OID
full outer join person on owners.OID= PERSON.OID
full outer join airplane on owners.Reg#= AIRPLANE.Reg#
full outer join SERVICE_RECORD on AIRPLANE.Reg#= SERVICE_RECORD.Reg#
full outer join employee on employee.SSN= SERVICE_RECORD.ESSN
where (employee.ESTATUS!= SERVICE_RECORD.SWORK);
