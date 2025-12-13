-- Country-wise revenue
SELECT Country,
SUM(TotalAmount) AS Revenue
FROM online_retail
GROUP BY Country
ORDER BY Revenue DESC;


-- Top-selling products
SELECT Description,
SUM(Quantity) AS TotalQty
FROM online_retail
GROUP BY Description
ORDER BY TotalQty DESC
LIMIT 10;


-- Daily sales trend
SELECT DATE(InvoiceDate) AS Day,
SUM(TotalAmount) AS Revenue
FROM online_retail
GROUP BY Day
ORDER BY Day;