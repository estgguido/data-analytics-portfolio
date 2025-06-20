
Queries:

-- What were the top 3 products by total revenue in the year 2020?
SELECT DISTINCT"product_name", SUM(usd_price) as total_revenue, 
EXTRACT(YEAR FROM "purchase_ts") AS purchase_year
FROM "Orders"
WHERE EXTRACT(YEAR FROM "purchase_ts") = 2020
GROUP BY "product_name", "purchase_year"
ORDER BY total_revenue DESC
LIMIT 3;

-- What were the top 3 products by total revenue for each year?

WITH yearly_product_revenue AS( --Aggregate
	SELECT EXTRACT(YEAR FROM "purchase_ts") AS purchase_year, 
	product_name, SUM(usd_price) as total_revenue
	FROM "Orders"
	WHERE EXTRACT(YEAR FROM "purchase_ts") IS NOT NULL
	GROUP BY purchase_year, product_name ), 
ranked_products AS ( --Rank
	SELECT purchase_year, product_name, total_revenue,
	DENSE_RANK() OVER (PARTITION BY purchase_year ORDER BY total_revenue DESC) as revenue_rank
	FROM yearly_product_revenue
) --Filtering to 3
	SELECT purchase_year, product_name, total_revenue, revenue_rank
	FROM ranked_products
	WHERE revenue_rank <= 3
	ORDER BY purchase_year, revenue_rank;


/*Which regions contribute the most to our total revenue?*/

SELECT region, sum(usd_price) AS total_revenue
FROM "Orders" o RIGHT JOIN regions r 
on o.country_code = r.country_code
GROUP BY region
ORDER BY total_revenue DESC;

/*Which countries contribute the most to our total revenue*/

SELECT r.country_code, sum(usd_price) AS total_revenue
FROM "Orders" o RIGHT JOIN regions r
on o.country_code = r.country_code
GROUP BY r.country_code 
HAVING sum(usd_price) IS NOT NULL
ORDER BY total_revenue DESC
LIMIT 5;


-- What is the year-over-year growth rate in total revenue? 
   -- Step 1, Calculate total revenue for each year
   -- Step 2, Get previous year's revenue
   -- Step 3, Calculate year over year growth


WITH YearlyRevenue AS (
    SELECT EXTRACT(YEAR FROM purchase_ts) AS sales_year, SUM(usd_price) AS total_revenue
    FROM "Orders"
    WHERE purchase_ts IS NOT NULL 
    GROUP BY sales_year),
PreviousYearRevenue AS (
    SELECT sales_year, total_revenue,
    LAG(total_revenue, 1) OVER (ORDER BY sales_year) AS previous_year_revenue
    FROM YearlyRevenue)
SELECT sales_year, total_revenue, previous_year_revenue,
    CASE
        WHEN previous_year_revenue IS NULL THEN NULL -- No growth rate for the first year
        WHEN previous_year_revenue = 0 THEN NULL -- Avoid division by zero if previous year revenue was 0
        ELSE ((total_revenue - previous_year_revenue) * 100.0 / previous_year_revenue)
    END AS yoy_growth_rate_percent
FROM PreviousYearRevenue
ORDER BY sales_year; 


/*Which products are performing best within each specific marketing channel (like 'direct', 'email', 'affiliate', etc.)*/

SELECT marketing_channel, product_name, count(order_id) AS number_of_orders
FROM "Orders"
WHERE marketing_channel <> 'unknown'
GROUP BY marketing_channel, product_name
ORDER BY marketing_channel, number_of_orders DESC;


/*What is the distribution of purchases between the website and mobile app? 
Is there a dominant platform, and how has this changed over time?*/

WITH purchase_platform_count_per_year AS ( --Calculating orders/purchases for each platform (mobile and web) per year
	SELECT EXTRACT(YEAR FROM purchase_ts) AS purchase_year, purchase_platform, COUNT (order_id) AS purchases 
	FROM "Orders"
	WHERE EXTRACT(YEAR FROM purchase_ts) IS NOT NULL
	GROUP BY purchase_platform, EXTRACT(YEAR FROM purchase_ts)
	ORDER BY purchase_year),
total_order_count_per_year AS ( --Counting total orders per year
	SELECT EXTRACT(YEAR FROM purchase_ts) AS purchase_year,count(order_id) AS total_orders_in_year
	FROM "Orders"
	GROUP BY purchase_year)
SELECT ppcpy.purchase_year, ppcpy.purchase_platform, ppcpy.purchases, --Calculation
tocpy.total_orders_in_year, ROUND((CAST(ppcpy.purchases AS NUMERIC)/tocpy.total_orders_in_year * 100.0),2) AS percentage_of_yearly_purchases
FROM purchase_platform_count_per_year ppcpy JOIN total_order_count_per_year tocpy
on ppcpy.purchase_year = tocpy.purchase_year;



