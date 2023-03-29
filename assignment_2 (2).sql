create database Assignment_2;
Exec sp_databases;


/* Table 1*/
CREATE TABLE AIRPLANE
(
	Reg#  NUMERIC (4) NOT NULL PRIMARY KEY,
	Pdate date,

	/* Foreign Keys */
	maintain_by numeric (2),		/* From employee SSN*/
);
INSERT INTO AIRPLANE VALUES (0001, CONVERT (date, '17-DEC-2017'), 01);
INSERT INTO AIRPLANE VALUES (0002, CONVERT (date, '20-AUG-2001'), 02);
INSERT INTO AIRPLANE VALUES (0003, CONVERT (date, '17-JAN-2002'), 03);
INSERT INTO AIRPLANE VALUES (0004, CONVERT (date, '28-DEC-2013'), 04);
INSERT INTO AIRPLANE VALUES (0005, CONVERT (date, '21-FEB-2012'), 05);
INSERT INTO AIRPLANE VALUES (0006, CONVERT (date, '13-JUNE-2015'), 06);
INSERT INTO AIRPLANE VALUES (0007, CONVERT (date, '17-DEC-2001'), 07);
INSERT INTO AIRPLANE VALUES (0008, CONVERT (date, '28-MAR-2023'), 08);
INSERT INTO AIRPLANE VALUES (0009, CONVERT (date, '17-JAN-2002'), 09);
INSERT INTO AIRPLANE VALUES (0010, CONVERT (date, '28-MAR-2016'), 10);
INSERT INTO AIRPLANE VALUES (0011, CONVERT (date, '31-MAY-2012'), 11);
INSERT INTO AIRPLANE VALUES (0012, CONVERT (date, '17-DEC-2001'), 12);
INSERT INTO AIRPLANE VALUES (0013, CONVERT (date, '29-AUG-2019'), 13);
INSERT INTO AIRPLANE VALUES (0014, CONVERT (date, '17-JAN-2020'), 14);
INSERT INTO AIRPLANE VALUES (0015, CONVERT (date, '28-DEC-2021'), 15);
INSERT INTO AIRPLANE VALUES (0016, CONVERT (date, '21-FEB-2012'), 16);
INSERT INTO AIRPLANE VALUES (0017, CONVERT (date, '10-SEP-2001'), 17);
INSERT INTO AIRPLANE VALUES (0018, CONVERT (date, '20-NOV-2001'), 18);
INSERT INTO AIRPLANE VALUES (0019, CONVERT (date, '15-JAN-2012'), 19);
INSERT INTO AIRPLANE VALUES (0020, CONVERT (date, '13-OCT-2011'), 20);


/* TABLE 2 */
CREATE TABLE PLANE_TYPE 
(
	/*plane type, cargo, military, passenger*/
	OF_TYPE VARCHAR (20) NOT NULL,
	MODEL NUMERIC (4) NOT NULL,		
	CAPACITY NUMERIC (4),
	PWEIGHT NUMERIC (4) ,
	
	/* Foreign Keys */
	Reg# NUMERIC(4) ,				/* From airplane*/
);
INSERT INTO PLANE_TYPE VALUES ('CARGO', 1001, 20, 2000, 0001);
INSERT INTO PLANE_TYPE VALUES ('CARGO', 1002, 20, 2000, 0004);
INSERT INTO PLANE_TYPE VALUES ('CARGO', 1003, 20, 2000, 0007);
INSERT INTO PLANE_TYPE VALUES ('CARGO', 1004, 20, 2000, 0010);
INSERT INTO PLANE_TYPE VALUES ('CARGO', 1005, 20, 2000, 0013);
INSERT INTO PLANE_TYPE VALUES ('CARGO', 1006, 20, 2000, 0016);
INSERT INTO PLANE_TYPE VALUES ('CARGO', 1007, 20, 2000, 0019);
INSERT INTO PLANE_TYPE VALUES ('MILITARY', 1011, 100, 3000, 0002);
INSERT INTO PLANE_TYPE VALUES ('MILITARY', 1012, 100, 3000, 0005);
INSERT INTO PLANE_TYPE VALUES ('MILITARY', 1013, 100, 3000, 0008);
INSERT INTO PLANE_TYPE VALUES ('MILITARY', 1014, 100, 3000, 0011);
INSERT INTO PLANE_TYPE VALUES ('MILITARY', 1015, 100, 3000, 0014);
INSERT INTO PLANE_TYPE VALUES ('MILITARY', 1016, 100, 3000, 0017);
INSERT INTO PLANE_TYPE VALUES ('MILITARY', 1017, 100, 3000, 0020);
INSERT INTO PLANE_TYPE VALUES ('PASSENGER', 1021, 2000, 4000, 0003);
INSERT INTO PLANE_TYPE VALUES ('PASSENGER', 1022, 2000, 4000, 0006);
INSERT INTO PLANE_TYPE VALUES ('PASSENGER', 1023, 2000, 4000, 0009);
INSERT INTO PLANE_TYPE VALUES ('PASSENGER', 1024, 2000, 4000, 0012);
INSERT INTO PLANE_TYPE VALUES ('PASSENGER', 1025, 2000, 4000, 0015);
INSERT INTO PLANE_TYPE VALUES ('PASSENGER', 1026, 2000, 4000, 0018);



