-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

UPDATE Loans
SET ReturnedDate = '2022-07-5'
WHERE BookID = 
  (SELECT BookID FROM Books
  WHERE Barcode = '6435968624')
AND ReturnedDate IS NULL;

UPDATE Loans
SET ReturnedDate = '2022-07-5'
WHERE BookID = 
  (SELECT BookID FROM Books
  WHERE Barcode = '5677520613')
AND ReturnedDate IS NULL;

UPDATE Loans
SET ReturnedDate = '2022-07-5'
WHERE BookID = 
  (SELECT BookID FROM Books
  WHERE Barcode = '8730298424')
AND ReturnedDate IS NULL;

SELECT l.BookID, b.Barcode, l.ReturnedDate
FROM Loans l
JOIN Books b ON b.BookID = l.BookID
WHERE l.ReturnedDate = '2022-07-5' 
AND (b.Barcode = '6435968624'
OR b.Barcode = '5677520613'
OR b.Barcode = '8730298424');