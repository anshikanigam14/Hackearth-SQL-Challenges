/*Language used: MYSQL*/

select count(*)
from UmpireInfo
where (U1 like '%Bowden%' and U2 not like '%Buckner%')
OR (U2 like '%Bowden%' and U1 not like '%Buckner%')
OR (U1 like '%Taufel%' and U2 not like '%Buckner%')
OR (U2 like '%Taufel%' and U1 not like '%Buckner%');