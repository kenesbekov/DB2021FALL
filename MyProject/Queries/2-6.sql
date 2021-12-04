--Suppose that it is found that transmissions made by supplier Getrag between two given dates are defective.
-- Find the VIN of each car containing such a transmission and the customer to which it was sold.
-- If your design allows, suppose the defective transmissions all come from only one of Getrag’s plants.

--I will use supplier BorgWarner as in reality
create view defective_transmissions as
select customer_id, supplier_name, supplies, made_date, sale.vin
from sale
         inner join (select supplier_name, supplies, made_date, vin
                     from supplier
                              inner join (select made_date, supplier_id, vin
                                          from made_by
                                          where made_date between '2018-09-11' and '2021-12-01') mb
                                         on supplier.supplier_id = mb.supplier_id
                     where supplier_name = 'BorgWarner') m on m.vin = sale.vin;

--Find the top 2 brands by dollar-amount sold in the past year.
create view top2brands_by_dollarAmount_inPastYear as
select brand_name, dollarAmount
from brand
         inner join (select brand_id, sum(sale_price) as dollarAmount
                     from sale
                     where extract(year from age(now(), sale_date)) < 1
                     group by brand_id
                     order by dollarAmount desc
                     limit(2)) s on brand.brand_id = s.brand_id;

--Find the top 2 brands by unit sales in the past year.
create view top2brands_by_soldUnits_inPastYear as
select brand_name, sold_units
from brand
         inner join (select brand_id, count(sale_id) as sold_units
                     from sale
                     where extract(year from age(now(), sale_date)) < 1
                     group by brand_id
                     order by sold_units desc
                     limit(2)) s on brand.brand_id = s.brand_id;

--In what month(s) do convertibles sell best?
create view months_w_most_sell_of_convertibles as
select in_month, sold_times
from (select extract(month from sale_date) as in_month, count(sale_id) as sold_times
      from sale
               inner join (select model_id
                           from has_body_styles
                                    inner join (select body_style_id from body_style where convertible = true) bs
                                               on has_body_styles.body_style_id = bs.body_style_id) h
                          on h.model_id = sale.model_id
      group by in_month) as t
         inner join (select max(sold_times) as most_sold
                     from (select extract(month from sale_date) as in_month, count(sale_id) as sold_times
                           from sale
                                    inner join (select model_id
                                                from has_body_styles
                                                         inner join (select body_style_id from body_style where convertible = true) bs
                                                                    on has_body_styles.body_style_id = bs.body_style_id) h
                                               on h.model_id = sale.model_id
                           group by in_month) as d) k on k.most_sold = sold_times;

--Find those dealers who keep a vehicle in inventory for the longest average time
create view dealers_w_longest_average_keeping_time as
select dealer_name, average_keeping_time
from dealer
         inner join (select dealer_id, avg(age(out_date, stored_date)) as average_keeping_time
                     from stores_in
                     group by dealer_id) si on dealer.dealer_id = si.dealer_id
         inner join (select max(average_keeping_time) as longest_avg
                     from dealer
                              join (select dealer_id, avg(age(out_date, stored_date)) as average_keeping_time
                                    from stores_in
                                    group by dealer_id) si on dealer.dealer_id = si.dealer_id) d
                    on d.longest_avg = average_keeping_time;