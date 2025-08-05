--joint opration

create database operation
use operation

create table if not exists coures(
coures_id int,
coures_name varchar(50),
coures_desc varchar(50),
coures_tag varchar(50))


create table if not exists student(
student_id int,
student_name varchar(50),
student_mobile int,
coures_coures_enorll varchar(50),
student_coures_id int) 


insert into coures values(101 , 'fsda' , 'full stack analytics' , 'analytics'),
(102 , 'fsda' , 'full stack analytics' , 'analytics'),
(103 , 'fsda' , 'full stack analytics' , 'ds'),
(104 , 'big data' , 'full stack big data' , 'bs'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blochain' , 'bc'),
(107 , 'java' , 'full stack java' , 'java'),
(108 , 'testing' , 'full testing' , 'testing'),
(109 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(110 , 'dbms' , 'data base managment' , 'store data'),
(111 , 'c' , 'c language' , 'language'),
(112 , 'c++' , 'c++ language' , 'language'),
(113 , 'r' , 'r language' , 'analytics'),
(114 , 'python' , 'python language' , 'language')


insert into student values(301 , 'irfan' , 7689713, 'yes' , 101),
(302 , 'irfan' , 7689713, 'yes' , 102),
(303 , 'irfan' , 7689713, 'yes' , 103),
(304 , 'irfan' ,7689713, 'yes' , 104),
(305 , 'irfan' , 7689713, 'yes' , 105),
(306 , 'irfan' , 7689711, 'yes' , 106),
(307 , 'irfan' , 7689713, 'yes' , 107),
(308 , 'irfan' , 7689713, 'yes' , 108),
(309 , 'irfan' , 7689713, 'yes' , 109),
(310 , 'irfan' , 7689713, 'yes' , 110),
(311 , 'irfan' , 7689711, 'yes' , 111),
(312 , 'irfan' , 7689713, 'yes' , 112),
(313 , 'irfan' , 7689713, 'yes' , 113),
(314 , 'irfan' , 7689713, 'yes' , 114)

select * from coures

select * from student

select c.coures_id , c.coures_name , c.coures_desc , s.student_id , s.student_name , student_coures_id   from coures c
inner join student s on c.coures_id = s.student_coures_id


select c.coures_id , c.coures_name , c.coures_desc , s.student_id , s.student_name , student_coures_id   from coures c
left join student s on c.coures_id = s.student_coures_id


select c.coures_id , c.coures_name , c.coures_desc , s.student_id , s.student_name , student_coures_id   from coures c
left join student s on c.coures_id = s.student_coures_id where s.student_id is null;

select c.coures_id , c.coures_name , c.coures_desc , s.student_id , s.student_name , student_coures_id   from coures c
right join student s on c.coures_id = s.student_coures_id 

select c.coures_id , c.coures_name , c.coures_desc , s.student_id , s.student_name , student_coures_id   from coures c
right join student s on c.coures_id = s.student_coures_id where s.student_id is null;

select c.coures_id , c.coures_name , c.coures_desc , s.student_id , s.student_name , student_coures_id   from coures c
cross join student s on c.coures_id = s.student_coures_id

select c.coures_id , c.coures_name , c.coures_desc , s.student_id , s.student_name , student_coures_id   from coures c
cross join student s 

--indexing

show index from course

create table if not exists course(
course_id int,
course_name varchar(50),
course_desc varchar(50),
course_tag varchar(50),
index(course_id))


insert into course values(101 , 'fsda' , 'full stack analytics' , 'analytics'),
(102 , 'fsda' , 'full stack analytics' , 'analytics'),
(103 , 'fsda' , 'full stack analytics' , 'ds'),
(104 , 'big data' , 'full stack big data' , 'bs'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blochain' , 'bc'),
(107 , 'java' , 'full stack java' , 'java'),
(108 , 'testing' , 'full testing' , 'testing'),
(109 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(110 , 'dbms' , 'data base managment' , 'store data'),
(111 , 'c' , 'c language' , 'language'),
(112 , 'c++' , 'c++ language' , 'language'),
(113 , 'r' , 'r language' , 'analytics'),
(114 , 'python' , 'python language' , 'language')


--fro multipul column indexing

create table if not exists course1(
course_id int,
course_name varchar(50),
course_desc varchar(50),
course_tag varchar(50),
index(course_id , course_name , course_desc ))

show index from course1

insert into course1 values(101 , 'fsda' , 'full stack analytics' , 'analytics'),
(102 , 'fsda' , 'full stack analytics' , 'analytics'),
(103 , 'fsda' , 'full stack analytics' , 'ds'),
(104 , 'big data' , 'full stack big data' , 'bs'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blochain' , 'bc'),
(107 , 'java' , 'full stack java' , 'java'),
(108 , 'testing' , 'full testing' , 'testing'),
(109 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(110 , 'dbms' , 'data base managment' , 'store data'),
(111 , 'c' , 'c language' , 'language'),
(112 , 'c++' , 'c++ language' , 'language'),
(113 , 'r' , 'r language' , 'analytics'),
(114 , 'python' , 'python language' , 'language')

EXPLAIN ANALYZE select * from course1 where course_id = 106 or course_name = 'fsda'

explain select * from course1 where course_id =106

analyze table course1

describe course1

--uniqe index

create table if not exists course2(
course_id int,
course_name varchar(50),
course_desc varchar(50),
course_tag varchar(50),
unique index(course_id , course_name , course_desc ))

show index from course2

--union

ex
select coures_id , coures_name from coures
union
select student_id , student_name from student

--union all

select coures_id , coures_name from coures
union all
select student_id , student_name from student

--CTE COMMAM TABLE EXPANATION

with sample_students as (
select * from coures where coures_id in (101 , 103, 110))
select * from sample_students where coures_tag = 'fsda'

--ex
with ctest as (select 1 as col1 , 2 as col2
union all
select 3,5)
select col1 from ctest)

--Recursive

with recursive cte(n) as
(select 1 union all select n+1 from cte where n<11)
select * from cte

cte inside cte 
with recursive sudh  as (
select 1 as n , 1 as p, -1 as q
union all
select n+1 , q+2, p+2 from sudh where n<11)
select * from sudh