WITH cte as (
SELECT CONCAT(m.firstname,' ',m.surname) as member,f.name as facility,
  CASE
  WHEN  b.memid=0 THEN (slots*guestcost)
  else  (slots*membercost)
  END as cost
FROM cd.members m
JOIN cd.bookings b
ON m.memid=b.memid
JOIN cd.facilities f
ON b.facid=f.facid
WHERE starttime between '2012-09-14 00:00:00' and '2012-09-14 23:59:59'
  )
SELECT * 
FROM cte
WHERE cost>30
ORDER BY cost DESC;
