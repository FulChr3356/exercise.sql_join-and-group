SELECT  SUM(quantityOrdered)*SUM(priceEach) AS 'Total Sale', productName AS 'Product Name', SUM(quantityOrdered) AS 'Total # Ordered'
FROM orderdetails, products
WHERE products.productCode = orderdetails.productCode
GROUP BY orderdetails.productCode
ORDER BY  SUM(quantityOrdered)*SUM(priceEach) DESC;
