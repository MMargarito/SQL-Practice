SELECT c.customer_id, c.customer_name, o.amount
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY o.amount DESC;