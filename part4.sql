SELECT productLine AS 'Product Line' ,COUNT(quantityOrdered) As '# Sold'
FROM products, orderdetails
WHERE products.productCode = orderdetails.productCode
GROUP BY  productLine
ORDER By COUNT(quantityOrdered) DESC;
