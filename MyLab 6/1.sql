--a
select *
from client
         full outer join dealer d
                         on d.id = client.dealer_id;
--b
select dealer.name as "Dealer name",
       c.name      as "Client name",
       c.city      as "City",
       c.priority  as "Grade",
       s.id        as "Sell number",
       s.date      as "Sell date",
       s.amount    as "Sell amount"
from dealer
         inner join sell s
                    on s.dealer_id = dealer.id
         inner join client c
                    on c.id = s.client_id;
;
--c
select client.name as "Client name",
       d.name      as "Dealer name",
       client.city as "City"
from client
         inner join (select * from dealer) d
                    on client.city = d.location;
--d
select sell.id     as "Sell ID",
       sell.amount as "Sell amount",
       c.name      as "Client name",
       c.city      as "City"
from sell
         inner join (select * from client) c
                    on c.id = sell.client_id
where amount between 100 and 500;
--e
select d.name      as "Dealer name",
       client.name as "Client name"
from client
         right outer join dealer d
                          on d.id = client.dealer_id;
--f
select client.name as "Client name",
       client.city as "City",
       d.name      as "Dealer name",
       d.charge    as "Commission"
from client
         inner join dealer d
                    on d.id = client.dealer_id;
--g
select client.name as "Client name",
       client.city as "City",
       d.name      as "Dealer name",
       d.charge    as "Commission"
from client
         inner join (select *
                     from dealer
                     where charge > 0.12) d
                    on d.id = client.dealer_id;
--h
select client.name as "Client name",
       city        as "City",
       s.id        as "Sell ID",
       s.date      as "Sell date",
       s.amount    as "Sell amount",
       d.name      as "Dealer name",
       d.charge    as "Commission"
from client
         inner join (select * from sell) s
                    on s.client_id = client.id
         inner join (select * from dealer) d
                    on d.id = client.dealer_id;
--i
select client.name     as "Client name",
       client.priority as "Client grade",
       d.name          as "Dealer name",
       s.id            as "Sell ID",
       s.amount        as "Sell amount"
from client
         left outer join dealer d
                         on d.id = client.dealer_id
         left outer join sell s
                         on s.client_id = client.id
where s.amount >= 2000
  and client.priority is not null;