SELECT c.customer_name, 
       o.order_date,
       o.amount,
       SUM(o.amount) OVER (PARTITION BY c.customer_name ORDER BY o.order_date) AS running_total
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;