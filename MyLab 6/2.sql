--a
create view a2
as
select date,
       count(distinct client_id) as "number of clients",
       avg(amount)               as "average purchase",
       sum(amount)               as "total purchase"
from sell
group by date;

select *
from a2;
--b
create view b2
as
select date,
       sum(amount) as "total sell"
from sell
group by date
order by sum(amount) desc
limit 5;

select *
from b2;
--c
create view c2
as
select dealer_id,
       count(id)   as "number of sales",
       avg(amount) as "average sales",
       sum(amount) as "total sales"
from sell
group by dealer_id;

select *
from c2;
--d
create view d2
as
select dealer.location               as "location",
       sum(s.amount * dealer.charge) as "earned charge"
from dealer
         inner join (select * from sell) s
                    on s.dealer_id = dealer.id
group by location;

select *
from d2;
--e
create view e2
as
select dealer.location,
       avg(s.amount) as "average sales",
       sum(s.amount) as "total sales"
from dealer
         inner join (select * from sell) s
                    on s.dealer_id = dealer.id
group by location;

select *
from e2;
--f
create view f2
as
select client.city,
       avg(s.amount) as "average expenses",
       sum(s.amount) as "total expenses"
from client
         inner join (select * from sell) s
                    on s.client_id = client.id
group by city;

select *
from f2;
--g
create view g2
as
select f2.city,
       f2."total expenses",
       e.location,
       e."total sales"
from f2
         full outer join e2 e on f2.city = e.location
where f2."total expenses" > e."total sales";

drop view a2;
drop view b2;
drop view c2;
drop view d2;
drop view e2;
drop view f2;
drop view g2;

