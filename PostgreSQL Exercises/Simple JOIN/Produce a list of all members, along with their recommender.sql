SELECT mem.firstname as memfname,mem.surname as memsname, rec.firstname as recfname, rec.surname as recsname
FROM cd.members mem
LEFT OUTER JOIN cd.members rec
ON rec.memid=mem.recommendedby
ORDER BY memsname,memfname;