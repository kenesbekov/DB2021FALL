-- Automobile_Company
insert into Automobile_Company(company_id, company_name)
values (1, 'BMW Group');
-- Brand
insert into Brand(brand_id, brand_name)
values (1, 'BMW');
insert into Brand(brand_id, brand_name)
values (2, 'MINI');
insert into Brand(brand_id, brand_name)
values (3, 'Rolls-Royce');
-- Model
insert into Model(model_id, model_name, model_year)
values (1, 'BMW M5', 2010);
insert into Model(model_id, model_name, model_year)
values (2, 'BMW M8', 2010);
insert into Model(model_id, model_name, model_year)
values (3, 'BMW X6', 2010);
insert into Model(model_id, model_name, model_year)
values (4, 'BMW X7', 2010);

insert into Model(model_id, model_name, model_year)
values (5, 'MINI Cooper', 2010);

insert into Model(model_id, model_name, model_year)
values (6, 'Rolls-Royce Phantom', 2010);
insert into Model(model_id, model_name, model_year)
values (7, 'Rolls-Royce Ghost', 2010);
-- Body_Style
insert into Body_Style(body_style_id, door_num, sits_num, convertible)
values (1, 2, 2, true);
insert into Body_Style(body_style_id, door_num, sits_num, convertible)
values (2, 4, 4, true);
insert into Body_Style(body_style_id, door_num, sits_num, convertible)
values (3, 2, 2, false);
insert into Body_Style(body_style_id, door_num, sits_num, convertible)
values (4, 4, 4, false);
-- Model_Option
insert into Model_Option(option_id, option_color, option_engine, option_transmission)
values (1, 'black', 'straight', 'manual');
insert into Model_Option(option_id, option_color, option_engine, option_transmission)
values (2, 'white', 'straight', 'manual');
insert into Model_Option(option_id, option_color, option_engine, option_transmission)
values (3, 'red', 'straight', 'manual');
insert into Model_Option(option_id, option_color, option_engine, option_transmission)
values (4, 'blue', 'straight', 'manual');

insert into Model_Option(option_id, option_color, option_engine, option_transmission)
values (5, 'black', 'straight', 'automatic');
insert into Model_Option(option_id, option_color, option_engine, option_transmission)
values (6, 'white', 'straight', 'automatic');
insert into Model_Option(option_id, option_color, option_engine, option_transmission)
values (7, 'red', 'straight', 'automatic');
insert into Model_Option(option_id, option_color, option_engine, option_transmission)
values (8, 'blue', 'straight', 'automatic');

insert into Model_Option(option_id, option_color, option_engine, option_transmission)
values (9, 'black', 'inline', 'manual');
insert into Model_Option(option_id, option_color, option_engine, option_transmission)
values (10, 'white', 'inline', 'manual');
insert into Model_Option(option_id, option_color, option_engine, option_transmission)
values (11, 'red', 'inline', 'manual');
insert into Model_Option(option_id, option_color, option_engine, option_transmission)
values (12, 'blue', 'inline', 'manual');

