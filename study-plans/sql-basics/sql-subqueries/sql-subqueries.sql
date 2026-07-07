-- Write your SQL query here
SELECT name, price ,
    ROUND(price - (SELECT AVG(price) FROM products)  , 2) AS vs_avg
FROM products 
WHERE id in (SELECT product_id FROM sales WHERE quantity >0)
ORDER BY vs_avg DESC, name ASC
