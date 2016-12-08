select count(*)
from (
	select p.customer_id
    from payment p
    group by p.customer_id
    having sum(p.amount) > 100
) custnbr