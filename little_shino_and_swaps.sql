/*Language used: MSSQL*/

with cte1 as (
select studentid,score2 as score1, score1 as score2 from Marks  
where studentid in (select studentid from  Students)
),
cte2 as 
(select 
* from Marks 
where studentid not in ( select studentid from Students))
select * from cte1 
union
select * from cte2;