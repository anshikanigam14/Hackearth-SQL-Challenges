/*Language used: MYSQL*/

select cast(sum((s1.height*s2.height))/2 as UNSIGNED) as answer
from Students s1 inner join Students s2
on s1.name != s2.name;