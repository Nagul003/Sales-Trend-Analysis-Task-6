
-- Task 6 - Sales Trend Analysis Using SQL

-- 1. View Data
SELECT * FROM `online sales data` LIMIT 10;

-- 2. Monthly Revenue
SELECT
YEAR(STR_TO_DATE(`Date`, '%d-%m-%Y')) AS Year,
MONTH(STR_TO_DATE(`Date`, '%d-%m-%Y')) AS Month,
SUM(`Total Revenue`) AS Monthly_Revenue
FROM `online sales data`
GROUP BY Year, Month
ORDER BY Year, Month;

-- 3. Monthly Order Volume
SELECT
YEAR(STR_TO_DATE(`Date`, '%d-%m-%Y')) AS Year,
MONTH(STR_TO_DATE(`Date`, '%d-%m-%Y')) AS Month,
COUNT(`Transaction ID`) AS Monthly_Order_Volume
FROM `online sales data`
GROUP BY Year, Month
ORDER BY Year, Month;

-- 4. Monthly Units Sold
SELECT
YEAR(STR_TO_DATE(`Date`, '%d-%m-%Y')) AS Year,
MONTH(STR_TO_DATE(`Date`, '%d-%m-%Y')) AS Month,
SUM(`Units Sold`) AS Total_Units_Sold
FROM `online sales data`
GROUP BY Year, Month
ORDER BY Year, Month;

-- 5. Top 5 Months by Revenue
SELECT
YEAR(STR_TO_DATE(`Date`, '%d-%m-%Y')) AS Year,
MONTH(STR_TO_DATE(`Date`, '%d-%m-%Y')) AS Month,
SUM(`Total Revenue`) AS Revenue
FROM `online sales data`
GROUP BY Year, Month
ORDER BY Revenue DESC
LIMIT 5;

-- 6. Revenue by Product Category
SELECT `Product Category`, SUM(`Total Revenue`) AS Revenue
FROM `online sales data`
GROUP BY `Product Category`
ORDER BY Revenue DESC;

-- 7. Revenue by Region
SELECT Region, SUM(`Total Revenue`) AS Revenue
FROM `online sales data`
GROUP BY Region
ORDER BY Revenue DESC;

-- 8. Revenue by Payment Method
SELECT `Payment Method`, SUM(`Total Revenue`) AS Revenue
FROM `online sales data`
GROUP BY `Payment Method`
ORDER BY Revenue DESC;

-- 9. Average Revenue per Transaction
SELECT AVG(`Total Revenue`) AS Average_Revenue
FROM `online sales data`;

-- 10. Highest Revenue Transaction
SELECT *
FROM `online sales data`
ORDER BY `Total Revenue` DESC
LIMIT 1;
