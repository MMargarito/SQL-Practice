SELECT p.category, SUM(o.amount) AS total_revenue
FROM products as p
LEFT JOIN orders as o
ON p.product_id = o.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;
