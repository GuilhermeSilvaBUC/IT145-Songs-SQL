-- List songs with "feat." in their names
SELECT name
FROM songs
WHERE name LIKE '%feat.%';
