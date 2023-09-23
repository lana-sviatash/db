SELECT t.fullname AS teacher, d.name AS discipline, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g 
JOIN disciplines d ON d.id = g.discipline_id 
JOIN teachers t ON t.id = d.teacher_id 
WHERE t.id = 4
GROUP BY d.name 
ORDER BY d.name
LIMIT 5;