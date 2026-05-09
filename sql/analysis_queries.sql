-- Total Revenue
SELECT SUM(Sales) AS total_revenue FROM superstore;

-- Total Profit
SELECT SUM(Profit) AS total_profit FROM superstore;

-- Profit Margin
SELECT 
    SUM(Profit)/SUM(Sales)*100 AS profit_margin
FROM superstore;

-- Top 10 Products
SELECT "Product Name", SUM(Sales) AS revenue
FROM superstore
GROUP BY "Product Name"
ORDER BY revenue DESC
LIMIT 10;

-- Sales by Region
SELECT Region, SUM(Sales) AS revenue
FROM superstore
GROUP BY Region;

-- Monthly Sales Trend
SELECT 
    DATE_TRUNC('month', "Order Date") AS month,
    SUM(Sales) AS revenue
FROM superstore
GROUP BY month
ORDER BY month;