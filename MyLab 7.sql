--1. How can we store large-object types?
-- Large objects (photos, videos, CAD files, etc.) are stored as a large object:
-- • blob:binary large object--object is a large collection of uninterpreted binary data
-- (whose interpretation is left to an application outside of the database system).
-- • clob:character large object--object is a large collection of character data.
-- When a query returns a large object,
-- a pointer is returned rather than the large object itself.


--2. What is the difference between privilege, role and user?
-- A privilege is a right to execute a particular type of SQL statement.
-- A role is a way to distinguish among various users as far as what these users can access/update in the database.
-- A user is someone who can connect to a database and optionally can own objects in the database.

-- ○ create accountant, administrator, support roles and grant appropriate privileges
create role accountant;
create role administrator;
create role support;

grant select, insert, update (status), delete on transactions to accountant;
grant all privileges on accounts, customers, transactions to administrator;
grant select, update (currency) on accounts to support;
grant select on customers to support;
-- ○ create some users and assign them roles,
create user one;
create user two with password 'twotwo';
create user three;

grant accountant to one;
grant administrator to two;
grant support to three;
-- ○ give to some of them permission to grant roles to other users
alter role two createrole;
alter role three createrole;
-- ○ revoke some privilege from particular user
revoke delete on transactions from one;
revoke all privileges on customers from three;
REVOKE all privileges on customers,accounts from two;


--3. Add appropriate constraints
-- ○ add not null constraints
alter table accounts
    alter column customer_id set not null,
    alter column currency set not null,
    alter column balance set default 0;
alter table customers
    alter column name set not null,
    alter column birth_date set not null;
alter table transactions
    alter column date set not null,
    alter column src_account set not null,
    alter column dst_account set not null,
    alter column amount set not null,
    alter column status set not null;


--5. Create indexes:
-- ○ index so that each customer can only have one account of one currency
create unique index cust_w_one_acc_n_curr on accounts (customer_id, currency);
insert into accounts
values ('DK99999', 203, 'EUR', 500, 200);
--will cause an error
-- ○ index for searching transactions by currency and balance
create index accounts_curr_n_bal on accounts (currency, balance);
create index trans_from_src_acc on transactions (src_account);
create index trans_from_dst_acc on transactions (dst_account);

--6. Write a SQL transaction that illustrates money transaction from one account to another:
-- ○ create transaction with “init” status
begin;
insert into transactions
values (4, now(), 'NT10204', 'RS88012', 1000, 'init');
delete
from transactions
where id = 4;
-- ○ increase balance for destination account and decrease for source account
do
$$
    begin
        update accounts
        set balance=balance + 2222
        where account_id = 'NT10204';
        update accounts
        set balance=balance - 2222
        where account_id = 'RS88012';
-- ○ if in source account balance becomes below limit, then make rollback
        rollback;
-- ○ update transaction with appropriate status(commit or rollback)
    exception
        when others then
            update transactions set status='rollback' where id = 4;
    end;
$$;
commit;

