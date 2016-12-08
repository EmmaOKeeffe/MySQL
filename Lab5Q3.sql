select f.film_id, f.title, c.name, count(i.inventory_id) as myCount
from rental r, film f, inventory i, film_category fc, category c
where r.inventory_id = i.inventory_id
	and i.film_id = f.film_id
    and f.film_id = fc.film_id
    and fc.category_id = c.category_id
    and i.store_id = 1
group by f.film_id
order by c.name 