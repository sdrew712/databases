-- Artist Table

-- 1
INSERT INTO artist (name)
VALUES ('Kanye West');

INSERT INTO artist (name)
VALUES ('The Beatles');

INSERT INTO artist (name)
VALUES ('Daniel Caesar');

-- 2
SELECT * FROM artist
ORDER by name ASC
LIMIT 5

-- Employee Table

-- 1
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary'

-- 2
SELECT * FROM employee
WHERE reports_to = 2

-- 3
SELECT COUNT(employee_id)
FROM employee
WHERE city = 'Lethbridge';

-- Invoice Table

-- 1
SELECT COUNT(invoice_id)
FROM invoice
WHERE billing_country = 'USA';

-- 2
SELECT MAX(total)
FROM invoice

-- 3
SELECT MIN(total)
FROM invoice

-- 4
SELECT * FROM invoice
WHERE total > 5;

-- 5
SELECT COUNT(invoice_id)
FROM invoice
WHERE total < 5

-- 6
SELECT SUM(total)
FROM invoice;

-- Join Queries

-- 1
SELECT unit_price FROM invoice i
JOIN invoice_line il
ON i.invoice_id = il.invoice_id
WHERE unit_price > 0.99

-- 2
SELECT i.invoice_date, c.first_name, c.last_name
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id

-- 3
SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id

-- 4
SELECT al.title, ar.name
FROM album al
JOIN artist ar
ON al.artist_id = ar.artist_id

-- Extra Credit

-- Artist Table

-- 1
SELECT * FROM artist
ORDER by name DESC
LIMIT 10

-- 2
SELECT * FROM artist
WHERE name LIKE 'Black%'

-- 3
SELECT * FROM artist
WHERE name LIKE '%Black%'

-- Employee Table

-- 1
SELECT MAX(birth_date)
FROM employee;

-- 2
SELECT MIN(birth_date)
FROM employee;

-- Invoice Table

-- 1
SELECT COUNT(*)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- 2
SELECT AVG(total)
FROM invoice;

-- More Join Queries

-- 1
SELECT track_id FROM playlist_track pt
JOIN playlist pl
ON pt.playlist_id = pl.playlist_id
WHERE name = 'Music'

-- 2
SELECT t.name FROM track t
JOIN playlist_track pt
ON t.track_id = pt.track_id
WHERE pt.playlist_id = 5;

-- 3
SELECT t.name, pl.name FROM track t
JOIN playlist_track pt
ON t.track_id = pt.track_id
JOIN playlist pl
ON pt.playlist_id = pl.playlist_id

-- 4
SELECT t.name, a.title FROM track t
JOIN album a
ON t.album_id = a.album_id
JOIN genre g
ON t.genre_id = g.genre_id
WHERE g.name = 'Alternative & Punk'