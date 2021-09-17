SELECT TO_CHAR(orders.order_date, 'YYYY') AS "year", 
TO_CHAR(orders.order_date, 'MM') AS "month",
COUNT(orders.order_date) AS order_count,
ROUND(SUM((order_details.unit_price*quantity)*(1-discount)))
FROM orders
JOIN order_details
ON (orders.order_id = order_details.order_id)
GROUP BY TO_CHAR(orders.order_date, 'YYYY'), TO_CHAR(orders.order_date, 'MM')
HAVING TO_CHAR(orders.order_date, 'YYYY') = '1997'
ORDER BY TO_CHAR(orders.order_date, 'MM')
