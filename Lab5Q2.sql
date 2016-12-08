select dayname(r.rental_date), count(weekday(r.rental_date)) as myCount
from sakila.rental r
group by weekday(r.rental_date)
order by myCount DESC
limit 1