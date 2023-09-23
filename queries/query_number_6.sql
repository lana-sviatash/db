SELECT g.name AS 'group', s.fullname AS student
FROM students s  
JOIN groups g ON g.id = s.group_id  
WHERE g.id = 1
ORDER BY s.fullname
LIMIT 5;