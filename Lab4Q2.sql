select a.first_name, a.last_name
from film_actor fa, film_category fc, actor a
where fa.actor_id = a.actor_id 
	and fa.film_id = fc.film_id
    and fc.category_id = 1
group by fa.actor_id
order by count(fa.actor_id = a.actor_id 
	and fa.film_id = fc.film_id
    and fc.category_id = 1) desc
limit 1