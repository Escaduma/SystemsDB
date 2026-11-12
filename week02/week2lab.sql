--Query 1
CREATE TABLE animal_types(
animal_id numeric,
species varchar(50),
habitat varchar(50),
diet varchar(100)
);

CREATE TABLE animals(
an_id numeric,
animal_name varchar(50),
species_id numeric,
age numeric
);

--Query 2
INSERT INTO animal_types(animal_id, species, habitat, diet)
VALUES 
(1, 'Lion', 'Grassland', 'Meat'),
(2, 'Giraffe', 'Savanna','Leaves, shoots, flowers, and fruits'),
(3, 'Zebra', 'Grasslands and Savannas', 'Plants');

select * from animal_types;

--Query 3
INSERT INTO animals(an_id, animal_name, species_id, age)
VALUES 
(15, 'Carola', 1, 10),
(60, 'Satine', 2, 5),
(25, 'Rufino', 3, 8),
(30 'carlson' 5 9); -->If it does not contain commas the program will tell that there is an error, because it doesn't know where each part of the info is
-- and also there are different types of data, the error doesn't insert all the info in the table.

select * from animals;
