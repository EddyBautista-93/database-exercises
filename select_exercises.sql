USE codeup_test_db;

-- albums from Pink Floyd
SELECT name as "Albums by Pink Floyd"FROM albums WHERE artist = 'Pink Floyd';

-- SELECT release_date AS "Beetles srg pepper" FROM albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';

SELECT genre as 'Nirvana Nevermind Genere' FROM albums WHERE name ='Nevermind';
SELECT name, artist, release_date FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT name as 'low selling albums' FROM albums WHERE sales > 20.0;
SELECT name as 'Rock' FROM albums WHERE genre like "Rock";
