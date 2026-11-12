--
--  CREATE TABLE games(
--  id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--  Generated always as a idenity makes it si the data type autofills
--  Primary key makes it so each id is unique
--  title varchar(100),
--  release_year integer
-- );

-- INSERT INTO games(title, release_year)
-- VALUES
-- ('Eden Ring', 2022),
-- ('Minecraft', 2011),
-- ('Hades', 2020);


--char(n) - stores a fixed length char value,
-- ALTER TABLE games
-- ADD COLUMN game_code char(5);

-- UPDATE games
-- SET game_code = 'ER001'
-- WHERE title = 'Eden Ring';

--text stores variable length without requiring a max length
-- ALTER TABLE games
-- ADD COLUMN description text;

-- UPDATE games
-- SET description='Open World RPG'
-- WHERE title='Eden Ring';

--Numeric: stores exact decimal values
--numeric(6,2)
--6 is the total number of digits
-- 2 is the digits after the decimal

-- ALTER TABLE games
-- ADD COLUMN price numeric(6,2);

-- UPDATE games
-- SET price=59.99
-- WHERE title='Eden Ring';

-- UPDATE games
-- SET price=24.995
-- WHERE title='Hades';

--Postgre SSQL will round to fit the column

--real: stores an approximate floating point number
-- ALTER TABLE games
-- ADD COLUMN rating real;

-- UPDATE games
-- SET rating=4.7
-- WHERE title='Eden Ring';

--Floaing-ppoint types are approximate, so very precise may not be
--stores exactly as entered

-- UPDATE games
-- SET rating= 4.123456789
-- WHERE title='Hades';

-- double precision: is a floating point type, but it supports more precisionthan real
-- ALTER TABLE games
-- ADD COLUMN hours_played double precision;

-- UPDATE games
-- SET hours_played=127.75698
-- WHERE title='Eden Ring';

--Real and Double and precision are aproximated data types,
--while numeric is designed for exact decimal values

--Timestamp stores bith data and time
-- ALTER TABLE games
-- ADD COLUMN last_played timestamp;

-- UPDATE games
-- SET last_played='2026-09-01 14:30:00'
-- WHERE title='Eden Ring';
--YYYY-MM-DD HH:MM:SS

--timestamp with timezone: this stores date and time with time zone info
-- ALTER TABLE games
-- ADD COLUMN created_at timestamp WITH time zone;

-- UPDATE games
-- SET created_at = '2026-09-10 14:30:00-07'
-- WHERE title='Eden Ring';

-- UPDATE games
-- SET created_at = now()
-- WHERE title='Hades';
--now() is a PostgreSQL function that returns the currentdate and time

--time: stores onlya time of day without the date
--format is 'HH:MM:SS' using 24 hour time

--interval: Stores an amount of time rather that a specifi date or time
-- ALTER TABLE games
-- ADD COLUMN session_length interval;

-- UPDATE games
-- SET session_length='2 hours 30 minutes'
-- WHERE title='Eden Ring';

--Other valid examples:
-- 2 hours
-- 7 days
-- 2 months
-- 1 hour 15 minutes

--Boolean: stores a value of either tru or false
-- ALTER TABLE games
-- ADD COLUMN multiplayer boolean;

-- UPDATE games
-- SET multiplayer=TRUE
-- WHERE title='Minecraft'

--Boolean values must be TRUE or FALSE, no  int value of 1 or 0
