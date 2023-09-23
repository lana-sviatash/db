SELECT t.fullname AS teacher, d.name AS discipline
FROM teachers t  
JOIN disciplines d  ON d.teacher_id = t.id  
ORDER BY t.fullname
LIMIT 5;