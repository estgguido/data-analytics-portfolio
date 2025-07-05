-- Calculate Total Revenue
SELECT SUM(total_revenue) AS total_revenue
FROM telecom_churn;

-- Calculate total revenue per city
SELECT city, SUM(total_revenue) AS total_revenue
FROM telecom_churn
GROUP BY city
ORDER BY total_revenue DESC;

-- Percentage of customers that stayed vs churned
SELECT customer_status, COUNT(customer_id) AS number_of_customers,
ROUND(CAST(COUNT(customer_id) AS NUMERIC) / (SELECT COUNT(customer_id) FROM telecom_churn) * 100, 2) AS percentage
FROM telecom_churn
GROUP BY customer_status;


-- For the customers who churned, what are the top 5 churn categories,(e.g., "Competitor", "Dissatisfaction"), and their percentage of total?
SELECT churn_category, COUNT(churn_category), 
ROUND(CAST(COUNT(churn_category) AS NUMERIC) / (SELECT COUNT(churn_category) FROM telecom_churn WHERE churn_category IS NOT NULL) * 100, 2) AS percentage_of_total
FROM telecom_churn
WHERE churn_category IS NOT NULL
GROUP BY churn_category
ORDER BY count(churn_category) DESC;

-- What is the average tenure for churned customers versus customers who have stayed?
SELECT customer_status, ROUND(AVG(tenure_in_months),2) AS "Average Tenure in Months"
FROM telecom_churn
WHERE customer_status != 'Joined'
GROUP BY customer_status;
