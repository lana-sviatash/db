SELECT d.name AS discipline, s.fullname AS student, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g 
INNER JOIN students s ON s.id = g.student_id 
INNER JOIN disciplines d  ON d.id = g.discipline_id  
GROUP BY s.fullname 
ORDER BY average_grade DESC 
LIMIT 5;