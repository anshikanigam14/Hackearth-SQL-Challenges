/*Language used: MSSQL*/

select TOP 8 c.name as Name, c.userid as UserId, sum(p.score) as Total
from
Candidates c inner join Submissions s ON s.UserId = c.UserId
inner join Problems p On p.ProblemName = s.ProblemName
group by c.userid, c.name, c.skills
having sum(p.score) >= 50
order by Total desc, c.skills desc;
