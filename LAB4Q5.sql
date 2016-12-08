SELECT f.title, f.release_year, c.name
FROM film f, category c, film_category fc
WHERE f.film_id = fc.film_id
	AND fc.category_id = c.category_id
	AND f.description LIKE '%Moose%'
