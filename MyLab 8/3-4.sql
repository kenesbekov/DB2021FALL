--3. What is the difference between procedure and function?
-- A function is used to calculate result using given inputs. Returns a result
-- A procedure is used to perform certain task in order. Doesn't returns a result

--Create procedures that:
--4.a Increases salary by 10% for every 2 years of work experience and provides 10% discount
-- and after 5 years adds 1% to the discount.
create table employee
(
    id               int     NOT NULL,
    name             varchar NOT NULL,
    date_of_birth    date    NOT NULL,
    age              int     NOT NULL,
    salary           numeric NOT NULL,
    work_experience  int     NOT NULL,
    discount_percent int     NOT NULL,
    primary key (id)
);

create procedure employeeBonus(selected_id int) as
$$
declare
    exp int;
begin
    update employee set salary = salary + (salary / 10) * (work_experience / 2) where id = selected_id;

    update employee set discount_percent = 10 where id = selected_id;
    select work_experience into exp from employee where id = selected_id;
    if exp >= 5 then
        update employee set discount_percent = discount_percent + 1 where id = selected_id;
    end if;
end;
$$
    language plpgsql;

insert into employee(id, name, date_of_birth, age, salary, work_experience, discount_percent)
values (1, 'Ken', '2003-01-01', 18, 100, 5, 0);

call employeeBonus(1);


--4.b After reaching 40 years, increase salary by 15%.
-- If work experience is more than 8 years,
-- increase salary for 15% of the already increased value for work experience and provide a constant 20% discount.

create procedure employeeBonus1(selected_id int) as
$$
declare
    emp_age INT;
    exp     INT;
begin
    select age, work_experience into emp_age, exp from employee where employee.id = selected_id;

    if emp_age >= 40 then
        update employee set salary = salary * 1.15 where id = selected_id;
    end if;
    if exp >= 8 then
        update employee set salary = salary * 1.15, discount_percent = 20 where id = selected_id;
    end if;
end;
$$
    language plpgsql;

insert into employee(id, name, date_of_birth, age, salary, work_experience, discount_percent)
values (2, 'Len', '1976-01-01', 45, 100, 12, 0);

call employeeBonus1(2);

drop table employee;