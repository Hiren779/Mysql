select concat(name, '(', substr(occupation,1,1), ')')
from occupations
order by name asc;
select concat('There are total ', count(1), ' ' , lower(occupation), 's.')
from occupations
group by occupation
order by count(1) asc, occupation asc;
