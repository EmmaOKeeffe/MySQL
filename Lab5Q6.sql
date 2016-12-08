SELECT f.title, f.film_id, a.first_name, a.last_name, c.name, f.rental_rate
FROM film f, actor a, category c, film_category fc, film_actor fa, (
	select f.film_id, count(i.film_id) as myCount
	from rental r, inventory i, film f
    where r.inventory_id = i.inventory_id
		and i.film_id = f.film_id
    group by f.film_id
    order by myCount desc limit 10) as GetFilm
WHERE f.film_id = GetFilm.film_id
    AND fc.film_id = f.film_id
    AND fc.category_id = c.category_id
    AND a.actor_id = fa.actor_id
group by GetFilm.film_id
order by f.rental_rate desc

