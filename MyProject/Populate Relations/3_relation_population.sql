-- have_brands
insert into have_brands(company_id, brand_id)
values (1, 1);
insert into have_brands(company_id, brand_id)
values (1, 2);
insert into have_brands(company_id, brand_id)
values (1, 3);
-- has_models
insert into has_models(brand_id, model_id)
values (1, 1);
insert into has_models(brand_id, model_id)
values (1, 2);
insert into has_models(brand_id, model_id)
values (1, 3);
insert into has_models(brand_id, model_id)
values (1, 4);

insert into has_models(brand_id, model_id)
values (2, 5);

insert into has_models(brand_id, model_id)
values (3, 6);
insert into has_models(brand_id, model_id)
values (3, 7);
-- has_body_styles
insert into has_body_styles(model_id, body_style_id)
values (1, 3);
insert into has_body_styles(model_id, body_style_id)
values (1, 4);
insert into has_body_styles(model_id, body_style_id)
values (2, 3);
insert into has_body_styles(model_id, body_style_id)
values (2, 4);
insert into has_body_styles(model_id, body_style_id)
values (3, 4);
insert into has_body_styles(model_id, body_style_id)
values (4, 4);

insert into has_body_styles(model_id, body_style_id)
values (5, 1);
insert into has_body_styles(model_id, body_style_id)
values (5, 2);
insert into has_body_styles(model_id, body_style_id)
values (5, 3);
insert into has_body_styles(model_id, body_style_id)
values (5, 4);

insert into has_body_styles(model_id, body_style_id)
values (6, 1);
insert into has_body_styles(model_id, body_style_id)
values (6, 2);
insert into has_body_styles(model_id, body_style_id)
values (6, 3);
insert into has_body_styles(model_id, body_style_id)
values (6, 4);
insert into has_body_styles(model_id, body_style_id)
values (7, 1);
insert into has_body_styles(model_id, body_style_id)
values (7, 2);
insert into has_body_styles(model_id, body_style_id)
values (7, 3);
insert into has_body_styles(model_id, body_style_id)
values (7, 4);
-- options_available
insert into options_available(model_id, option_id)
values (1, 1);
insert into options_available(model_id, option_id)
values (1, 2);
insert into options_available(model_id, option_id)
values (2, 3);
insert into options_available(model_id, option_id)
values (2, 4);
insert into options_available(model_id, option_id)
values (3, 5);
insert into options_available(model_id, option_id)
values (3, 6);
insert into options_available(model_id, option_id)
values (4, 7);
insert into options_available(model_id, option_id)
values (4, 8);

insert into options_available(model_id, option_id)
values (5, 9);
insert into options_available(model_id, option_id)
values (5, 10);

insert into options_available(model_id, option_id)
values (6, 11);
insert into options_available(model_id, option_id)
values (6, 12);
insert into options_available(model_id, option_id)
values (7, 13);
insert into options_available(model_id, option_id)
values (7, 14);
insert into options_available(model_id, option_id)
values (7, 15);
insert into options_available(model_id, option_id)
values (7, 16);
-- made_by
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (1,'2018-10-11', 1, 1, '4Y1SL65848Z411410');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (2,'2018-10-11', 1, 2, '4Y1SL65848Z411410');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (3,'2018-10-11', 1, 3, '4Y1SL65848Z411410');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (4,'2018-10-11', 1, 4, '4Y1SL65848Z411410');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (5,'2018-10-11', 1, 5, '4Y1SL65848Z411410');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (6,'2018-10-11', 1, 6, '4Y1SL65848Z411410');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (7,'2018-10-11', 1, 7, '4Y1SL65848Z411410');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (8,'2018-10-11', 1, 8, '4Y1SL65848Z411410');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (9,'2018-10-11', 1, 9, '4Y1SL65848Z411410');

insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (10,'2017-07-11', 7, 1, '5A1SL65848Z411411');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (11,'2017-07-11', 7, 2, '5A1SL65848Z411411');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (12,'2017-07-11', 7, 3, '5A1SL65848Z411411');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (13,'2017-07-11', 7, 4, '5A1SL65848Z411411');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (14,'2017-07-11', 7, 5, '5A1SL65848Z411411');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (15,'2017-07-11', 7, 6, '5A1SL65848Z411411');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (16,'2017-07-11', 7, 7, '5A1SL65848Z411411');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (17,'2017-07-11', 7, 8, '5A1SL65848Z411411');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (18,'2017-07-11', 7, 9, '5A1SL65848Z411411');

insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (19,'2018-08-11', 3, 1, '6B1SL61248Z411412');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (20,'2018-08-11', 3, 2, '6B1SL61248Z411412');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (21,'2018-08-11', 3, 3, '6B1SL61248Z411412');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (22,'2018-08-11', 3, 4, '6B1SL61248Z411412');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (23,'2018-08-11', 3, 5, '6B1SL61248Z411412');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (24,'2018-08-11', 3, 6, '6B1SL61248Z411412');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (25,'2018-08-11', 3, 7, '6B1SL61248Z411412');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (26,'2018-08-11', 3, 8, '6B1SL61248Z411412');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (27,'2018-08-11', 3, 9, '6B1SL61248Z411412');

insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (28,'2010-09-11', 4, 1, '7C1SL61348Z411413');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (29,'2010-09-11', 4, 2, '7C1SL61348Z411413');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (30,'2010-09-11', 4, 3, '7C1SL61348Z411413');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (31,'2010-09-11', 4, 4, '7C1SL61348Z411413');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (32,'2010-09-11', 4, 5, '7C1SL61348Z411413');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (33,'2010-09-11', 4, 6, '7C1SL61348Z411413');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (34,'2010-09-11', 4, 7, '7C1SL61348Z411413');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (35,'2010-09-11', 4, 8, '7C1SL61348Z411413');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (36,'2010-09-11', 4, 9, '7C1SL61348Z411413');

insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (37,'2019-10-11', 5, 1, '8D1SL61448Z411414');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (38,'2019-10-11', 5, 2, '8D1SL61448Z411414');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (39,'2019-10-11', 5, 3, '8D1SL61448Z411414');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (40,'2019-10-11', 5, 4, '8D1SL61448Z411414');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (41,'2019-10-11', 5, 5, '8D1SL61448Z411414');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (42,'2019-10-11', 5, 6, '8D1SL61448Z411414');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (43,'2019-10-11', 5, 7, '8D1SL61448Z411414');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (44,'2019-10-11', 5, 8, '8D1SL61448Z411414');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (45,'2019-10-11', 5, 9, '8D1SL61448Z411414');

insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (46,'2021-12-16', 14, 1, '9E1SL61548Z411415');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (47,'2021-12-16', 14, 2, '9E1SL61548Z411415');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (48,'2021-12-16', 14, 3, '9E1SL61548Z411415');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (49,'2021-12-16', 14, 4, '9E1SL61548Z411415');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (50,'2021-12-16', 14, 5, '9E1SL61548Z411415');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (51,'2021-12-16', 14, 6, '9E1SL61548Z411415');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (52,'2021-12-16', 14, 7, '9E1SL61548Z411415');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (53,'2021-12-16', 14, 8, '9E1SL61548Z411415');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (54,'2021-12-16', 14, 9, '9E1SL61548Z411415');

insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (55,'2018-10-11', 7, 1, '1F1SL61648Z411416');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (56,'2018-10-11', 7, 2, '1F1SL61648Z411416');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (57,'2018-10-11', 7, 3, '1F1SL61648Z411416');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (58,'2018-10-11', 7, 4, '1F1SL61648Z411416');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (59,'2018-10-11', 7, 5, '1F1SL61648Z411416');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (60,'2018-10-11', 7, 6, '1F1SL61648Z411416');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (61,'2018-10-11', 7, 7, '1F1SL61648Z411416');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (62,'2018-10-11', 7, 8, '1F1SL61648Z411416');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (63,'2018-10-11', 7, 9, '1F1SL61648Z411416');

insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (64,'2017-10-11', 8, 1, '2G1SL61748Z411417');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (65,'2017-10-11', 8, 2, '2G1SL61748Z411417');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (66,'2017-10-11', 8, 3, '2G1SL61748Z411417');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (67,'2017-10-11', 8, 4, '2G1SL61748Z411417');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (68,'2017-10-11', 8, 5, '2G1SL61748Z411417');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (69,'2017-10-11', 8, 6, '2G1SL61748Z411417');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (70,'2017-10-11', 8, 7, '2G1SL61748Z411417');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (71,'2017-10-11', 8, 8, '2G1SL61748Z411417');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (72,'2017-10-11', 8, 9, '2G1SL61748Z411417');

insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (73,'2021-10-11', 13, 1, '3H1SL61848Z411418');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (74,'2021-10-11', 13, 2, '3H1SL61848Z411418');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (75,'2021-10-11', 13, 3, '3H1SL61848Z411418');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (76,'2021-10-11', 13, 4, '3H1SL61848Z411418');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (77,'2021-10-11', 13, 5, '3H1SL61848Z411418');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (78,'2021-10-11', 13, 6, '3H1SL61848Z411418');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (79,'2021-10-11', 13, 7, '3H1SL61848Z411418');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (80,'2021-10-11', 13, 8, '3H1SL61848Z411418');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (81,'2021-10-11', 13, 9, '3H1SL61848Z411418');

insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (82,'2020-10-11', 10, 1, '4I1SL61948Z411419');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (83,'2020-10-11', 10, 2, '4I1SL61948Z411419');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (84,'2020-10-11', 10, 3, '4I1SL61948Z411419');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (85,'2020-10-11', 10, 4, '4I1SL61948Z411419');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (86,'2020-10-11', 10, 5, '4I1SL61948Z411419');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (87,'2020-10-11', 10, 6, '4I1SL61948Z411419');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (88,'2020-10-11', 10, 7, '4I1SL61948Z411419');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (89,'2020-10-11', 10, 8, '4I1SL61948Z411419');
insert into made_by(made_id, made_date, option_id, supplier_id, vin)
values (90,'2020-10-11', 10, 9, '4I1SL61948Z411419');
-- in_option
insert into in_option(vin, option_id)
values ('4Y1SL65848Z411410', 1);
insert into in_option(vin, option_id)
values ('5A1SL65848Z411411', 2);
insert into in_option(vin, option_id)
values ('6B1SL61248Z411412', 3);
insert into in_option(vin, option_id)
values ('7C1SL61348Z411413', 4);
insert into in_option(vin, option_id)
values ('8D1SL61448Z411414', 5);
insert into in_option(vin, option_id)
values ('9E1SL61548Z411415', 6);
insert into in_option(vin, option_id)
values ('1F1SL61648Z411416', 7);
insert into in_option(vin, option_id)
values ('2G1SL61748Z411417', 8);
insert into in_option(vin, option_id)
values ('3H1SL61848Z411418', 9);
insert into in_option(vin, option_id)
values ('4I1SL61948Z411419', 10);
-- has_manufacturers
insert into has_manufacturers(brand_id, manufacturer_id)
values (1, 1);
insert into has_manufacturers(brand_id, manufacturer_id)
values (1, 2);
insert into has_manufacturers(brand_id, manufacturer_id)
values (1, 3);
insert into has_manufacturers(brand_id, manufacturer_id)
values (1, 4);
insert into has_manufacturers(brand_id, manufacturer_id)
values (1, 5);
insert into has_manufacturers(brand_id, manufacturer_id)
values (1, 6);
insert into has_manufacturers(brand_id, manufacturer_id)
values (1, 8);
insert into has_manufacturers(brand_id, manufacturer_id)
values (1, 9);

insert into has_manufacturers(brand_id, manufacturer_id)
values (2, 10);

