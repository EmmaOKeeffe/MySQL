select customerNumber, sum(amount) as total
from payments
group by customerNumber
order by total desc