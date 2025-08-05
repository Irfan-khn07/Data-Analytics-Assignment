create database if not exists  dress_data;
use dress_data;

create table if not exists dress(
`Dress_ID` varchar(255),	
`Style`	varchar(255),	
`Price`	varchar(255),	
`Rating`	varchar(255),	
`Size`	varchar(255),	
`Season`	varchar(255),	
`NeckLine`	varchar(255),	
`SleeveLength` varchar(255),		
`waiseline`	varchar(255),	
`Material`	varchar(255),	
`FabricType`	varchar(255),	
`Decoration`	varchar(255),	
`Pattern Type` varchar(255),		
`Recommendation` varchar(255));

LOAD DATA INFILE  
'D:\data\AttributeDataSet.csv'
into table dress
FIELDS TERMINATED by ','
ENCLOSED by '"'
lines terminated by '\n'
IGNORE 1 ROWS;


select * from dress;


select count(*) from dress;
select price , size from dress;


create table if not exists test (
test_id int auto_increment,
test_name varchar(30),
test_mailid varchar(30),
test_adress varchar(30),
primary key (test_id))

select * from test;


insert into test value ('1' , 'raj' , 'ik24@gmail.com'  , 'ghughli'),
('2' , 'digvijay' , 'dig00@gmail.com'  , 'rampur'),
('3' , 'hasan' , 'hasn@gmail.com'  , 'naaakpada'),
('4' , 'aman' , 'aman33@gmail.com'  , 'mumbai');


create table if not exists test2 (
test_id int not null auto_increment,
test_name varchar(30),
test_mailid varchar(30),
test_adress varchar(30),
primary key (test_id))

insert into test2 (test_name , test_mailid , test_adress ) value ( 'raj' , 'ik24@gmail.com'  , 'ghughli'),
('digvijay' , 'dig00@gmail.com'  , 'rampur'),
('hasan' , 'hasn@gmail.com'  , 'naaakpada'),
( 'aman' , 'aman33@gmail.com'  , 'mumbai');


select * from test2;


create table if not exists test3 (
test_id int,
test_name varchar(30),
test_mailid varchar(30),
test_adress varchar(30),
test_salary int check(test_salary > 10000))

alter table test3 add constraint check (test_id > 0)
insert into test3 value (1 , 'raj' , 'ik24@gmail.com'  , 'ghughli' , '50000')

insert into test3 values (1 , 'raj' , 'ik24@gmail.com'  , 'ghughli' , '50000'),
(2 , 'digvijay' , 'dig00@gmail.com'  , 'rampur'  ,  '30000'),
(3 , 'hasan' , 'hasn@gmail.com'  , 'naaakpada'  , '11000'),
(4 , 'aman' , 'aman33@gmail.com'  , 'mumbai' ,  '19000');



create table if not exists test4 (
test_id int,
test_name varchar(30),
test_mailid varchar(30),
test_adress varchar(30) check (test_adress = 'bengalore'),
test_salary int check(test_salary > 10000))


insert into test4 values (1,'sudhanshu','sudhanshu@ineuron.ai','bengalore' , 50000)


select * from test5

create table if not exists test5 (
test_id int,
test_name varchar(30),
test_mailid varchar(30),
test_adress varchar(30) check (test_adress= 'bengalore'),
test_salary int check(test_salary > 10000))


insert into test5 ( test_name , test_mailid , test_adress , test_salary) values ('sudhanshu','sudhanshu@ineuron.ai','bengalore' , 50000)


create table if not exists test6 (
test_id int NOT NULL default 0 ,
test_name varchar(30),
test_mailid varchar(30),
test_adress varchar(30) check (test_adress= 'bengalore'),
test_salary int check(test_salary > 10000))

insert into test6 ( test_name , test_mailid , test_adress,  test_salary) values ('sudhanshu','sudhanshu@ineuron.ai','bengalore' , 50000)

SELECT * FROM TEST6

create table if not exists test7 (
test_id int NOT NULL default 0 ,
test_name varchar(30),
test_mailid varchar(30) unique,
test_adress varchar(30) check (test_adress= 'bengalore'),
test_salary int check(test_salary > 10000))

insert into test7 ( test_name , test_mailid , test_adress,  test_salary) values ('sudhanshu','sudhanshu@ineuron.ai','bengalore' , 50000)


create table if not exists test8 (
test_id int NOT NULL auto_increment ,
test_name varchar(30) NOT NULL default 'unkown',
test_mailid varchar(30) unique NOT NULL,
test_adress varchar(30) check (test_adress= 'bengalore') NOT NULL,
test_salary int check(test_salary > 10000) NOT NULL,
primary key (test_id))

select * from test8

insert into test8 ( test_id , test_name , test_mailid , test_adress,  test_salary) values (500, 'sudhanshu','sudhanshu2@ineuron.ai','bengalore' , 50000)

insert into test8 (  test_name , test_mailid , test_adress,  test_salary) values ( 'sudhanshu','sxdhanshu0@ineuron.ai','bengalore' , 50000)