/* TABLE 3 */
CREATE TABLE HANGAR 
(
	NUMBER NUMERIC (4) NOT NULL,	/* T-HANGARS , BOX HANGARS, MAINTAINENCE HANGARS, mILITARY */
	CAPACITY NUMERIC (1),
	LOC  VARCHAR (10) ,
	
	/* Foreign Key */
	Reg# NUMERIC(4) ,				/* From airplane*/
);
INSERT INTO HANGAR VALUES (9001, 1, 'SLOT-1', 0001);
INSERT INTO HANGAR VALUES (9002, 1, 'SLOT-2', 02);
INSERT INTO HANGAR VALUES (9003, 2, 'SLOT-3', 03);
INSERT INTO HANGAR VALUES (9004, 4, 'SLOT-4', 04);
INSERT INTO HANGAR VALUES (9005, 1, 'SLOT-5', 05);
INSERT INTO HANGAR VALUES (9003, 2, 'SLOT-6', 06);
INSERT INTO HANGAR VALUES (9007, 2, 'SLOT-7', 07);
INSERT INTO HANGAR VALUES (9008, 3, 'SLOT-8', 08);
INSERT INTO HANGAR VALUES (9009, 1, 'SLOT-9', 09);
INSERT INTO HANGAR VALUES (9010, 2, 'SLOT-10', 10);
INSERT INTO HANGAR VALUES (9007, 2, 'SLOT-11', 11);
INSERT INTO HANGAR VALUES (9012, 5, 'SLOT-12', 12);
INSERT INTO HANGAR VALUES (9012, 5, 'SLOT-13', 13);
INSERT INTO HANGAR VALUES (9012, 5, 'SLOT-14', 14);
INSERT INTO HANGAR VALUES (9012, 5, 'SLOT-15', 15);
INSERT INTO HANGAR VALUES (9016, 1, 'SLOT-16', 16);
INSERT INTO HANGAR VALUES (9017, 4, 'SLOT-17', 17);
INSERT INTO HANGAR VALUES (9018, 3, 'SLOT-18', 18);
INSERT INTO HANGAR VALUES (9019, 4, 'SLOT-19', 19);
INSERT INTO HANGAR VALUES (9020, 5, 'SLOT-20', 20);



