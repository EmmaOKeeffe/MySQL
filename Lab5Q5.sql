SELECT c.name, count(c.category_id) as myCount
FROM (
	select customer_id, sum(amount)
    from payment
    group by customer_id
    HAVING sum(amount) > 100.00) custnbr
join rental r on custnbr.customer_id = r.customer_id
join inventory i on r.inventory_id = i.inventory_id
join film f on f.film_id = i.film_id
join film_category ft on ft.film_id = f.film_id
join category c on ft.category_id = c.category_id
group by c.name
order by count(c.name) DESC