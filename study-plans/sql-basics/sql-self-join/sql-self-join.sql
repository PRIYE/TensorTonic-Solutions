-- Write your SQL query here
SELECT m.username , COALESCE(n.username, 'organic') as referrer_name,
FROM user_referrals m
LEFT JOIN user_referrals n 
ON m.referred_by = n.id
ORDER BY m.username ASC