--a
select dept_name, avg(salary)
from instructor
group by dept_name
order by avg(salary) asc;
--b
select building
from (select count(course_id) as num, building
      from (select distinct course_id, building
            from section) as coursesAndBuildings
      group by building) as s
         inner join (select max(num) as num
                     from (select count(course_id) as num, building
                           from (select distinct course_id, building
                                 from section) as coursesAndBuildings
                           group by building) as numOfCourses) m on s.num = m.num;
--c
select dept_name
from (select count(dept_name) as num, dept_name
      from (select distinct course_id, dept_name
            from course) as coursesAndDeps
      group by dept_name) as s
         inner join (select min(num) as num
                     from (select count(dept_name) as num, dept_name
                           from (select distinct course_id, dept_name
                                 from course) as coursesAndBuildings
                           group by dept_name) as numOfCourses) m on s.num = m.num;
--d
select student.id, name
from student
         inner join (select id
                     from (select count(id) as c, id
                           from takes
                           where course_id like 'CS%'
                           group by id) as takenCS
                     where c > 3) as t on student.id = t.id;
--e
select name
from instructor
where dept_name in ('Biology', 'Philosophy', 'Music');
--f
select name
from instructor
         inner join (select id
                     from teaches
                     where year = 2018 except (select id from teaches where year = 2017)) t on instructor.id = t.id