/* TABLE 4 */
CREATE TABLE SERVICE_RECORD
(
	SDATE date,
	SHOUR numeric (2),
	SWORK varchar (20),			-- type of work 

	/* Foreign Keys */
	Reg# NUMERIC(4) NOT NULL,				/* From airplane*/
	ESSN NUMERIC (2),				/* FROM EMPLOYEE */
);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '19-DEC-2017'), 9, 'Engine Repair', 01, 01);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '19-DEC-2017'), 0, 'Garbage Disposal', 01, 01);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '21-AUG-2001'), 1, 'Oil Change', 02, 02);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '21-AUG-2001'), 1, 'Feul Add', 02, 02);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '19-DEC-2017'), 5, 'Engine Repair', 03, 03);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '19-DEC-2017'), 7, 'Engine Repair', 04, 04);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '15-JUNE-2015'), 2,'Tyer Change', 06, 06);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '15-JUNE-2015'), 1,'Feul Add', 06, 06);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '15-JUNE-2015'), 5,'Engine Repair', 06, 06);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '18-DEC-2001'), 1, 'Garbage Disposal', 07, 07);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '30-MAR-2023'), 3, 'Oil Change', 8, 8);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '29-MAR-2023'), 4, 'Oil Change', 8, 8);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '28-DEC-2021'), 1, 'Feul Add', 15, 15);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '28-DEC-2021'), 1, 'Tyer Change', 15, 15);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '28-DEC-2021'), 3, 'Oil Change', 15, 15);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '13-OCT-2011'), 1, 'Garbage Disposal', 20, 20);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '13-OCT-2011'), 14, 'Engine Repair', 20, 20);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '13-OCT-2011'), 2, 'Feul Add', 20, 20);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '13-OCT-2011'), 3, 'Oil Change', 20, 20);
INSERT INTO SERVICE_RECORD VALUES ( CONVERT (date, '13-OCT-2011'), 2, 'Tyer Change', 20, 20);




/* TABLE 5 */
CREATE TABLE OWNERS
(
	OID varchar (3) NOT NULL ,		-- send to corp and person  p%, c%

	/* Foreign Keys */
	Reg# NUMERIC(4) ,				/* From airplane*/
	owner_loc varchar (20)
);
INSERT INTO OWNERS VALUES ('c01', 0001, 'SLOT-1');
INSERT INTO OWNERS VALUES ('c01', 04 , 'SLOT-2');
INSERT INTO OWNERS VALUES ('c02', 08 , 'SLOT-3');
INSERT INTO OWNERS VALUES ('c03', 10 , 'SLOT-4');
INSERT INTO OWNERS VALUES ('c04', 11 , 'SLOT-5');
INSERT INTO OWNERS VALUES ('c04', 12 , 'SLOT-6');
INSERT INTO OWNERS VALUES ('c05', 18 , 'SLOT-8');
INSERT INTO OWNERS VALUES ('c05', 19 , 'SLOT-11');
INSERT INTO OWNERS VALUES ('c05', 20 , 'SLOT-12');
INSERT INTO OWNERS VALUES ('p01', 02 , 'SLOT-17');
INSERT INTO OWNERS VALUES ('p01', 03 , 'SLOT-18');
INSERT INTO OWNERS VALUES ('p01', 05 , 'SLOT-19');
INSERT INTO OWNERS VALUES ('p02', 06 , 'SLOT-20');
INSERT INTO OWNERS VALUES ('p02', 07 , 'SLOT-15');
INSERT INTO OWNERS VALUES ('p02', 09 , 'SLOT-14');
INSERT INTO OWNERS VALUES ('p03', 13 , 'SLOT-13');
INSERT INTO OWNERS VALUES ('p03', 14 , 'SLOT-12');
INSERT INTO OWNERS VALUES ('p04', 15 , 'SLOT-16');
INSERT INTO OWNERS VALUES ('p05', 16 , 'SLOT-17');
INSERT INTO OWNERS VALUES ('p07', 17 , 'SLOT-9');



/* TABLE 6 */
CREATE TABLE CORP
(
	/* FOR CORPORATION */
	OID varchar (3) NOT NULL,-- foreign  
	CNAME VARCHAR (20),
	CADDRESS VARCHAR (20),
	CPHONE NUMERIC (7),
	hangar_loc varchar (20)
);
INSERT INTO CORP VALUES ('c01', 'Z&J', 'SECTOR E-11/1, ISB', 1234567 , 'SLOT-1');
INSERT INTO CORP VALUES ('c02', 'ZZ', 'SECTOR E-11/2, ISB', 7654321 , 'SLOT-20');
INSERT INTO CORP VALUES ('c03', 'JJ', 'SECTOR E-11/3, ISB', 6478738 , 'SLOT-11');
INSERT INTO CORP VALUES ('c04', 'BLUE', 'SECTOR E-11/4, ISB', 7981324 , 'SLOT-8');
INSERT INTO CORP VALUES ('c05', 'WHITE', 'SECTOR F-7/2, ISB', 1396739 , 'SLOT-7');


