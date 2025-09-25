-- Task 3: Writing Basic SELECT Queries

-- 1. Show all members
SELECT * FROM Members;
-- 2. Show only member names and emails
SELECT name, email FROM Members;

-- 3. Find all books published after 2000
SELECT title, published_year
FROM Books
WHERE published_year > 2000;

-- 4. Find all books in the 'UK' (by joining Authors)
SELECT b.title, a.name AS author
FROM Books b
JOIN BookAuthors ba ON b.book_id = ba.book_id
JOIN Authors a ON ba.author_id = a.author_id
WHERE a.country = 'UK';

-- 5. Find members who haven’t returned books yet
SELECT m.name, b.title, l.loan_date
FROM Loans l
JOIN Members m ON l.member_id = m.member_id
JOIN Books b ON l.book_id = b.book_id
WHERE l.return_date IS NULL;

-- 6. Show all books sorted by published year (descending)
SELECT title, published_year
FROM Books
ORDER BY published_year DESC;

-- 7. Show the first 3 members (LIMIT)
SELECT * FROM Members
LIMIT 3;

-- 8. Show distinct genres of books
SELECT DISTINCT genre FROM Books;

-- 9. Find books published between 1980 and 2000
SELECT title, published_year
FROM Books
WHERE published_year BETWEEN 1980 AND 2000;

-- 10. Use aliasing for cleaner results
SELECT b.title AS BookTitle, a.name AS AuthorName
FROM Books b
JOIN BookAuthors ba ON b.book_id = ba.book_id
JOIN Authors a ON ba.author_id = a.author_id;
