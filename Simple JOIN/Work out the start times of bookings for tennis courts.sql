SELECT b.starttime,f.name
FROM cd.bookings b
JOIN cd.facilities f
ON b.facid=f.facid
WHERE b.starttime >='2012-09-21' AND 
      b.starttime < '2012-09-22' AND
	  f.name IN ('Tennis Court 2','Tennis Court 1')
