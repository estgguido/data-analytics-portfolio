
## Queries:

-- Top 3 products that performed the best in 2020?
SELECT DISTINCT"product_name", SUM(usd_price) as total_revenue, 
EXTRACT(YEAR FROM "purchase_ts") AS purchase_year
FROM "Orders"
WHERE EXTRACT(YEAR FROM "purchase_ts") = 2020
GROUP BY "product_name", "purchase_year"
ORDER BY total_revenue DESC
LIMIT 3;
