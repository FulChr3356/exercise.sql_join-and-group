SELECT status AS 'Order Status', COUNT(status) AS '# Orders'
FROM orders
GROUP BY status;

