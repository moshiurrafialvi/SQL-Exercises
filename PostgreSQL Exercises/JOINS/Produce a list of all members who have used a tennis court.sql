SELECT DISTINCT CONCAT(m.firstname,' ',m.surname) AS member,f.name
FROM cd.members m
JOIN cd.bookings b
ON m.memid=b.memid
JOIN cd.facilities f
ON b.facid=f.facid
WHERE f.name IN ('Tennis Court 2','Tennis Court 1')
ORDER BY member,f.name;