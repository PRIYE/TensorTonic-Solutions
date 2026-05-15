-- Write your SQL query here
select e.username, COALESCE(m.username, 'organic' ) as  referrer_name
FROM user_referrals e
LEFT JOIN user_referrals m
ON  e.referred_by = m.id
ORDER BY e.username ASC