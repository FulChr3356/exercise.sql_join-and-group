SELECT MONTH(paymentDate) AS Month, YEAR(paymentDate) AS Year, SUM(amount) AS 'Payments Recieved'
FROM payments
GROUP by Month
ORDER BY Year, Month;
