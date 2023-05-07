-- task_one
select
    count(sg.student_id) as student_count,
    c.course_name,
    g.group_name
from student_group sg
join groups g on g.id = sg.group_id
join courses c on c.id = g.course_id
where c.id = 1 and sg.start_date >= '2022-01-01' and sg.end_date <= '2022-06-30'
group by c.course_name, g.group_name
order by g.group_name;
--------------

-- task_two
select
    c.course_name,
    count(ds.id) as dropout_count,
    g.group_name
from dropout_students ds
join groups g on ds.id = g.id
join courses c on g.id = c.id
where c.id = 1 and ds.dropout_date between '2022-01-01' and '2022-12-31'
group by c.course_name, g.group_name
order by g.group_name;
--------------

-- task_three
select
    c.course_name,
    count(sg.student_id) as student_count
from student_group sg
join groups g on g.id = sg.group_id
join courses c on c.id = g.course_id
where sg.start_date between '2022-01-01' and '2022-12-31'
group by c.course_name
order by c.course_name;
--------------

-- task_four
select
    g.group_name,
    count(sg.id) as student_count
from student_group sg
join groups g on g.id = sg.group_id
join courses c on c.id = g.course_id
where c.id = 1 and sg.start_date between '2022-01-01' and '2022-12-31'
group by g.group_name
order by g.group_name;
--------------

-- task_five
select
    g.group_name,
    count(sg.student_id) as student_count
from student_group sg
join groups g on g.id = sg.group_id
where g.id = 1 and sg.start_date <= '2022-01-01' and (sg.end_date >= '2022-01-01' or sg.end_date is null)
group by g.group_name
order by g.group_name;
--------------

-- task_six
select
    c.course_name,
    g.group_name,
    count(ds.id) as dropout_count
from dropout_students ds
join groups g on g.id = ds.group_id
join courses c on c.id = g.course_id
where c.id = 1 and extract(year from ds.dropout_date) = 2022
group by c.course_name, g.group_name
order by c.course_name, g.group_name;
--------------

-- task_seven

select
    g.group_name,
    count(sg.student_id) as student_count
from student_group sg
join groups g on g.id = sg.group_id
join courses c on c.id = g.course_id
where c.id = 1 and sg.end_date = '2022-01-31'
group by g.group_name
order by g.group_name;

-- task_eight
select
    s.full_name,
    c.course_name,
    g.group_name,
    sg.start_date,
    sg.end_date
from students s
join student_group sg on s.id = sg.student_id
join groups g on sg.group_id = g.id
join courses c on c.id = g.course_id
where sg.start_date <= '2022-01-15' and g.end_date >= '2022-01-15'
order by s.full_name;
--------------

-- task_nine
select
    c.course_name,
    g.group_name,
    count(ds.id) as dropout_count
from dropout_students ds
join groups g on g.id = ds.group_id
join courses c on c.id = g.course_id
where ds.dropout_date = '2022-01-20'
group by c.course_name, g.group_name;
--------------

-- task_ten
select
    c.course_name,
    count(sg.student_id) as student_count
from student_group sg
join groups g on g.id = sg.group_id
join courses c on c.id = g.course_id
where sg.end_date = '2022-01-31'
group by c.course_name
order by c.course_name
--------------