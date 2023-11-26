-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT c.FirstName, c.LastName, c.Email, COUNT(o.OrderID) OrderCount
FROM Customers c
JOIN Orders o ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID
ORDER BY OrderCount DESC
LIMIT 15;