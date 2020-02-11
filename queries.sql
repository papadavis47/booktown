SELECT * FROM subjects ORDER BY subject;
SELECT * FROM subjects ORDER BY location;
SELECT * FROM books WHERE title = 'Little Women';
SELECT * FROM books WHERE title LIKE '%Python%';
SELECT * FROM subjects WHERE location = 'Main St' ORDER BY subject;

----------Joins -----------------
SELECT * FROM books join subjects ON books.subject_id = subjects.id WHERE subject = 'Computers'; 
SELECT * FROM books join authors ON books.author_id = authors.id join subjects on books.subject_id = subjects.id;
SELECT books.title, stock.retail FROM books INNER JOIN editions ON books.id = editions.book_id INNER JOIN stock ON editions.isbn = stock.isbn ORDER BY retail DESC;


-- HERE ARE THE COUNTS --
SELECT COUNT(*) FROM books;




---------------------- the following is last question ----------------------------------------

SELECT b.id, b.title, COUNT(e.edition) FROM books b INNER JOIN editions e ON b.id=e.book_id GROUP BY b.id, b.title;
