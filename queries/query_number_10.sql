SELECT d.name AS discipline, s.fullname AS student, t.fullname AS teacher
FROM students s 
JOIN grades g ON g.student_id = s.id 
JOIN disciplines d ON d.id = g.discipline_id 
JOIN teachers t ON d.teacher_id 
WHERE s.id = 1 AND t.id = 4
GROUP BY d.name 
ORDER BY d.name
LIMIT 5;