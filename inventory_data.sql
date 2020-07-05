/*Language used: MYSQL*/


select item, sum((BuyQty - SellQty)) as NetQty, 
concat(year(trandate),'/',month(trandate)) as MonthEnd
from Inventory
group by item, concat(year(trandate),'/',month(trandate))
order by 
item asc, year(trandate) asc, month(trandate) asc;