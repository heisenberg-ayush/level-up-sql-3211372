-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT p.FirstName, p.LastName, p.Email, COUNT(l.LoanID) BooksChecked
FROM Loans l
JOIN Patrons p ON p.PatronID = l.PatronID
GROUP BY l.PatronID
HAVING BooksChecked <10;