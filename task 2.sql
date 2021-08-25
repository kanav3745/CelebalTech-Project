select s.name from students s, friends f,packages p,packages a
where s.id=f.id and f.id=p.id and f.friend_id=a.id and p.salary<a.salary 
order by a.salary;
