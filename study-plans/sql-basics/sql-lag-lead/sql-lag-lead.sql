-- Write your SQL query here
SELECT  month, revenue, 
LAG(revenue ,1,0) OVER (ORDER BY month) as prev_revenue,
revenue - prev_revenue as revenue_change 
FROM monthly_revenue
ORDER BY month ASC;