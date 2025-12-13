CREATE DATABASE IF NOT EXISTS ecommerce_db;
USE ecommerce_db;


CREATE TABLE online_retail (
InvoiceNo VARCHAR(20),
StockCode VARCHAR(20),
Description TEXT,
Quantity INT,
InvoiceDate DATETIME,
UnitPrice DECIMAL(10,2),
CustomerID VARCHAR(20),
Country VARCHAR(50)
);