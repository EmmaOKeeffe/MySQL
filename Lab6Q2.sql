select c.city, avg(datediff(o.shippedDate, o.orderDate)) as average
from classicmodels171.customers c, classicmodels171.orders o
where c.customerNumber = o.customerNumber 
group by c.city
