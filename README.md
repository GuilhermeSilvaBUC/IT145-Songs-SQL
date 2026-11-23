IT145 - Lesson 13 Assignment 2: Songs

Project Overview

This project is part of IT145: Introduction to Programming. The objective is to practice SQL by retrieving and analyzing information from a SQLite database containing songs and artists.

The assignment includes eight SQL queries that demonstrate the use of SELECT, ORDER BY, LIMIT, WHERE, AVG, LIKE, and JOIN.

Database Structure

The database contains two tables:

- songs: Stores song names, artist IDs, danceability, energy, valence, tempo, duration, and other musical characteristics.
- artists: Stores artist IDs and artist names.

The artist_id column in the songs table connects each song to an artist in the artists table.

SQL Queries

Question 1: List the names of all songs.

```sql
SELECT name FROM songs;
```

Question 2: List the names of all songs ordered by tempo, slowest first.

```sql
SELECT name
FROM songs
ORDER BY tempo ASC;
```

Question 3: List the five longest songs, longest first.

```sql
SELECT name
FROM songs
ORDER BY duration_ms DESC
LIMIT 5;
```

Question 4: List songs with danceability, energy, and valence above 0.75.

```sql
SELECT name
FROM songs
WHERE danceability > 0.75
AND energy > 0.75
AND valence > 0.75;
```

Question 5: Calculate the average energy of all songs.

```sql
SELECT AVG(energy)
FROM songs;
```

Question 6: List the names of songs by Post Malone.

```sql
SELECT songs.name
FROM songs
JOIN artists ON songs.artist_id = artists.id
WHERE artists.name = 'Post Malone';
```

Question 7: Calculate the average energy of songs by Drake.

```sql
SELECT AVG(songs.energy)
FROM songs
JOIN artists ON songs.artist_id = artists.id
WHERE artists.name = 'Drake';
```

Question 8: List songs containing "feat." in their names.

```sql
SELECT name
FROM songs
WHERE name LIKE '%feat.%';
```

Query 8 Explanation

For Question 8, I used the LIKE operator with the wildcard symbol % to find song names containing "feat." anywhere in the title. The percent signs allow other characters to appear before or after the specified text.

A JOIN was not necessary because the information needed for this question was already stored in the songs table. An alternative approach could use a JOIN between songs and artists using songs.artist_id = artists.id, but it would not change the results because the filter is based on song titles.

Testing and Results

I tested each SQL query using SQLite3 in the CS50 Codespace environment.

I also ran the CS50 Check50 testing tool. All eight SQL queries passed their automated tests, and the required reflection was accepted.

Files

- 1.sql – List all song names.
- 2.sql – Sort songs by tempo.
- 3.sql – Find the five longest songs.
- 4.sql – Find songs with high danceability, energy, and valence.
- 5.sql – Calculate average song energy.
- 6.sql – Find songs by Post Malone.
- 7.sql – Calculate Drake's average song energy.
- 8.sql – Find song titles containing "feat.".

References

Harvard University. (2026). Songs – CS50x 2026. CS50. https://cs50.harvard.edu/x/psets/7/songs/
