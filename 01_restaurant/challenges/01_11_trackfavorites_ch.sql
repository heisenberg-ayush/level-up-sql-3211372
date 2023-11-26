-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT DishID
FROM Dishes
WHERE Name = 'Quinoa Salmon Salad';

UPDATE Customers
SET FavoriteDish = 9
WHERE FirstName = 'Cleo' AND LastName = 'Goldwater';

SELECT c.FirstName, c.LastName, c.FavoriteDish, d.Name
FROM Customers c
JOIN Dishes d ON d.DishID = c.FavoriteDish
WHERE c.FirstName = 'Cleo';