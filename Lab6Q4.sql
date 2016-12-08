SELECT of.officeCode, COUNT(o.orderNumber) as total_orders
FROM `customers` c, `orders` o, `offices` of, `employees` e
WHERE o.customerNumber = c.customerNumber
	AND c.salesRepEmployeeNumber = e.employeeNumber
    AND e.officeCode = of.officeCode
GROUP BY of.officeCode
LIMIT 1