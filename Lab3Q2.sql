select o.orderDate, o.status, p.amount
from orders o, payments p
where o.customerNumber = p.customerNumber
order by p.amount desc