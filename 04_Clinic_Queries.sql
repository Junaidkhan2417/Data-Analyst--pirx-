-- Clinic Queries

-- Q1
SELECT sales_channel, SUM(amount) AS total_revenue
FROM clinic_sales
WHERE EXTRACT(YEAR FROM datetime) = 2021
GROUP BY sales_channel;

-- Q2
SELECT uid, SUM(amount) AS total_spent
FROM clinic_sales
WHERE EXTRACT(YEAR FROM datetime) = 2021
GROUP BY uid
ORDER BY total_spent DESC
LIMIT 10;
