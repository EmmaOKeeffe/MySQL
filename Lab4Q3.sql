select pl.productline, pl.textDescription, count(od.quantityOrdered) as myCount
from productlines pl, products p, orderdetails od
where pl.productLine = p.productLine
	and p.productCode = od.productCode
group by pl.productLine
order by myCount DESC