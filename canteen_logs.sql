/*Language used: MSSQL*/

with cte1 as
(select l1.p1 as p1, l1.p2 as p2, sum(l1.amount) as amount from logs l1 
group by l1.p1, l1.p2
)
select c1.p1, c1.p2, (c1.amount - c2.amount) as amount
from cte1 c1 inner join cte1 c2
on c1.p1 = c2.p2 and c2.p1 = c1.p2
where (c1.amount - c2.amount) > 0;