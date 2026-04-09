-- Total Sales
SELECT SUM(sales) AS total_sales 
FROM Final_superstore_fixed;

-- Sales by Region
SELECT region, SUM(sales) AS total_sales
FROM Final_superstore_fixed
GROUP BY region
ORDER BY total_sales DESC;

-- Top 10 Products
SELECT `Product Name`, SUM(sales) AS total_sales
FROM Final_superstore_fixed
GROUP BY `Product Name`
ORDER BY total_sales DESC
LIMIT 10;

-- Sales by Category
SELECT category, SUM(sales) AS total_sales
FROM Final_superstore_fixed
GROUP BY category
ORDER BY total_sales DESC;

-- Monthly Sales Trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(sales) AS total_sales
FROM Final_superstore_fixed
GROUP BY month
ORDER BY month;
