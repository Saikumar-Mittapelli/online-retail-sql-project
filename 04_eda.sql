-- Total rows
SELECT COUNT(*) FROM online_retail;


-- Unique customers
SELECT COUNT(DISTINCT CustomerID) FROM online_retail;


-- Unique products
SELECT COUNT(DISTINCT StockCode) FROM online_retail;


-- Unique invoices
SELECT COUNT(DISTINCT InvoiceNo) FROM online_retail;


-- Date range
SELECT MIN(InvoiceDate), MAX(InvoiceDate) FROM online_retail;


-- Monthly revenue
SELECT DATE_FORMAT(InvoiceDate, '%Y-%m') AS Month,
SUM(TotalAmount) AS Revenue
FROM online_retail
GROUP BY Month ORDER BY Month;