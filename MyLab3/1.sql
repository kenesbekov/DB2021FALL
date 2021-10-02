--a
select title
from course
where credits > 3;
--b
select room_number
from classroom
where building in ('Watson', 'Packard');
--c
select title
from course
where dept_name = 'Comp. Sci.';
--d one of these
select title
from course
         inner join (select *
                     from section
                     where semester = 'Fall') s on course.course_id = s.course_id;
--e
select name
from student
where tot_cred between 46 and 89;
--f
select name
from student
where name like '%a'
   or name like '%e'
   or name like '%i'
   or name like '%o'
   or name like '%u';
--g
select title
from course
         inner join (select course_id
                     from prereq
                     where prereq_id = 'CS-101') s on course.course_id = s.course_id;
