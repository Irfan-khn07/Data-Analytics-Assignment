create database ineuron_partition
use ineuron_partition

create table ineuron_coures(
coures_name varchar(50),
coures_id int(10),
coures_titel varchar(60),
coures_desc varchar(50),
lanuch_date date,
coures_fee int,
coures_mentor varchar(60),
coures_lauch_year int)

drop table ineuron_coures
select * from ineuron_coures;

insert into ineuron_coures values('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'raj' , 2019),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('java' , '101' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('java' , '101' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('java' , '101' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('data_analytic' , '101' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'raj' , 2020),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020),
('big_data' , '101' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020),
('java' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('data_analytic' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'raj' , 2019),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020),
('big_data' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('java' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('java' , '101' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020)

select * from ineuron_coures where coures_lauch_year = 2020

CREATE TABLE ineuron_courses1 (
    course_name VARCHAR(50),
    course_id INT,
    course_title VARCHAR(60),
    course_desc VARCHAR(50),
    launch_date DATE,
    course_fee INT,
    course_mentor VARCHAR(60),
    course_launch_year INT
)
PARTITION BY RANGE (course_launch_year) (
    PARTITION p0 VALUES LESS THAN (2019),
    PARTITION p1 VALUES LESS THAN (2020),
    PARTITION p2 VALUES LESS THAN (2021),
    PARTITION p3 VALUES LESS THAN (2022)
);


insert into ineuron_courses1 values('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'raj' , 2019),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('java' , '101' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('java' , '101' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('java' , '101' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('data_analytic' , '101' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'raj' , 2020),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020),
('big_data' , '101' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020),
('java' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('data_analytic' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'raj' , 2019),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020),
('big_data' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('java' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('java' , '101' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020)

select * from ineuron_courses1 where course_launch_year = 2020

select * from ineuron_coures where coures_lauch_year = 2020

select partition_name , table_name, table_rows from information_schema.partitions where table_name = 'ineuron_courses1'


CREATE TABLE ineuron_courses2 (
    course_name VARCHAR(50),
    course_id INT,
    course_title VARCHAR(60),
    course_desc VARCHAR(50),
    launch_date DATE,
    course_fee INT,
    course_mentor VARCHAR(60),
    course_launch_year INT)
    partition by hash (course_launch_year)
    partitions 5;
    
select partition_name , table_name, table_rows from information_schema.partitions where table_name = 'ineuron_courses2'



CREATE TABLE ineuron_courses3 (
    course_name VARCHAR(50),
    course_id INT,
    course_title VARCHAR(60),
    course_desc VARCHAR(50),
    launch_date DATE,
    course_fee INT,
    course_mentor VARCHAR(60),
    course_launch_year INT)
    partition by hash (course_launch_year)
    partitions 10;
    
    select partition_name , table_name, table_rows from information_schema.partitions where table_name = 'ineuron_courses3'

--key partition

CREATE TABLE ineuron_courses4 (
    course_name VARCHAR(50),
    course_id INT primary key,
    course_title VARCHAR(60),
    course_desc VARCHAR(50),
    launch_date DATE,
    course_fee INT,
    course_mentor VARCHAR(60),
    course_launch_year INT)
    partition by key()
    partitions 10;
    
    
select partition_name , table_name, table_rows from information_schema.partitions where table_name = 'ineuron_courses4'


insert into ineuron_courses4 values('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '102' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '103' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'raj' , 2019),
('machin_leraing' , '104' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '105' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '106' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('machin_leraing' , '107' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('machin_leraing' , '109' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('java' , '110' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('machin_leraing' , '111' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('java' , '112' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('data_analytic' , '113' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'raj' , 2020),
('machin_leraing' , '114' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020),
('big_data' , '115' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020),
('java' , '116' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('data_analytic' , '117' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'raj' , 2019),
('machin_leraing' , '118' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020),
('big_data' , '119' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '120' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('java' , '121' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('java' , '122' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020)

select * from ineuron_courses4

select MD5('MERN')

CREATE TABLE ineuron_courses6 (
    course_name VARCHAR(50) ,
    course_id INT (10),
    course_title VARCHAR(60),
    course_desc VARCHAR(50),
    launch_date DATE,
    course_fee INT,
    course_mentor VARCHAR(60),
    course_launch_year INT)
    partition by list (course_launch_year )(
    partition p0 values in(2019 , 2020),
    partition p1 values in(2021 , 2022)
    )
    
  
insert into ineuron_courses6 values('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '102' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '103' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'raj' , 2019),
('machin_leraing' , '104' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '105' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '106' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('machin_leraing' , '107' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('machin_leraing' , '109' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('java' , '110' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('machin_leraing' , '111' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('java' , '112' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('data_analytic' , '113' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'raj' , 2020),
('machin_leraing' , '114' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020),
('big_data' , '115' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020),
('java' , '116' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('data_analytic' , '117' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'raj' , 2019),
('machin_leraing' , '118' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020),
('big_data' , '119' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '120' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('java' , '121' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('java' , '122' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020)


select partition_name , table_name, table_rows from information_schema.partitions where table_name = 'ineuron_courses6'
    
    
--range  partition p0 values less than yee use hoga aur list me in use hota h

CREATE TABLE ineuron_courses9 (
    course_name VARCHAR(50) ,
    course_id INT (10),
    course_title VARCHAR(60),
    course_desc VARCHAR(50),
    launch_date DATE,
    course_fee INT,
    course_mentor VARCHAR(60),
    course_launch_year INT)
    partition by range columns (course_name,  course_id, course_launch_year )(
    partition p0 values less than ('big_data' , 119 , 2019),
    partition p1 values less than ('machin_leraing', 103 , 2020),
    partition p2 values less than ('machin_leraing', 103 , 2021)
    )
    
select partition_name , table_name, table_rows from information_schema.partitions where table_name = 'ineuron_courses9'

select ('a') > ('b')

insert ignore into ineuron_courses9 values('machin_leraing' , '101' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '102' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '103' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'raj' , 2019),
('machin_leraing' , '104' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '105' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '106' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('machin_leraing' , '107' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('machin_leraing' , '109' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('java' , '110' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('machin_leraing' , '111' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('java' , '112' , 'ML' , "this is ML coures" , '2021-07-07' , 3540 , 'irfan' , 2021),
('data_analytic' , '113' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'raj' , 2020),
('machin_leraing' , '114' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020),
('big_data' , '115' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020),
('java' , '116' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('data_analytic' , '117' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'raj' , 2019),
('machin_leraing' , '118' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020),
('big_data' , '119' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('machin_leraing' , '120' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('java' , '121' , 'ML' , "this is ML coures" , '2019-07-07' , 3540 , 'irfan' , 2019),
('java' , '122' , 'ML' , "this is ML coures" , '2020-07-07' , 3540 , 'irfan' , 2020)

select * from ineuron_courses9

--case stestment (agr aapka batch h to hilight ho )

select * ,
case
    when coures_name = 'fsda' then " this is my batch"
	else "this is not your batch"
end as statement
from  ineuron_coures

--lenth chack
    
select * ,
case
    when length(coures_name) = 4 then " len 4"
    when length(coures_name) = 2 then " len 2"
	else "other lenght"
end as statement
from  ineuron_coures


select * ,
case
    when length(coures_name) = 4 then " len 4"
    when length(coures_name) = 2 then " len 2"
	else "other lenght"
end as statement
from  ineuron_coures

update ineuron_coures set coures_name = case
when coures_name = 'RL' then 'reinforcement learing'
when coures_name = 'dl' then 'deep learing'
end

select * from  ineuron_coures