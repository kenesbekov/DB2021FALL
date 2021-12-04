--Show sales trends for various brands over the past 3 years, by year, month, week.
-- Then break these data out by gender of the buyer and then by income range.
--past 3 years:
create view past3years_break_by_males as
select person_name, person_gender, customer_an_income, brand_id
from person
         inner join (select customer_an_income, person_id, brand_id
                     from customer
                              inner join (select customer_id, brand_id
                                          from sale
                                          where extract(year from age(now(), sale_date)) < 3) s
                                         on customer.customer_id = s.customer_id) c on person.person_id = c.person_id
where person_gender = 'male';
create view past3years_break_by_females as
select person_name, person_gender, customer_an_income, brand_id
from person
         inner join (select customer_an_income, person_id, brand_id
                     from customer
                              inner join (select customer_id, brand_id
                                          from sale
                                          where extract(year from age(now(), sale_date)) < 3) s
                                         on customer.customer_id = s.customer_id) c on person.person_id = c.person_id
where person_gender = 'female';
create view past3years_break_by_income_less_than_200000 as
select person_name, person_gender, customer_an_income, brand_id
from person
         inner join (select customer_an_income, person_id, brand_id
                     from customer
                              inner join (select customer_id, brand_id
                                          from sale
                                          where extract(year from age(now(), sale_date)) < 3) s
                                         on customer.customer_id = s.customer_id) c on person.person_id = c.person_id
where customer_an_income < 200000;
create view past3years_break_by_income_more_than_200000 as
select person_name, person_gender, customer_an_income, brand_id
from person
         inner join (select customer_an_income, person_id, brand_id
                     from customer
                              inner join (select customer_id, brand_id
                                          from sale
                                          where extract(year from age(now(), sale_date)) < 3) s
                                         on customer.customer_id = s.customer_id) c on person.person_id = c.person_id
where customer_an_income >= 200000;
--past 1 year:
create view past1year_break_by_males as
select person_name, person_gender, customer_an_income, brand_id
from person
         inner join (select customer_an_income, person_id, brand_id
                     from customer
                              inner join (select customer_id, brand_id
                                          from sale
                                          where extract(year from age(now(), sale_date)) < 1) s
                                         on customer.customer_id = s.customer_id) c on person.person_id = c.person_id
where person_gender = 'male';
create view past1year_break_by_females as
select person_name, person_gender, customer_an_income, brand_id
from person
         inner join (select customer_an_income, person_id, brand_id
                     from customer
                              inner join (select customer_id, brand_id
                                          from sale
                                          where extract(year from age(now(), sale_date)) < 1) s
                                         on customer.customer_id = s.customer_id) c on person.person_id = c.person_id
where person_gender = 'female';
create view past1year_break_by_income_less_than_200000 as
select person_name, person_gender, customer_an_income, brand_id
from person
         inner join (select customer_an_income, person_id, brand_id
                     from customer
                              inner join (select customer_id, brand_id
                                          from sale
                                          where extract(year from age(now(), sale_date)) < 1) s
                                         on customer.customer_id = s.customer_id) c on person.person_id = c.person_id
where customer_an_income < 200000;
create view past1year_break_by_income_more_than_200000 as
select person_name, person_gender, customer_an_income, brand_id
from person
         inner join (select customer_an_income, person_id, brand_id
                     from customer
                              inner join (select customer_id, brand_id
                                          from sale
                                          where extract(year from age(now(), sale_date)) < 1) s
                                         on customer.customer_id = s.customer_id) c on person.person_id = c.person_id
where customer_an_income >= 200000;

--past 1 month:
create view past1month_break_by_males as
select person_name, person_gender, customer_an_income, brand_id
from person
         inner join (select customer_an_income, person_id, brand_id
                     from customer
                              inner join (select customer_id, brand_id
                                          from sale
                                          where extract(month from age(now(), sale_date)) < 1) s
                                         on customer.customer_id = s.customer_id) c on person.person_id = c.person_id
where person_gender = 'male';
create view past1month_break_by_females as
select person_name, person_gender, customer_an_income, brand_id
from person
         inner join (select customer_an_income, person_id, brand_id
                     from customer
                              inner join (select customer_id, brand_id
                                          from sale
                                          where extract(month from age(now(), sale_date)) < 1) s
                                         on customer.customer_id = s.customer_id) c on person.person_id = c.person_id
where person_gender = 'female';
create view past1month_break_by_income_less_than_200000 as
select person_name, person_gender, customer_an_income, brand_id
from person
         inner join (select customer_an_income, person_id, brand_id
                     from customer
                              inner join (select customer_id, brand_id
                                          from sale
                                          where extract(month from age(now(), sale_date)) < 1) s
                                         on customer.customer_id = s.customer_id) c on person.person_id = c.person_id
where customer_an_income < 200000;
create view past1month_break_by_income_more_than_200000 as
select person_name, person_gender, customer_an_income, brand_id
from person
         inner join (select customer_an_income, person_id, brand_id
                     from customer
                              inner join (select customer_id, brand_id
                                          from sale
                                          where extract(month from age(now(), sale_date)) < 1) s
                                         on customer.customer_id = s.customer_id) c on person.person_id = c.person_id
where customer_an_income >= 200000;

--past 1 week:
create view past1week_break_by_males as
select person_name, person_gender, customer_an_income, brand_id
from person
         inner join (select customer_an_income, person_id, brand_id
                     from customer
                              inner join (select customer_id, brand_id
                                          from sale
                                          where extract(day from age(now(), sale_date)) < 7) s
                                         on customer.customer_id = s.customer_id) c on person.person_id = c.person_id
where person_gender = 'male';
create view past1week_break_by_females as
select person_name, person_gender, customer_an_income, brand_id
from person
         inner join (select customer_an_income, person_id, brand_id
                     from customer
                              inner join (select customer_id, brand_id
                                          from sale
                                          where extract(day from age(now(), sale_date)) < 7) s
                                         on customer.customer_id = s.customer_id) c on person.person_id = c.person_id
where person_gender = 'female';
create view past1week_break_by_income_less_than_200000 as
select person_name, person_gender, customer_an_income, brand_id
from person
         inner join (select customer_an_income, person_id, brand_id
                     from customer
                              inner join (select customer_id, brand_id
                                          from sale
                                          where extract(day from age(now(), sale_date)) < 7) s
                                         on customer.customer_id = s.customer_id) c on person.person_id = c.person_id
where customer_an_income < 200000;
create view past1week_break_by_income_more_than_200000 as
select person_name, person_gender, customer_an_income, brand_id
from person
         inner join (select customer_an_income, person_id, brand_id
                     from customer
                              inner join (select customer_id, brand_id
                                          from sale
                                          where extract(day from age(now(), sale_date)) < 7) s
                                         on customer.customer_id = s.customer_id) c on person.person_id = c.person_id
where customer_an_income >= 200000;

