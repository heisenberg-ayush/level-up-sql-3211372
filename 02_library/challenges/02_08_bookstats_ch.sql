-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT Published, COUNT(DISTINCT(Title)) TotalPublished
FROM Books
GROUP BY Published
ORDER BY TotalPublished DESC;

SELECT B.Title, COUNT(l.Book) TotalCheckedOut
FROM Loans l
JOIN Books b ON l.BookID = b.BookID
GROUP BY b.Title
ORDER BY TotalCheckedOut DESC
LIMIT 5;