/* TABLE 7 */
CREATE TABLE PERSON
(
	/* FOR PERSON */
	OID varchar (3) NOT NULL, -- foreign 
	SSN NUMERIC (2),
	PNAME VARCHAR (20),
	PADDRESS VARCHAR (20),
	PPHONE NUMERIC (7)
);
INSERT INTO PERSON VALUES ('P01', 91, 'Zunaira Amir', 'Mars', 9845325);
INSERT INTO PERSON VALUES ('P02', 92, 'Javeriah Abid', 'Out of the World', 6831822);
INSERT INTO PERSON VALUES ('P03', 93, 'Fizza Mumtaz', 'Weird Planet', 9362282);
INSERT INTO PERSON VALUES ('P04', 94, 'Zimal Alam', 'Cloud 9', 5432763);
INSERT INTO PERSON VALUES ('P05', 95, 'Ifra', 'Secret Garden', 2083538);




/* TABLE 8 */
CREATE TABLE EMPLOYEE
(
	SSN NUMERIC (2) NOT NULL,
	PNAME VARCHAR (20),
	PADDRESS VARCHAR (20),
	PPHONE NUMERIC (7),

	ESHIFT VARCHAR (20),
	ESALARY NUMERIC (7),
	

	/* Foreign Key */
	WORKSON_MODEL NUMERIC(4),		/* model from plane type */
	ESTATUS varchar (20),
);
INSERT INTO EMPLOYEE VALUES (01, 'Tom', 'Street 1', 1032763, 'Morning', 50000, 1001,     'Engine Repair');		-- 6am - 12pm
INSERT INTO EMPLOYEE VALUES (04, 'Jane', 'Street 2', 2345432, 'Evening', 501000, 1002,   'Oil Change ');		-- 6pm - 12am
INSERT INTO EMPLOYEE VALUES (07, 'Jerry', 'Street 3', 7843672, 'Afternoon', 100200, 1003,'Fuel Add');	-- 12pm - 6pm
INSERT INTO EMPLOYEE VALUES (10, 'Rach', 'Street 4', 5632672, 'Night', 20000, 1004,      'Garbage Disposal');		-- 12am - 6am
INSERT INTO EMPLOYEE VALUES (13, 'Ali', 'Street 5', 9890343, 'Evening', 430000, 1005,    'Tyer Change');
INSERT INTO EMPLOYEE VALUES (16, 'Fahad', 'Street 6', 6732782, 'Morning', 320000, 1006,  'Engine Repair');
INSERT INTO EMPLOYEE VALUES (19, 'Ahmad', 'Street 7', 7099778, 'Afternoon', 1250000, 1007,'Oil Change');
INSERT INTO EMPLOYEE VALUES (02, 'Zahra', 'Street 8', 3434334, 'Night', 5320000, 1011,    'Fuel Add');
INSERT INTO EMPLOYEE VALUES (05, 'Zain', 'Street 9', 9898545, 'Afternoon', 505000, 1012,  'Garbage Disposal');
INSERT INTO EMPLOYEE VALUES (08, 'Noor', 'Street 10', 6734672, 'Evening', 150000, 1013,   'Fuel Add');
INSERT INTO EMPLOYEE VALUES (11, 'Dua', 'Street 11', 4734876, 'Night', 5540000, 1014,     'Tyer Change');
INSERT INTO EMPLOYEE VALUES (14, 'Jannat', 'Street 12', 5456645, 'Morning', 150000, 1015, 'Engine Repair');
INSERT INTO EMPLOYEE VALUES (17, 'Aleyana', 'Street 13', 5645786, 'Afternoon', 950000, 1016, 'Fuel Add');
INSERT INTO EMPLOYEE VALUES (20, 'Aleena', 'Street 14', 1212342, 'Morning', 650000, 1017,    'Garbage Disposal');
INSERT INTO EMPLOYEE VALUES (03, 'Afifa', 'Street 15', 4523124, 'Night', 450000, 1022,       'Oil Change');
INSERT INTO EMPLOYEE VALUES (06, 'Tahira', 'Street 16', 3423452, 'Morning', 850000, 1022,    'Fuel Add');
INSERT INTO EMPLOYEE VALUES (09, 'Nosheen', 'Street 17', 6754432, 'Afternoon', 504000, 1023, 'Tyer Change');
INSERT INTO EMPLOYEE VALUES (12, 'Joan', 'Street 18', 5678982, 'Morning', 5430000, 1024,     'Engine Repair');
INSERT INTO EMPLOYEE VALUES (15, 'Belle', 'Street 19', 8976534, 'Evening', 350000, 1025,     'Engine Repair');
INSERT INTO EMPLOYEE VALUES (18, 'Taco', 'Street 20', 6454756, 'Night', 550000, 1026 ,       'Engine Repair');



