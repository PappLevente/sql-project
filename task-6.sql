SELECT company_name, COUNT(orders.order_id) AS orders, 
STRING_AGG(cast(orders.order_id AS VARCHAR), ',') AS order_ids
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.ship_country = 'USA'
GROUP BY customers.company_name
HAVING COUNT(orders.order_id) < 5
ORDER BY COUNT(orders.order_id) ASC
