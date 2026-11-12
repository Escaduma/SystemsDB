--Query 1
CREATE  DATABASE PracticeDB

--Query 2
CREATE TABLE Books(
book_name varchar(100),
isbn numeric,
author varchar(50),
publication_date date);

select * from Books;

INSERT INTO Books (book_name, isbn, author, publication_date)
VALUES 
('I am not Jessica Chen', 9781038900395, 'Ann Liang', '2025-1-28'),
('Boulevard', 9781834110721, 'Flor M. Salvador', '2022-2-24'),
('Solito', 9780861544721, 'Javier Zamora', '2022-9-6');

--Query 3
INSERT INTO Books (book_name, isbn, author, publication_date)
VALUES 
('I am not Jessica Chen' 9781038900395, 'Ann Liang', '2025-1-28'),
('Boulevard', 9781834110721, 'Flor M. Salvador', '2022-2-24'),
('Solito', 9780861544721, 'Javier Zamora', '2022-9-6');

--Message shown
ERROR:  syntax error at or near "9781038900395"
LINE 3: ('I am not Jessica Chen' 9781038900395, 'Ann Liang', '2025-1...
                                 ^ 

SQL state: 42601
Character: 96
