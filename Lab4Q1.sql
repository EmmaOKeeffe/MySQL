select cl.Language
from Country c, CountryLanguage cl
where c.Code = cl.CountryCode
	and (cl.Percentage / 100 * c.Population) > 1000000
order by (cl.Percentage / 100 * c.Population) desc