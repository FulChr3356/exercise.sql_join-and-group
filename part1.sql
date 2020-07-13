SELECT concat(firstName,' ', lastName) AS 'Sales Rep', employeeNumber, salesRepEmployeeNumber, customerName 
FROM employees, customers
WHERE employeeNumber = salesRepEmployeeNumber
ORDER BY customerName 


