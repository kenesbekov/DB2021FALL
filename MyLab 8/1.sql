-- Create a function that:
--1.a Increments given values by 1 and returns it.
create function incrementer(val integer) returns integer as
$$
begin
    return val + 1;
end;
$$
    language plpgsql;

select incrementer(123);
drop function incrementer;
--1.b Returns sum of 2 numbers.
create function sumOfNum(num1 integer, num2 integer) returns integer as
$$
begin
    return num1 + num2;
end;
$$
    language plpgsql;

select sumOfNum(12, 13);
drop function sumOfNum;
--1.c Returns true or false if numbers are divisible by 2.
create function isDivisibleByTwo(num integer) returns boolean as
$$
begin
    return (num + 1) % 2;
end;
$$
    language plpgsql;

select isDivisibleByTwo(44);
drop function isDivisibleByTwo;
--1.d Checks some password for validity.
create function isValidPassword(password varchar) returns text as
$$
begin
    if length(password) > 8 then
        return 'Is Valid';
    else return 'Is not Valid';
    end if;
end;
$$
    language plpgsql;

select isValidPassword('abcde1234');
drop function isValidPassword;
--1.e Returns two outputs, but has one input.
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

select *
from twoOutput('Hello') as x(output varchar);
drop function twoOutput(varchar);

