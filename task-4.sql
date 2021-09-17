SELECT country, COUNT(customer_id) AS number_of_costumers FROM customers
GROUP BY country
HAVING COUNT(customer_id) > 5
ORDER BY COUNT(customer_id) DESC
