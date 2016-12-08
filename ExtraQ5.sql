SELECT COUNT(f.film_id) as myCount
FROM film f, film_text ft 
WHERE f.film_id = ft.film_id
	AND ft.description LIKE '%Crocodile%'
	or ft.description LIKE '%Shark%'