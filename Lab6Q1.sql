select c.country, ci.city, count(r.rental_id) as total_rentals
from sakila.country c, sakila.city ci, sakila.rental r, sakila.address a, 
	sakila.customer cu
where c.country_id = ci.country_id 
	and ci.city_id = a.city_id
    and a.address_id = cu.address_id
    and cu.customer_id = r.customer_id
group by ci.city_id
order by c.country and ci.city and count(r.rental_id)