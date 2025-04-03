SELECT c.customer_id, c.name, o.order_id, p.product_name, o.quantity
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN products p ON o.product_id = p.product_id;


SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;


UPDATE products
SET price = price * 1.10
WHERE category_id IN (SELECT category_id FROM categories WHERE category_name LIKE 'Electronics');


DELETE FROM customers
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE orders.customer_id = customers.customer_id);


SELECT c.category_name, SUM(p.price * o.quantity) AS total_revenue
FROM products p
JOIN categories c ON p.category_id = c.category_id
JOIN orders o ON p.product_id = o.product_id
GROUP BY c.category_name
HAVING SUM(p.price * o.quantity) > 5000;