/* TABLE 9 */
CREATE TABLE PILOT 
(
	SSN NUMERIC (2) NOT NULL,
	PNAME VARCHAR (20),
	PADDRESS VARCHAR (20),
	PPHONE NUMERIC (7),

	LIC_NUM NUMERIC (4),
	RESTR VARCHAR (20),

	/* Foreign Key */
	FLIES_MODEL NUMERIC(4),			/* model from plane type */
);
INSERT INTO PILOT VALUES (21, 'Cinderella', 'Street 21', 6454756, 2121, 'r1', 1001);
INSERT INTO PILOT VALUES (22, 'Holland', 'Street 22', 3463222, 2122, 'r2', 1002);
INSERT INTO PILOT VALUES (23, 'JK', 'Street 23', 5632121, 2123, 'r3', 1003);
INSERT INTO PILOT VALUES (24, 'V', 'Street 24', 7654234, 2124, 'r4', 1004);
INSERT INTO PILOT VALUES (25, 'Diana', 'Street 25', 6543456, 2125, 'r5', 1005);
INSERT INTO PILOT VALUES (26, 'William', 'Street 26', 8789876, 2126, 'r6', 1006);
INSERT INTO PILOT VALUES (27, 'Charles', 'Street 27', 6545432, 2127, 'r7', 1007);
INSERT INTO PILOT VALUES (28, 'Monica', 'Street 28', 5467652, 2128, 'r8', 1011);
INSERT INTO PILOT VALUES (29, 'Pheobe', 'Street 29', 5678654, 2129, 'r9', 1012);
INSERT INTO PILOT VALUES (30, 'Ron', 'Street 30', 1098975, 2221, 'r1', 1013);
INSERT INTO PILOT VALUES (31, 'Harry', 'Street 31', 5433451, 2321, 'r2', 1014);
INSERT INTO PILOT VALUES (32, 'Hermoine', 'Street 32', 1322324, 2421, 'r3', 1015);
INSERT INTO PILOT VALUES (33, 'Albus', 'Street 33', 8987562, 2521, 'r4', 1016);
INSERT INTO PILOT VALUES (34, 'Severus', 'Street 34', 4232433, 2621, 'r5', 1017);
INSERT INTO PILOT VALUES (35, 'Riddle', 'Street 35', 6452431, 2721, 'r6', 1021);
INSERT INTO PILOT VALUES (36, 'Thomas', 'Street 36', 9843713, 2821, 'r7', 1022);
INSERT INTO PILOT VALUES (37, 'Sainu', 'Street 37', 4575983, 2921, 'r8', 1023);
INSERT INTO PILOT VALUES (38, 'Anita', 'Street 38', 5479042, 1121, 'r9', 1024);
INSERT INTO PILOT VALUES (39, 'Samantha', 'Street 39', 2345342, 3121, 'r1', 1025);
INSERT INTO PILOT VALUES (40, 'Chandler', 'Street 40', 4253524, 4121, 'r2', 1026);





/**************************				QUERIES			 ***************************/
SELECT * FROM AIRPLANE;
SELECT * FROM PLANE_TYPE;
SELECT * FROM HANGAR;
SELECT * FROM SERVICE_RECORD;
SELECT * FROM OWNERS ORDER BY Reg#;
SELECT * FROM CORP;
SELECT * FROM PERSON;
SELECT * FROM EMPLOYEE ORDER BY SSN;
SELECT * FROM PILOT



-- Queries 

-- 3. find the registration numbers of airplanes that have never
-- undergone maintenance.
select AIRPLANE.Reg# from AIRPLANE
full outer join SERVICE_RECORD on AIRPLANE.Reg#= SERVICE_RECORD.Reg#
where (SERVICE_RECORD.SHOUR= 0)

-- 4. 

