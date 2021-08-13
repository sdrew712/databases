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