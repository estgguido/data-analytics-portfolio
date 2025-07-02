### Data Cleaning and Exploration

-- Any products where price is = 0
SELECT sku_id, name, discountedsellingprice
FROM zepto
WHERE mrp = 0 OR discountedsellingprice = 0;

DELETE FROM zepto
WHERE mrp = 0;

-- Looking for null values. Thankfully we don't have any null values.

SELECT * FROM zepto 
WHERE name IS NULL
OR
category IS NULL
OR
mrp IS NULL
OR
discountpercent IS NULL
OR
availablequantity IS NULL
OR
discountedsellingprice IS NULL
OR
weightingms IS NULL
OR
outofstock IS NULL
OR
quantity IS NULL;

### Data Exploration

-- List of different product categories
SELECT DISTINCT category
FROM zepto
ORDER BY category;

-- Products in stock vs out of stock
SELECT outofstock, COUNT(sku_id)
FROM zepto
GROUP BY outofstock;

-- Products with multiple SKU's (more than one) and number of SKU's per product
SELECT name, count(sku_id) AS "Number of SKU's"
FROM zepto
GROUP BY name
HAVING count(sku_id) > 1
ORDER BY count(sku_id) DESC;

-- Analysis

-- Find the top 10 best-value products based on the discount percentage.
SELECT DISTINCT name, discountpercent
FROM zepto
ORDER BY discountpercent DESC
LIMIT 10;

-- What are the Products with High MRP but Out of Stock
SELECT distinct name, mrp, outofstock
FROM zepto
WHERE outofstock = True
AND mrp > 300
ORDER BY mrp DESC;
-- It is recommended to restock the following products as soon as possible. 


-- Calculate Estimated Revenue for each category
SELECT category, SUM(discountedsellingprice * availablequantity) as estimated_revenue
FROM zepto 
GROUP By category
ORDER BY estimated_revenue;


-- Find all products where MRP is greater than 500 and discount is less than 10%.
SELECT distinct name, mrp, discountpercent
FROM zepto 
WHERE mrp > 500 AND discountpercent < 10
ORDER BY mrp DESC;

--  Identify the top 5 categories offering the highest average discount percentage.
SELECT category, ROUND(AVG(discountpercent),2) AS avg_discount
FROM zepto
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;


-- Find the price per gram for products above 100g and sort by best value.
SELECT DISTINCT name, weightingms, discountedsellingprice, ROUND(discountedsellingprice/weightingms,2) AS price_per_gram
FROM zepto
WHERE weightingms >= 100
ORDER BY price_per_gram;

-- Group the products into categories like Low, Medium, Bulk.
SELECT DISTINCT name, weightingms,
CASE WHEN weightingms < 1000 THEN 'Low'
 	 WHEN weightingms < 5000 THEN 'Medium'
	 ELSE 'Bulk'
	 END AS weight_category
From zepto;
 	

-- What is the Total Inventory Weight Per Category

SELECT category, SUM(weightingms * availablequantity) AS total_inventory_weight
FROM zepto
GROUP BY category
ORDER BY total_inventory_weight DESC;

