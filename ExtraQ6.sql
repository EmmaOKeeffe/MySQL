SELECT c.name, COUNT(f.film_id) AS myCount
FROM film f, film_category fc, category c
WHERE f.film_id = fc.film_id
	AND fc.category_id = c.category_id
GROUP BY fc.category_id
HAVING COUNT(f.film_id) < 65 AND COUNT(f.film_id) > 55
ORDER BY myCount