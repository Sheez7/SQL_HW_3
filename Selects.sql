-- 1. Название и год выхода альбомов, вышедших в 2018 году:

SELECT title, release_year
FROM Albums
WHERE release_year = '2018';

-- 2. Название и продолжительность самого длительного трека

SELECT title, duration
FROM Tracks
WHERE duration = (SELECT MAX(duration) FROM Tracks);

-- 3. Название треков, продолжительность которых не менее 3,5 минут:

SELECT title
FROM Tracks
WHERE duration >= 210;

-- 4. Названия сборников, вышедших в период с 2018 по 2020 год включительно:

SELECT title
FROM Collections
WHERE release_year BETWEEN '2018-01-01' AND '2020-12-31';

-- 5. Исполнители, чьё имя состоит из одного слова:

SELECT name
FROM Musicians
WHERE name NOT LIKE '% %';

-- 6. Название треков, которые содержат слово «мой» или «my»:

SELECT title
FROM Tracks
WHERE title LIKE '%мой%' OR title LIKE '%my%';
