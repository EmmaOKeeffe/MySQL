select count(*)
from (
	select avg(f.replacement_cost - f.rental_rate) as myCount
	from category c, film_category fc, film f
	where f.film_id = fc.film_id
		and fc.category_id = c.category_id
	group by fc.category_id
	having myCount > 17 ) averages
