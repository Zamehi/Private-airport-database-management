
-- 23			# planes each owner owns
SELECT OWNERS.OID, COUNT(OWNERS.Reg#) AS '# OF PLANES OWNED' --, CORP.CNAME, PERSON.PNAME
FROM OWNERS
GROUP BY OWNERS.OID