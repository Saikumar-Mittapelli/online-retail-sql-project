USE ecommerce_db;


-- Remove negative and zero quantities
DELETE FROM online_retail WHERE Quantity <= 0;


-- Remove negative or zero price
DELETE FROM online_retail WHERE UnitPrice <= 0;


-- Remove rows with no customer ID
DELETE FROM online_retail WHERE CustomerID IS NULL;


-- Add TotalAmount column
ALTER TABLE online_retail ADD COLUMN TotalAmount DECIMAL(12,2);
UPDATE online_retail
SET TotalAmount = Quantity * UnitPrice;