insert into Model_Option(option_id, option_color, option_engine, option_transmission)
values (13, 'black', 'inline', 'automatic');
insert into Model_Option(option_id, option_color, option_engine, option_transmission)
values (14, 'white', 'inline', 'automatic');
insert into Model_Option(option_id, option_color, option_engine, option_transmission)
values (15, 'red', 'inline', 'automatic');
insert into Model_Option(option_id, option_color, option_engine, option_transmission)
values (16, 'blue', 'inline', 'automatic');
-- Supplier
insert into Supplier(supplier_id, supplier_name, supplies)
values (1, 'Brembo', 'brake calipers');
insert into Supplier(supplier_id, supplier_name, supplies)
values (2, 'Dräxlmaier', 'interior panels');
insert into Supplier(supplier_id, supplier_name, supplies)
values (3, 'BorgWarner', 'transmissions');
insert into Supplier(supplier_id, supplier_name, supplies)
values (4, 'Elringklinger', 'gaskets');
insert into Supplier(supplier_id, supplier_name, supplies)
values (5, 'Mahle', 'piston');
insert into Supplier(supplier_id, supplier_name, supplies)
values (6, 'Bridgestone', 'tires');
insert into Supplier(supplier_id, supplier_name, supplies)
values (7, 'Johnson Electric', 'cooling fans');
insert into Supplier(supplier_id, supplier_name, supplies)
values (8, 'Apag Elektronik AG', 'lighting components');
insert into Supplier(supplier_id, supplier_name, supplies)
values (9, 'Hirschvogel', 'wheels');
-- Manufacturer
insert into Manufacturer(manufacturer_id, manufacturer_name)
values (1, 'BMW Motoren GmbH Steyr');
insert into Manufacturer(manufacturer_id, manufacturer_name)
values (2, 'BMW Fahrzeugtechnik GmbH');
insert into Manufacturer(manufacturer_id, manufacturer_name)
values (3, 'BMW AG Werk München');
insert into Manufacturer(manufacturer_id, manufacturer_name)
values (4, 'BMW AG Werk Leipzig');
insert into Manufacturer(manufacturer_id, manufacturer_name)
values (5, 'BMW AG Werk Landshut');
insert into Manufacturer(manufacturer_id, manufacturer_name)
values (6, 'BMW AG Werk Regensburg');
insert into Manufacturer(manufacturer_id, manufacturer_name)
values (7, 'Rolls-Royce Motor Cars Limited');
insert into Manufacturer(manufacturer_id, manufacturer_name)
values (8, 'BMW (UK) Manufacturing Ltd');
insert into Manufacturer(manufacturer_id, manufacturer_name)
values (9, 'BMW Hams Hall Motor GmbH');
insert into Manufacturer(manufacturer_id, manufacturer_name)
values (10, 'Swindon Pressings Limited');
-- Vehicle
insert into Vehicle(vin)
values ('4Y1SL65848Z411410');
insert into Vehicle(vin)
values ('5A1SL65848Z411411');
insert into Vehicle(vin)
values ('6B1SL61248Z411412');
insert into Vehicle(vin)
values ('7C1SL61348Z411413');
insert into Vehicle(vin)
values ('8D1SL61448Z411414');
insert into Vehicle(vin)
values ('9E1SL61548Z411415');
insert into Vehicle(vin)
values ('1F1SL61648Z411416');
insert into Vehicle(vin)
values ('2G1SL61748Z411417');
insert into Vehicle(vin)
values ('3H1SL61848Z411418');
insert into Vehicle(vin)
values ('4I1SL61948Z411419');
-- Dealer
insert into Dealer(dealer_id, dealer_name, dealer_phone)
values (1, 'Autocenter Bavaria', '87273331905');
insert into Dealer(dealer_id, dealer_name, dealer_phone)
values (2, 'Autocenter Estocada', '87271231212');
insert into Dealer(dealer_id, dealer_name, dealer_phone)
values (3, 'Autocenter Looper', '87271237271');
insert into Dealer(dealer_id, dealer_name, dealer_phone)
values (4, 'Autocenter Hooper', '87273713713');
insert into Dealer(dealer_id, dealer_name, dealer_phone)
values (5, 'Autocenter Zoom', '87277347212');
-- Inventory
insert into Inventory(inventory_id, inventory_address)
values (1, 'Boston 180');
insert into Inventory(inventory_id, inventory_address)
values (2, 'Boston 181');
insert into Inventory(inventory_id, inventory_address)
values (3, 'Boston 182');
insert into Inventory(inventory_id, inventory_address)
values (4, 'Boston 183');
insert into Inventory(inventory_id, inventory_address)
values (5, 'Boston 184');
-- Person
insert into Person(person_id, person_name, person_gender)
values (1, 'Will Smith', 'male');
insert into Person(person_id, person_name, person_gender)
values (2, 'Chris Evans', 'male');
insert into Person(person_id, person_name, person_gender)
values (3, 'Robert Downey', 'male');
insert into Person(person_id, person_name, person_gender)
values (4, 'Jennifer Lawrence', 'female');
insert into Person(person_id, person_name, person_gender)
values (5, 'Channing Tatum', 'male');
insert into Person(person_id, person_name, person_gender)
values (6, 'George Clooney', 'male');
insert into Person(person_id, person_name, person_gender)
values (7, 'Margot Robbie', 'female');
-- Employee
insert into Employee(employee_id, employee_salary, person_id)
values (1, 131981 , 2);
insert into Employee(employee_id, employee_salary, person_id)
values (2, 41965 , 3);
insert into Employee(employee_id, employee_salary, person_id)
values (3, 61961 , 6);
-- Customer 1, 4,5,7
insert into Customer(customer_id, customer_address, customer_phone, customer_an_income, person_id)
values (1, 'Boston 90', '87770010101', 210000, 1);
insert into Customer(customer_id, customer_address, customer_phone, customer_an_income, person_id)
values (2, 'Boston 91', '87770010102', 151990, 4);
insert into Customer(customer_id, customer_address, customer_phone, customer_an_income, person_id)
values (3, 'Boston 92', '87770010103', 261980, 5);
insert into Customer(customer_id, customer_address, customer_phone, customer_an_income, person_id)
values (4, 'Boston 93', '87770010104', 291090, 7);