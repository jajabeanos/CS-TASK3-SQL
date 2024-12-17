-- Creating the database
CREATE DATABASE library_database;

-- Create table 
USE library_database;

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(500) NOT NULL,
    author VARCHAR(500) NOT NULL,
    borrowed_date DATE
);

-- List all books
INSERT INTO books (title, author, borrowed_date) VALUES
('To Kill a Mockingbird', 'Harper Lee', '2024-02-15'),
('Pride and Prejudice', 'Jane Austen', '2024-03-10'), 
('The Great Gatsby', 'F. Scott Fitzgerald', '2024-02-28'),
('Brave New World', 'Aldous Huxley', '2024-01-05'),
('Toilet-Bound Hanako-Kun', 'AidaIro', '2024-10-29');

--  List all books
SELECT * FROM books;

-- Find books by author
SELECT book_id, title, author, borrowed_date
FROM books
WHERE author = 'AidaIro';

-- Find books borrowed on a specific date 
SELECT book_id, title, author, borrowed_date
FROM books
WHERE borrowed-date = 2024-2-28;

-- Find books borrowed after a certain date
SELECT book_id, title, author, borrowed_date
FROM books
WHERE borrowed_date > "2024-02-10";

-- Update borrowed_date
UPDATE books
SET borrowed_date = '2024-06-27'
WHERE title = 'Toilet-Bound Hanako-Kun';

-- Delete a book
DELETE FROM books
WHERE title = "Pride and Prejudice"
  AND author = "Jane Austen"
  AND borrowed_date = '2024-03-10';

-- Re-add a book
INSERT INTO books (title, author, borrowed_date) 
VALUES ('Pride and Prejudice', 'Jane Austen', '2024-03-10');







