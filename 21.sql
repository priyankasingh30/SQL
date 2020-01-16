--Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

SELECT concat(concat(CONCAT(Name, '('), SUBSTR(Occupation,1,1)),')') 
FROM OCCUPATIONS
ORDER BY Name ;


select concat(concat(concat(concat('There are a total of ' , count(occupation)),' '),lower(occupation)),'s.')
from occupations
group by occupation
order by count(occupation), occupation;