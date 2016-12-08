SELECT first_name, last_name
FROM actor 
WHERE first_name LIKE '%SON%'
	OR last_name LIKE '%SON%'
ORDER BY first_name