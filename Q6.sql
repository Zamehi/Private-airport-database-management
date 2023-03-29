-- 6. top 5 employees with highest total number of maintainance hours worked 
select top 5 employee.pname, employee.ssn from EMPLOYEE
full outer join SERVICE_RECORD
on EMPLOYEE.ssn = SERVICE_RECORD.essn
where (SERVICE_RECORD.shour > 1)
