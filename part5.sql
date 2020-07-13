SELECT concat (lastName,',',firstName) AS 'Sales Rep', COUNT(quantityOrdered) AS 'Total # Ordered', COUNT(quantityOrdered)*SUM(priceEach) AS 'Total Sales'
FROM employees,customers,orderdetails, orders
WHERE customers.salesRepEmployeeNumber = employees.employeeNumber and orders.orderNumber = orderdetails.orderNumber AND employees.jobTitle = 'Sales Rep'
GROUP BY employeeNumber
ORDER BY  COUNT(quantityOrdered)*SUM(priceEach) DESC;
