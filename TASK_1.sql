Select start_date, min(end_date)  from 
(select start_date from projects where Start_Date not in (select end_date from projects)) as s,
(select end_date from projects where end_Date not in (select start_date from projects)) as e
where Start_Date < End_Date
group by Start_Date
order by datediff(DAY,min(end_date),start_date), start_date;
