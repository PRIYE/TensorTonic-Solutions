-- Write your SQL query here
WITH  month_cust AS(
    SELECT customer , COUNT(*) as order_count, SUM(amount) as total_spent
    FROM orders
        GROUP BY customer

)
SELECT *
FROM month_cust
WHERE order_count >1
ORDER BY total_spent DESC , customer ASC;







