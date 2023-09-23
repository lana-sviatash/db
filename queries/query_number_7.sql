SELECT g2.name AS 'group', d.name AS discipline, s.fullname AS student, g.grade
FROM grades g 
JOIN students s ON s.id = g.student_id 
JOIN groups g2 ON g2.id = s.group_id 
JOIN disciplines d ON d.id = g.discipline_id
WHERE d.id = 1 AND g2.id = 1
ORDER BY s.fullname
LIMIT 5;