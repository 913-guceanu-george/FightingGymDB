go
use FightingGym
go


-- a
-- 2 queries with the union operation; use UNION [ALL] and OR;

-- All students with more than 2 years or whose name start with the letter D
    SELECT *
    FROM Student s1
    WHERE s1.years_of_exp > 2
INTERSECT
    SELECT *
    FROM Student s2
    WHERE s2.full_name like 'D%'


-- All students with daily payments
    SELECT *
    FROM Student s1
union all
    select *
    from Payment p1
    WHERE daily = 1 OR memebership = 0

-- b
-- 2 queries with the intersection operation; use INTERSECT and IN;

-- Theachers with diploma that teach classes, sorted alphabetically
    select t1.tid, t1.full_name
    from Teacher t1
    where diploma = 1
intersect
    select c1.tid, c1.class_name
    from Class c1
    where cid in (10, 11, 12)
ORDER BY tid

-- From the first 20 students, the one with gloves that are made of leather or syntetic, sorted alphabetically
    select s1.stid, s1.full_name
    from Student s1
    where s1.stid between 1 and 17
intersect
    select g1.stid, g1.material
    from Glove g1
    where material in ('leather', 'syntetic')
order by s1.full_name


-- c
--2 queries with the difference operation; use EXCEPT and NOT IN;

-- All students with trophy in places 1, 2, 3
    SELECT s.stid, s.full_name
    from Student s
INTERSECT
    (
        select t1.place, t1.stid
    from Trophy t1
    where place != null
except
    select t1.stid, t1.place
    from Trophy t1
    where t1.stid = null)

-- All matches that do not happen on Christmas Eve
    SELECT s.full_name, s.years_of_exp, s.stid
    from Student s
INTERSECT
    (select m1.match_date, m1.mtid, m1.stid
    from FightingMatch m1
    where m1.match_date not in ('24.12.2022') and m1.stid between 1 and 20)
ORDER BY s.stid


--d
-- 4 queries with INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN (one query per operator); one query will join at least 3 tables, while another one will join at least two many-to-many relationships

-- All students that do not attend a class
    select *
    from Class c inner join Lesson l on
c.cid = l.cid
except
    select *
    from Student s inner join Lesson l on
s.stid = l.stid

-- All students that attend a lesson 
select *
from Student s right join Lesson l on
s.stid = l.stid
where s.stid != null


-- All students that have a trophy
select *
from Student s left join Trophy t on
s.stid = t.stid
where t.stid is not null

-- All teachers that teach a class with full outer join
select *
from Teacher t full outer join Class c on
t.tid = c.tid
where c.tid is not null



-- e 
-- 2 queries with the IN operator and a subquery in the WHERE clause; in at least one case, the subquery must include a subquery in its own WHERE clause;


-- All students that start with the letter D and attend lessons of classes that require more than 2 years of experience
select *
from Student s inner join Lesson l on
s.stid = l.stid
    inner join Class c on
l.cid = c.cid
where s.full_name like 'D%' and c.years_of_exp_req in (2,3)

-- All students that have a trophy and attend lessons of classes that require more than 2 years of experience
select *
from Student s inner join Lesson l on
s.stid = l.stid
    inner join Class c on
l.cid = c.cid
where s.stid in (select t1.stid
    from Trophy t1
    where t1.stid != null) and c.years_of_exp_req in (2,3,4)

-- f
-- 2 queries with the EXISTS operator and a subquery in the WHERE clause;

-- All students that have gloves that are made of leather or syntetic
select *
from Student s right join Glove g on
s.stid = g.stid
where exists (select g1.material
from Glove g1
where g1.material in ('leather'))

-- All students that have a trophy and gloves that are made of syntetic
select *
from Student s inner join Glove g on
s.stid = g.stid
where exists (select t1.stid
    from Trophy t1
    where t1.stid != null) and exists (select g1.material
    from Glove g1
    where g1.material in ('syntetic'))

-- g
-- 2 queries with a subquery in the FROM clause

-- All students that have a membership
select *
from Student s inner join (select p1.stid
    from Payment p1
    where p1.memebership = 1) p on
s.stid = p.stid

-- All teachers that have a diploma and a salary higher than 1000
select *
from Teacher t inner join (select s1.tid
    from Salary s1
    where s1.amount > 1000) t2 on
t.tid = t2.tid and t.diploma = 1


-- h
-- 4 queries with the GROUP BY clause, 3 of which also contain the HAVING clause; 2 of the latter will also have a subquery in the HAVING clause; use the aggregation operators: COUNT, SUM, AVG, MIN, MAX;

-- The number of fighting matches that are not on Christmas Eve
select count(m1.mtid) as 'Matches not on 29 Feb'
from FightingMatch m1
where m1.match_date != '29.02.2024'
-- group by m1.mtid

-- The lowest salary of a teacher grouped by having a diploma or not
select min(s1.amount)
from Salary s1
group by s1.tid
having s1.tid in (select t1.tid
from Teacher t1
where t1.diploma = 1)

-- The students with the maximum number of trophies grouped by having at least 2 years of experience or not
select max(t1.stid)
from Trophy t1
group by t1.stid
having t1.stid in (select s1.stid
from Student s1
where s1.years_of_exp > 2)

-- All the teacher's salaries added having the teachers grouped by having their full name starting with the letter G or not
select sum(s1.amount)
from Salary s1
group by s1.tid
having s1.tid in (select t1.tid
from Teacher t1
where t1.full_name like 'G%')

-- i
--  4 queries using ANY and ALL to introduce a subquery in the WHERE clause (2 queries per operator); rewrite 2 of them with aggregation operators, and the other 2 with IN / [NOT] IN.
