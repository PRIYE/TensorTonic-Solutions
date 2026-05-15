-- Write your SQL query here
SELECT name, COALESCE(email, 'N/A') as display_email, 
CASE
    WHEN deactivated_at is NULL THEN 'active'
    ELSE 'inactive'
END as status
FROM customers
WHERE phone is NOT null
ORDER BY name ASC;
