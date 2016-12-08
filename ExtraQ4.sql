SELECT a.first_name, a.last_name, f.release_year
FROM film_text ft, film f, actor a, film_actor fa
WHERE ft.film_id = f.film_id
    and f.film_id = fa.film_id
    and fa.actor_id = a.actor_id
    and ft.description LIKE '%Crocodile%'
	or ft.description LIKE '%Shark%'
ORDER BY a.last_name