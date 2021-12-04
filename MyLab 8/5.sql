-- Produce a CTE that can return the upward recommendation chain for any member.
-- You should be able to select recommender from recommenders where member=x.
-- Demonstrate it by getting the chains for members 12 and 22.
-- Results table should have member and recommender, ordered by member ascending,
-- recommender descending.
create table cdmembers
(
    member_id      int     NOT NULL,
    member_name    varchar NOT NULL,
    recommender_id int
);

insert into cdmembers (member_id, member_name, recommender_id)
values (1, 'Michael North', NULL),
       (2, 'Megan Berry', 1),
       (3, 'Sarah Berry', 1),
       (4, 'Zoe Black', 1),
       (5, 'Tim James', 1),
       (6, 'Bella Tucker', 2),
       (7, 'Ryan Metcalfe', 2),
       (8, 'Max Mills', 2),
       (9, 'Benjamin Glover', 2),
       (10, 'Carolyn Henderson', 3),
       (11, 'Nicola Kelly', 3),
       (12, 'Alexandra Climo', 3),
       (12, 'Alexandra Climo', 4),
       (12, 'Alexandra Climo', 5),
       (13, 'Dominic King', 3),
       (14, 'Leonard Gray', 4),
       (15, 'Eric Rampling', 4),
       (16, 'Piers Paige', 7),
       (17, 'Ryan Henderson', 7),
       (18, 'Frank Tucker', 8),
       (19, 'Nathan Ferguson', 8),
       (20, 'Kevin Rampling', 8),
       (21, 'Albert Jolly', 8),
       (22, 'Albert Einstein', 8),
       (22, 'Albert Einstein', 12),
       (23, 'Kevin Tucker', 8);

with recursive recommenders as (
    select member_id,
           member_name,
           recommender_id
    from cdmembers
    where member_id = 12
       or member_id = 22
    union
    select m.member_id,
           m.member_name,
           m.recommender_id
    FROM cdmembers m
             inner join recommenders r on r.member_id = m.recommender_id
)
select *
from recommenders
order by recommenders.member_id asc, recommenders.recommender_id desc;

drop table cdmembers;