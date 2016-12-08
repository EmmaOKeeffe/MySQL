select o.orderDate, o.status, c.customerName
from orders o, customers c
where o.customerNumber = c.customerNumber