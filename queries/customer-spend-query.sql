SELECT c.customer_id, c.customer_name, SUM(o.amount) AS total_spend
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
WHERE c.region = 'North'
GROUP BY c.customer_id 
ORDER BY total_spend DESC;