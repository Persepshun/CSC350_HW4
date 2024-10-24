SELECT * FROM Sets
WHERE description LIKE 'Harry Potter';


SELECT * FROM Sets
ORDER BY piece_count DESC;


SELECT * FROM Sets
WHERE theme_id = (SELECT theme_id FROM Themes WHERE theme_name = 'Icons');


SELECT * FROM Sets
LIMIT 4 OFFSET 0; -- First page
SELECT * FROM Sets
LIMIT 4 OFFSET 4; -- Second page, and so on
