CREATE TABLE artists(
artist_id serial PRIMARY KEY,
"name" text,
age integer,
city_born text
);

CREATE TABLE albums(
album_id serial PRIMARY KEY,
artist_id int,
album_name text,
release_year int
);

INSERT INTO artists("name", age, city_born)
VALUES
('Olivia Rodrigo', 23, 'California, The United States'),
('Peso Pluma', 27, 'Jalisco, Mexico'),
('Maluma', 32, 'Medellin, Colombia'),
('Sabrina Carpenter', 27, 'Pennsylvania, The United States'),
('Humbe', 25, 'Nuevo Leon, Mexico');

INSERT INTO albums(artist_id, album_name, release_year)
VALUES
(1, 'You seem pretty sad for a girl so in love', 2026),
(2, 'Dopamina', 2025),
(3, 'Pretty Boy, Dirty Boy', 2015),
(4, 'Mans Best Friend', 2025),
(5, 'Dueno del cielo', 2025),
(1, 'SOUR', 2021);

SELECT artists.name, artists.age, albums.album_name, albums.release_year
FROM artists JOIN albums
ON artists.artist_id=albums.artist_id;


--================================================================================================
--REFLECTION QUESTIONS
--================================================================================================

-- What type of relationship did you create (one-to-one or one-to-many)? I think a one-to-one because just create

-- What would happen if you deleted a department that still has employees? The data would be lost and 

-- Why is a foreign key important for data integrity? Because with