select cname, caddress from corp 
full outer join owners
on owners.OID = corp.oid 
INNER join PLANE_TYPE
on owners.Reg# = PLANE_TYPE.Reg# 
where (PLANE_TYPE.CAPACITY >200);

-- 5. average salary of employees who work the night shift
select avg (esalary) from EMPLOYEE
where (eshift = 'night');


-- 6. top 5 employees with highest total number of maintainance hours worked 
select top 5 employee.pname, employee.ssn from EMPLOYEE
full outer join SERVICE_RECORD
on EMPLOYEE.ssn = SERVICE_RECORD.essn
where (SERVICE_RECORD.shour > 1)

-- 7. names and registration numbers of airplanes that have undergone maintenance in the past week.

select airplane.reg# from airplane 
full outer join SERVICE_RECORD
on SERVICE_RECORD.reg# = airplane.reg#
where (datediff (week,SERVICE_RECORD.SDATE,getdate()) < 1)             


-- 8. find the names and phone numbers of all owners who have purchased a plane in the past month.
select person.PNAME, person.PPHONE ,corp.cname ,corp.cphone from owners
full outer join person
on owners.OID= person.OID
full outer join corp
on owners.oid = corp.oid
full outer join airplane
on owners.Reg#= airplane.Reg#
where (datediff (month,airplane.Pdate,getdate()) <= 1);


-- 9. number of airplanes each pilot is authorized to fly.
select pilot.PNAME, COUNT (PLANE_TYPE.MODEL) as num_authorized from PILOT 
full outer join PLANE_TYPE
on pilot.FLIES_MODEL= PLANE_TYPE.MODEL
group by PILOT.SSN,pilot.PNAME;


-- 10. find the location and capacity of the hangar with the most available space.

