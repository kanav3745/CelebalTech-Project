select distinct p2.x,p2.y
from pair p1
join pair p2
on p1.x = p2.y and p1.y=p2.x
where p1.x>=p2.x
order by p1.x asc;