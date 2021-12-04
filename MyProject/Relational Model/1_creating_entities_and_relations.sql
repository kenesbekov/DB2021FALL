-- creating entities
create table Automobile_Company
(
    company_id   int     NOT NULL UNIQUE,
    company_name varchar NOT NULL,
    primary key (company_id)
);

create table Brand
(
    brand_id   int     NOT NULL UNIQUE,
    brand_name varchar NOT NULL,
    primary key (brand_id)
);

create table Model
(
    model_id   int      NOT NULL UNIQUE,
    model_name varchar  NOT NULL,
    model_year smallint NOT NULL,
    primary key (model_id)
);

create table Body_Style
(
    body_style_id int     NOT NULL UNIQUE,
    door_num      int     NOT NULL,
    sits_num      int     NOT NULL,
    convertible   boolean NOT NULL,
    primary key (body_style_id)
);

create table Model_Option
(
    option_id           int     NOT NULL UNIQUE,
    option_color        varchar NOT NULL,
    option_engine       varchar NOT NULL,
    option_transmission varchar NOT NULL,
    primary key (option_id)
);

create table Supplier
(
    supplier_id   int     NOT NULL UNIQUE,
    supplier_name varchar NOT NULL,
    supplies      varchar NOT NULL,
    primary key (supplier_id)
);

create table Manufacturer
(
    manufacturer_id   int     NOT NULL UNIQUE,
    manufacturer_name varchar NOT NULL,
    primary key (manufacturer_id)
);

create table Vehicle
(
    vin varchar NOT NULL UNIQUE,
    primary key (vin)
);

create table Dealer
(
    dealer_id    int         NOT NULL UNIQUE,
    dealer_name  varchar     NOT NULL,
    dealer_phone varchar(11) NOT NULL,
    primary key (dealer_id)
);

create table Inventory
(
    inventory_id      int  NOT NULL UNIQUE,
    inventory_address text NOT NULL,
    primary key (inventory_id)
);

create table Person
(
    person_id     int     NOT NULL UNIQUE,
    person_name   varchar NOT NULL,
    person_gender varchar NOT NULL,
    primary key (person_id)
);

create table Employee
(
    employee_id     int NOT NULL UNIQUE,
    employee_salary int NOT NULL,
    person_id       int NOT NULL REFERENCES Person (person_id),
    primary key (employee_id)
);

create table Customer
(
    customer_id        int         NOT NULL UNIQUE,
    customer_address   text        NOT NULL,
    customer_phone     varchar(11) NOT NULL,
    customer_an_income int         NOT NULL,
    person_id          int         NOT NULL REFERENCES Person (person_id),
    primary key (customer_id)
);


-- creating relations
create table have_brands
(
    company_id int NOT NULL REFERENCES Automobile_Company (company_id),
    brand_id   int NOT NULL REFERENCES Brand (brand_id),
    primary key (company_id, brand_id)
);

create table has_models
(
    brand_id int NOT NULL REFERENCES Brand (brand_id),
    model_id int NOT NULL REFERENCES Model (model_id),
    primary key (brand_id, model_id)
);

create table has_body_styles
(
    model_id      int NOT NULL REFERENCES Model (model_id),
    body_style_id int NOT NULL REFERENCES Body_Style (body_style_id),
    primary key (model_id, body_style_id)
);

create table options_available
(
    model_id  int NOT NULL REFERENCES Model (model_id),
    option_id int NOT NULL REFERENCES Model_Option (option_id),
    primary key (model_id, option_id)
);

create table made_by
(
    made_id     int     NOT NULL UNIQUE,
    made_date   date    NOT NULL,
    option_id   int     NOT NULL REFERENCES Model_Option (option_id),
    supplier_id int     NOT NULL REFERENCES Supplier (supplier_id),
    vin         varchar NOT NULL REFERENCES Vehicle (vin),
    primary key (made_id)
);

create table in_option
(
    vin       varchar NOT NULL REFERENCES Vehicle (vin),
    option_id int     NOT NULL REFERENCES Model_Option (option_id),
    primary key (vin, option_id)
);

create table has_manufacturers
(
    brand_id        int NOT NULL REFERENCES Brand (brand_id),
    manufacturer_id int NOT NULL REFERENCES Manufacturer (manufacturer_id),
    primary key (brand_id, manufacturer_id)
);

create table assembled_by
(
    assembled_id    int     NOT NULL UNIQUE,
    manufacturer_id int     NOT NULL REFERENCES Manufacturer (manufacturer_id),
    vin             varchar NOT NULL REFERENCES Vehicle (vin),
    assembled_date  date    NOT NULL,
    primary key (assembled_id)
);

create table stores_in
(
    stored_id    int     NOT NULL UNIQUE,
    vin          varchar NOT NULL REFERENCES Vehicle (vin),
    dealer_id    int     NOT NULL REFERENCES Dealer (dealer_id),
    inventory_id int     NOT NULL REFERENCES Inventory (inventory_id),
    stored_date  date    NOT NULL,
    out_date     date    NOT NULL,
    primary key (stored_id)
);

create table workers
(
    company_id  int NOT NULL REFERENCES Automobile_Company (company_id),
    employee_id int NOT NULL REFERENCES Employee (employee_id),
    primary key (company_id, employee_id)
);

create table sale
(
    sale_id     int     NOT NULL UNIQUE,
    sale_date   date    NOT NULL,
    sale_price  int     NOT NULL,
    customer_id int     NOT NULL REFERENCES Customer (customer_id),
    dealer_id   int     NOT NULL REFERENCES Dealer (dealer_id),
    brand_id    int     NOT NULL REFERENCES Brand (brand_id),
    model_id    int     NOT NULL REFERENCES Model (model_id),
    vin         varchar NOT NULL REFERENCES Vehicle (vin),
    primary key (sale_id)
);
