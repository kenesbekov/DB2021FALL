--a
select distinct name
from student
         inner join (select *
                     from takes
                     where course_id like 'CS%'
                       and grade in ('A', 'A-')) t on student.id = t.id
order by name asc;
--b
select name
from instructor
         inner join (select distinct i_id
                     from advisor
                              inner join (select id
                                          from takes
                                          where course_id like 'CS%'
                                            and grade not in ('A', 'A-', 'B+', 'B')) s on s.id = advisor.s_id) a
                    on instructor.id = a.i_id
;
--c
select distinct dept_name
from student
    except (select dept_name
            from student
                     inner join (select id
                                 from takes
                                 where grade in ('F', 'C')) t
                                on student.id = t.id);
--d
select name
from instructor
         inner join advisor a2 on instructor.id = a2.i_id
    except (select name
            from instructor
                     inner join (select i_id
                                 from advisor
                                          inner join (select id
                                                      from takes
                                                      where grade = 'A') t
                                                     on advisor.s_id = t.id) a
                                on instructor.id = a.i_id);
--e
select title
from course
         inner join (select distinct course_id
                     from section
                              inner join (select *
                                          from time_slot
                                          where end_hr < 13) ts on section.time_slot_id = ts.time_slot_id) s
                    on course.course_id = s.course_id;

