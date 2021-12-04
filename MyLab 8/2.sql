--Create a trigger that:
--2.a Return timestamp of the occured action within the database.
create table example2a
(
    id   int  NOT NULL,
    name text NOT NULL,
    primary key (id)
);

create table example2a_changes
(
    action_type varchar(6) NOT NULL,
    action_to   text       NOT NULL,
    action_was  timestamp  NOT NULL
);

create function timeOfAction() returns trigger as
$example2a_changes$
begin
    if
        (tg_op = 'DELETE') then
        insert into example2a_changes
        select 'Delete', old.name, now();
    elsif
        (tg_op = 'UPDATE') then
        insert into example2a_changes
        select 'Update', old.name, now();
    elsif
        (tg_op = 'INSERT') then
        insert into example2a_changes
        select 'Insert', new.name, now();
    end if;
    return NULL;
end;
$example2a_changes$
    language plpgsql;

create trigger example2a_changes
    after insert or update or delete
    on example2a
    for each row
execute function timeOfAction();

--test cases
insert into example2a (id, name)
values (1, 'Po');
update example2a
set name = 'Hurry'
where id = 1;

--delete created
drop trigger example2a_changes on example2a;
drop function timeOfAction;
drop table example2a;
drop table example2a_changes;


--2.b Computes the age of a person when persons’ date of birth is inserted.
create table example2b
(
    id   int  NOT NULL,
    name text NOT NULL,
    dob  date,
    primary key (id)
);

create table example2b_ages
(
    age_of text NOT NULL,
    age    int  NOT NULL
);

create function ageOfPerson() returns trigger as
$example2b_ages$
begin
    if
        (tg_op = 'INSERT') then
        insert into example2b_ages
        select new.name, extract(year from age(now(), new.dob));
    end if;
    return NULL;
end;
$example2b_ages$
    language plpgsql;

create trigger example2b_ages
    after insert
    on example2b
    for each row
execute function ageOfPerson();

--test cases
insert into example2b (id, name, dob)
values (1, 'Po', '2008-11-11');

--delete created
drop trigger example2b_ages on example2b;
drop function ageOfPerson();
drop table example2b;
drop table example2b_ages;


--2.c Adds 12% tax on the price of the inserted item.
create table example2c
(
    id    int            NOT NULL,
    item  text           NOT NULL,
    price numeric(10, 2) NOT NULL,
    primary key (id)
);

create function addTax() returns trigger as
$$
begin
    if
        (tg_op = 'INSERT') then
        update example2c set price = price * 1.12 where id = new.id;
    end if;
    return new;
end;
$$
    language plpgsql;

create trigger example2c_taxer
    after insert
    on example2c
    for each row
execute function addTax();

--test cases
insert into example2c (id, item, price)
values (1, 'lamp', 100);

--delete created
drop trigger example2c_taxer on example2c;
drop function addTax();
drop table example2c;


--2.d Prevents deletion of any row from only one table.
create table example2d
(
    id    int            NOT NULL,
    item  text           NOT NULL,
    price numeric(10, 2) NOT NULL,
    primary key (id)
);

create function preventDelete() returns trigger as
$$
begin
    if
        (tg_op = 'DELETE') then
        -- it does nothing, so deletion is skipped
    end if;
    return new;
end;
$$
    language plpgsql;

create trigger example2d_prevented
    before delete
    on example2d
    for each row
execute function preventDelete();

--test cases
insert into example2d (id, item, price)
values (1, 'lamp', 100);
delete
from example2d
where id = 1;

--delete created
drop trigger example2d_prevented on example2d;
drop function preventDelete();
drop table example2d;


--2.e Launches functions 1.d and 1.e.
create table example2e
(
    id       int  NOT NULL generated always as identity,
    password text NOT NULL
);

--1.d
create function isValidPassword(password varchar) returns text as
$$
begin
    if length(password) > 8 then
        return 'Is Valid';
    else
        return 'Is not Valid';
    end if;
end;
$$
    language plpgsql;
--1.e
create function twoOutput(input varchar) returns setof record as
$$
declare
    output record;
begin
    select input into output;
    return next output;

    select input into output;
    return next output;
end;
$$
    language plpgsql;

--2.e cont.
create function functionLauncher() returns trigger as
$$
begin
    if
        (tg_op = 'INSERT') then
        update example2e set password = isValidPassword(new.password) where id = new.id;
    end if;
    return NULL;
end;
$$
    language plpgsql;

create trigger example2e_launcher
    after insert
    on example2e
    for each row
execute function functionLauncher();

--test cases
insert into example2e (password)
values ('abcde1244');
insert into example2e (password)
values ('abcde1244');

--delete created
drop trigger example2e_launcher on example2e;
drop function functionLauncher();
drop function isValidPassword(varchar);
drop function twoOutput(varchar);
drop table example2e;
