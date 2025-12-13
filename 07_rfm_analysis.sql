WITH rfm AS (
SELECT
CustomerID,
MAX(InvoiceDate) AS LastPurchase,
DATEDIFF('2011-12-31', MAX(InvoiceDate)) AS Recency,
COUNT(DISTINCT InvoiceNo) AS Frequency,
SUM(TotalAmount) AS Monetary
FROM online_retail
GROUP BY CustomerID
)
SELECT *,
NTILE(4) OVER (ORDER BY Recency DESC) AS R_Score,
NTILE(4) OVER (ORDER BY Frequency) AS F_Score,
NTILE(4) OVER (ORDER BY Monetary) AS M_Score
FROM rfm;