SELECT product_name, round(SUM((order_details.unit_price*quantity)*(1-discount)))
FROM products
JOIN order_details ON (products.prodtuct_id = order_details.product_id)
GROUP BY product_name
ORDER BY sum(order_details.unit_price) ASC
FETCH FIRST 10 ROWS ONLY
