-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT
  (SELECT COUNT(Title)
  FROM Books
  WHERE Title = 'Dracula') -
  (SELECT COUNT(b.Title)
  FROM Books b
  JOIN Loans l ON b.BookID = l.BookID
  WHERE b.Title = 'Dracula'
  AND l.ReturnedDate IS NULL)
AS AvailableCopies;