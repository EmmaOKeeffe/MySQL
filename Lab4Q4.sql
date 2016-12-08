select f.title
from inventory i, film f, rental r
where r.inventory_id = i.inventory_id
	and i.film_id = f.film_id
group by f.film_id
order by count(r.inventory_id) desc
limit 10;