insert into has_manufacturers(brand_id, manufacturer_id)
values (3, 7);
-- assembled_by
insert into assembled_by(assembled_id, manufacturer_id, vin, assembled_date)
values (1, 1, '4Y1SL65848Z411410', '2010-11-16');
insert into assembled_by(assembled_id, manufacturer_id, vin, assembled_date)
values (2, 1, '5A1SL65848Z411411', '2010-11-16');
insert into assembled_by(assembled_id, manufacturer_id, vin, assembled_date)
values (3, 1, '6B1SL61248Z411412', '2010-11-16');
insert into assembled_by(assembled_id, manufacturer_id, vin, assembled_date)
values (4, 1, '7C1SL61348Z411413', '2010-11-16');
insert into assembled_by(assembled_id, manufacturer_id, vin, assembled_date)
values (5, 1, '8D1SL61448Z411414', '2010-11-16');
insert into assembled_by(assembled_id, manufacturer_id, vin, assembled_date)
values (6, 1, '9E1SL61548Z411415', '2010-11-16');
insert into assembled_by(assembled_id, manufacturer_id, vin, assembled_date)
values (7, 1, '1F1SL61648Z411416', '2010-11-16');
insert into assembled_by(assembled_id, manufacturer_id, vin, assembled_date)
values (8, 1, '2G1SL61748Z411417', '2010-11-16');
insert into assembled_by(assembled_id, manufacturer_id, vin, assembled_date)
values (9, 1, '3H1SL61848Z411418', '2010-11-16');
insert into assembled_by(assembled_id, manufacturer_id, vin, assembled_date)
values (10, 1, '4I1SL61948Z411419', '2010-11-16');
-- stores_in
insert into stores_in(stored_id, vin, dealer_id, inventory_id, stored_date, out_date)
values (1, '4Y1SL65848Z411410', 1, 1, '2010-12-16', '2011-12-16');
insert into stores_in(stored_id, vin, dealer_id, inventory_id, stored_date, out_date)
values (2, '5A1SL65848Z411411', 1, 2, '2010-12-16', '2011-12-16');
insert into stores_in(stored_id, vin, dealer_id, inventory_id, stored_date, out_date)
values (3, '6B1SL61248Z411412', 2, 1, '2010-12-16', '2012-12-16');
insert into stores_in(stored_id, vin, dealer_id, inventory_id, stored_date, out_date)
values (4, '7C1SL61348Z411413', 2, 2, '2010-12-16', '2013-12-16');
insert into stores_in(stored_id, vin, dealer_id, inventory_id, stored_date, out_date)
values (5, '8D1SL61448Z411414', 3, 3, '2010-12-16', '2013-12-16');
insert into stores_in(stored_id, vin, dealer_id, inventory_id, stored_date, out_date)
values (6, '9E1SL61548Z411415', 3, 4, '2010-12-16', '2014-12-16');
insert into stores_in(stored_id, vin, dealer_id, inventory_id, stored_date, out_date)
values (7, '1F1SL61648Z411416', 4, 3, '2010-12-16', '2014-12-16');
insert into stores_in(stored_id, vin, dealer_id, inventory_id, stored_date, out_date)
values (8, '2G1SL61748Z411417', 4, 4, '2010-12-16', '2015-12-16');
insert into stores_in(stored_id, vin, dealer_id, inventory_id, stored_date, out_date)
values (9, '3H1SL61848Z411418', 5, 4, '2010-12-16', '2015-12-16');
insert into stores_in(stored_id, vin, dealer_id, inventory_id, stored_date, out_date)
values (10, '4I1SL61948Z411419', 5, 5, '2010-12-16', '2016-12-16');
-- workers
insert into workers(company_id, employee_id)
values (1, 1);
insert into workers(company_id, employee_id)
values (1, 2);
insert into workers(company_id, employee_id)
values (1, 3);
-- sale
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (1, '2019-12-16', 12000, 1, 1, 1, 1, '4Y1SL65848Z411410');
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (2, '2020-01-16', 11000, 1, 1, 2, 5, '5A1SL65848Z411411');
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (3, '2021-05-16', 90000, 1, 2, 3, 7, '6B1SL61248Z411412');
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (4, '2020-01-16', 11000, 1, 1, 1, 2, '7C1SL61348Z411413');
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (5, '2021-05-16', 120000, 1, 2, 3, 7, '6B1SL61248Z411412');

insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (6, '2019-12-16', 14000, 2, 1, 1, 3, '9E1SL61548Z411415');
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (7, '2021-05-16', 180000, 2, 2, 3, 7, '6B1SL61248Z411412');
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (8, '2021-12-16', 16000, 2, 1, 1, 3, '3H1SL61848Z411418');
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (9, '2021-05-16', 13000, 2, 2, 2, 5, '4I1SL61948Z411419');
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (10, '2019-12-16', 90000, 2, 1, 1, 3, '3H1SL61848Z411418');
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (11, '2021-11-30', 14000, 2, 2, 2, 5, '4I1SL61948Z411419');

insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (12, '2019-12-16', 8000, 3, 3, 2, 5, '5A1SL65848Z411411');
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (13, '2019-12-16', 9000, 3, 5, 1, 3, '1F1SL61648Z411416');
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (14, '2021-05-16', 22000, 3, 2, 2, 5, '5A1SL65848Z411411');
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (15, '2019-12-16', 10000, 3, 5, 1, 3, '2G1SL61748Z411417');
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (16, '2021-11-30', 20000, 3, 2, 2, 5, '8D1SL61448Z411414');

insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (17, '2019-12-16', 160000, 4, 1, 3, 6, '4Y1SL65848Z411410');
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (18, '2021-11-30', 10000, 4, 4, 1, 3, '9E1SL61548Z411415');
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (19, '2021-11-30', 120000, 4, 1, 3, 7, '6B1SL61248Z411412');
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (20, '2019-12-16', 10000, 4, 1, 1, 3, '9E1SL61548Z411415');
insert into sale(sale_id, sale_date, sale_price, customer_id, dealer_id, brand_id, model_id, vin)
values (21, '2019-12-16', 110000, 4, 4, 3, 7, '6B1SL61248Z411412');
