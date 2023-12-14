--count
select Count(*) from movies

select 
	COUNT(*) 
from movies
--alows you to filter data
WHERE rating = 'G'


--Sum
select 
SUM(rental_duration)
FROM rentals

--length of all r rated moviews
select 
SUM(length_in_minutes) 
from movies 
where rating = 'R'

--Avg
select 
AVG(length_in_minutes) 
from movies 

--avg for g rated replacement
select 
AVG(replacement_cost)
from movies 
WHERE rating = 'G'

--one movie has many rentals