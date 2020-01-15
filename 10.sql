--Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

select a.city, a.len
from
(select city, length(city) as len
 from station
 order by len asc, city asc) a
where rownum = 1
union 
select a.city, a.len
from
(select city, length(city) as len
 from station
 order by len desc, city desc) a
where rownum = 1;

