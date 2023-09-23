SELECT s.fullname AS student, g.grade, d.name AS discipline, g.date_of AS date
FROM grades g 
JOIN students s ON s.id = g.student_id 
JOIN groups g2 ON g2.id = s.group_id 
JOIN disciplines d ON d.id = g.discipline_id 
WHERE g2.id = 1 AND d.id = 4 AND g.date_of = (SELECT MAX(date_of) FROM grades WHERE discipline_id = d.id AND student_id = s.id)
LIMIT 5;