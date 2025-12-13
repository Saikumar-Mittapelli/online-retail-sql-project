-- Top customers by revenue
SELECT CustomerID,
SUM(TotalAmount) AS Revenue
FROM online_retail
GROUP BY CustomerID
ORDER BY Revenue DESC
LIMIT 10;


-- Customers with more than 5 orders in Jan 2010
SELECT CustomerID, COUNT(*) AS Orders
FROM online_retail
WHERE InvoiceDate BETWEEN '2010-01-01' AND '2010-01-31'
GROUP BY CustomerID
HAVING COUNT(*) > 5
ORDER BY Orders DESC;


-- Repeat customers
SELECT CustomerID, COUNT(DISTINCT InvoiceNo) AS TotalOrders
FROM online_retail
GROUP BY CustomerID
HAVING TotalOrders > 1;