SELECT ROUND(AVG(g.grade)) AS average_grade, t.fullname AS teacher, s.fullname AS student
FROM grades g 
JOIN students s ON s.id = g.student_id 
JOIN disciplines d ON d.id = g.discipline_id 
JOIN teachers t ON t.id = d.teacher_id 
WHERE t.id = 4 AND s.id = 1
LIMIT 5;