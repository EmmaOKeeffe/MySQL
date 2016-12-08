select a.name, count(distinct b.District) as myCount
from Country a, City b
where a.Code = b.CountryCode
group by a.name
order by myCount desc