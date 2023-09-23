SELECT s.fullname AS student, d.name AS discipline
FROM students s 
JOIN grades g ON g.student_id = s.id 
JOIN disciplines d ON d.id = g.discipline_id 
WHERE s.id = 1
GROUP BY d.name 
ORDER BY d.name
LIMIT 5;