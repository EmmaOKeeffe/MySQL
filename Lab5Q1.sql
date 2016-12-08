select f.film_id, f.title
from sakila.customer c, sakila.rental r, sakila.inventory i, sakila.film f
where c.customer_id = r.customer_id
	and r.inventory_id = i.inventory_id
    and i.film_id = f.film_id
    and c.first_name like "D%"
group by f.film_id
having count(r.customer_id) > 1