SELECT e.firstName, e.lastName, k.myCount 
FROM (
    SELECT e.reportsTo, COUNT(c.customerNumber) AS myCount
    FROM employees e, customers c
    WHERE e.employeeNumber = c.salesRepEmployeeNumber
    GROUP BY e.reportsTo
    ) k, employees e
WHERE k.reportsTo = e.employeeNumber
	AND e.jobTitle LIKE "%Manager%"
