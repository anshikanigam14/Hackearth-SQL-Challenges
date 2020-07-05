/*Language used: MYSQL*/

select f.student
from First f inner join Second s
on f.id = s.id
and f.subject = s.subject
where f.marks in (select max(marks) from First group by id)
and s.test = 'Yes'
group by f.student
having count(f.student) >= 2;