SELECT top 1 LOC,  CAPACITY - COUNT(Reg#) AS AVAILABLE_SPACE
FROM HANGAR
GROUP BY LOC, CAPACITY
ORDER BY AVAILABLE_SPACE DESC


-- 11. Write a SQL query to find the number of planes owned by each corporation, sorted in descending order by number of planes.

select corp.CNAME , count (owners.Reg#) as number_of_planes from corp 
full outer join owners on owners.OID= corp.OID
full outer join airplane on owners.Reg#= airplane.Reg#
group by corp.CNAME
order by number_of_planes desc


-- 12. find the average number of maintenance hours per plane, broken down by plane type. 
select PLANE_TYPE.OF_TYPE as plane_type ,avg (shour) as avg_mantainance_hrs from SERVICE_RECORD
full outer join PLANE_TYPE on PLANE_TYPE.Reg# = SERVICE_RECORD.Reg#
group by PLANE_TYPE.OF_TYPE

--13. find the names of owners who have purchased a plane that requires maintenance work from an employee 
--who is not qualified to work on that type of plane.
select corp.CNAME as names, PERSON.PNAME as names from corp 
full outer join owners on owners.OID= corp.OID
full outer join person on owners.OID= PERSON.OID
full outer join airplane on owners.Reg#= AIRPLANE.Reg#
full outer join SERVICE_RECORD on AIRPLANE.Reg#= SERVICE_RECORD.Reg#
full outer join employee on employee.SSN= SERVICE_RECORD.ESSN
where (employee.ESTATUS!= SERVICE_RECORD.SWORK);


-- 14. the names and phone numbers of owners who have
--purchased a plane from a corporation that has a hangar in the same location as the owner
SELECT cname, cphone, pname, pphone from person
full outer join owners on OWNERS.OID = person.OID
full outer join CORP on OWNERS.OID= CORP.OID
full outer join airplane on AIRPLANE.reg# = OWNERS.Reg#
full outer join hangar on HANGAR.LOC= CORP.HANGAR_LOC
WHERE Owners.owner_loc = Hangar.loc;


ALTER TABLE employee
ADD ESTATUS varchar(20);


ALTER table owners 
add owner_loc varchar(20);

ALTER table corp 
add hangar_loc varchar(20);



-- 15			PILOTS WHO ARE AUTORIZED TO FLY PERTICULAR PLANE AND THAT PLANE IS CURRENTLY UNDER MAINTANENCE
DECLARE @TODAY_DATE DATE = GETDATE()		-- LOCAL VARIABLE CREATED
SELECT PILOT.SSN AS "Pilot's ID", PILOT.PNAME AS "Pilot's Name", PLANE_TYPE.OF_TYPE as 'Authorized Plane Type', SERVICE_RECORD.SDATE as 'Current Date of Maintenance', SERVICE_RECORD.SWORK as 'Maintenance task'
FROM PILOT
INNER JOIN PLANE_TYPE ON PILOT.FLIES_MODEL = PLANE_TYPE.MODEL
INNER JOIN SERVICE_RECORD ON PLANE_TYPE.Reg# = SERVICE_RECORD.Reg#
WHERE SERVICE_RECORD.SDATE = @TODAY_DATE;



-- 16			Hours employees work for a plane owned by a corp
SELECT EMPLOYEE.PNAME as "Employee's Name", PLANE_TYPE.MODEL as 'Plane model', CORP.CNAME as 'Coorporation (Owner)', COUNT(SERVICE_RECORD.SHOUR) as 'Maintanace hours worked'
FROM EMPLOYEE
INNER JOIN PLANE_TYPE ON EMPLOYEE.WORKSON_MODEL = PLANE_TYPE.MODEL
INNER JOIN OWNERS ON OWNERS.Reg# = PLANE_TYPE.Reg#
INNER JOIN CORP ON OWNERS.OID = CORP.OID
INNER JOIN SERVICE_RECORD ON EMPLOYEE.SSN = SERVICE_RECORD.ESSN
GROUP BY EMPLOYEE.SSN, EMPLOYEE.PNAME, PLANE_TYPE.MODEL, CORP.CNAME
ORDER BY  COUNT(SERVICE_RECORD.SHOUR); 




-- 17		planes not owned by cooperations and no day shift employes have worked on these
SELECT PLANE_TYPE.Reg# as 'Plane registeration No', PLANE_TYPE.OF_TYPE as 'Plane Type', PERSON.PNAME as 'Owner', EMPLOYEE.ESHIFT as "Worker's shift" , SERVICE_RECORD.SWORK as 'Maintenance Work'
FROM PLANE_TYPE
INNER JOIN OWNERS ON PLANE_TYPE.Reg# = OWNERS.Reg#
INNER JOIN PERSON ON OWNERS.OID  = PERSON.OID
INNER JOIN EMPLOYEE ON PLANE_TYPE.MODEL = EMPLOYEE.WORKSON_MODEL
INNER JOIN SERVICE_RECORD ON EMPLOYEE.SSN = SERVICE_RECORD.ESSN
WHERE EMPLOYEE.ESHIFT != 'Morning' and EMPLOYEE.ESHIFT != 'Afternoon';



-- 18




	




-- 19			 planes that are stored in each hangar
SELECT LOC as 'Hangar', CAPACITY as '# of planes'
FROM HANGAR;








-- 20			# of planes of each type
SELECT OF_TYPE as 'Plane Type', COUNT(OF_TYPE) as 'No. of planes' 
FROM PLANE_TYPE
GROUP BY OF_TYPE





-- 21			total # services given to a plane
SELECT AIRPLANE.Reg# AS 'AIRPLANE ID', COUNT(SERVICE_RECORD.Reg#) AS 'Services Used'
FROM AIRPLANE
INNER JOIN SERVICE_RECORD on AIRPLANE.Reg# = SERVICE_RECORD.Reg#
GROUP BY  SERVICE_RECORD.Reg#, AIRPLANE.Reg#


-- 22			average salaries of each shift
SELECT EMPLOYEE.ESHIFT, AVG(EMPLOYEE.ESALARY) AS 'Average Salary'
FROM EMPLOYEE
GROUP BY EMPLOYEE.ESHIFT



-- 23			# planes each owner owns
SELECT OWNERS.OID, COUNT(OWNERS.Reg#) AS '# OF PLANES OWNED' --, CORP.CNAME, PERSON.PNAME
FROM OWNERS
GROUP BY OWNERS.OID



-- 24			# of planes each pilot is authorized to fly
SELECT PILOT.PNAME as "Pilot's Name", COUNT(PILOT.FLIES_MODEL) AS '# of AUTHORIZED PLANES TO FLY'
FROM PILOT
GROUP BY PILOT.PNAME



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
