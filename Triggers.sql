--Triggers (automaticlly update)

create database jng
use jng

create table course(
course_id int,
course_desc varchar(50),
course_mentor varchar(60),
course_price int,
course_discount int,
create_date date)

create table course_update(
course_mentor_update varchar(60),
course_price_update int,
course_discount_update int)


--1 befor update createing triggerd

delimiter //
create trigger course_before_insert
before insert
on course for each row 
begin
     set new.create_date = sysdate();
end; //

select * from course    

insert into course (course_id , course_desc, course_mentor ,course_price , course_discount)  
values (101, "FSDA", 'irfan', 2000, 120);

create table course1(
course_id int,
course_desc varchar(50),
course_mentor varchar(60),
course_price int,
course_discount int,
create_date date,
user_info varchar(50))

delimiter //
create trigger course_before_insert11
before insert
on course1 for each row 
begin
	 declare user_val varchar(50);
     set new.create_date = sysdate();
     select user() into user_val;
     set new.user_info = user_val; 
end; //


select * from course1
select user()
insert into course1 (course_id , course_desc, course_mentor ,course_price , course_discount)  
values (101, "FSDA", 'irfan', 2000, 120);


create table test1(
c1 varchar(50),
c2 date,
c3 int)

create table test2(
c1 varchar(50),
c2 date,
c3 int)

create table test3(
c1 varchar(50),
c2 date,
c3 int)

delimiter //
create trigger to_update_others
before insert on test1  for each row
begin
    insert into test2 values("xyz" , sysdate(), 23456);
    insert into test3 values("xyz" , sysdate(), 23456);
end //    

insert into test1 values ("irfan" , sysdate(),567)

select * from test1
select * from test2
select * from test3


--after insert

delimiter //
create trigger to_update_others_table
after insert on test1  for each row
begin
    update test2 set c1 = 'abc' where c1 = 'xyz';
    delete from test3 where c1 = 'xyz';
end // 

insert into test1 values ('digvijay' , sysdate(),56766)

SET SQL_SAFE_UPDATES = 0;

--after delete

delimiter //
create trigger to_delete_others_table
after delete on test1  for each row
begin
    insert into test3 values ("after delete" , sysdate(), 567654);
end; //

select * from test1

delete from test1 where c1 = 'irfan'

--befor delete

delimiter //
create trigger to_delete_others_before
before delete on test1  for each row
begin
    insert into test3 values ("after delete" , sysdate(), 567654);
end; //

delete from test1 where c1 = 'digvijay'

delimiter //
create trigger to_delete_others_before_observation1
before delete on test1  for each row
begin
    insert into test2 values (old.c1, old.c2, old.c3);
end; //

select * from test2

delete from test1 where c1 = 'abc'


create table test11(
c1 varchar(50),
c2 date,
c3 int)

create table test12(
c1 varchar(50),
c2 date,
c3 int)

create table test13(
c1 varchar(50),
c2 date,
c3 int)

delimiter //
create trigger to_delete_others_before_observation11
before delete on test11  for each row
begin
    insert into test12(c1,c2,c3) values (old.c1, old.c2, old.c3);
end; //

insert into test11 values ("rahul" , sysdate(),3568)
select * from test11

delete from test11 where c1 = 'raj'

delimiter //
create trigger to_delete_others_before_observation11
after delete on test11  for each row
begin
    insert into test12(c1,c2,c3) values (old.c1, old.c2, old.c3);
end; //

delete from test11 where c1 = 'RANS'


--after_update

delimiter //
create trigger to_update_others_before_observation11
after update on test11  for each row
begin
    insert into test12(c1,c2,c3) values (old.c1, old.c2, old.c3);
end; //

select * from test11

insert into test11 values("sudh" , sysdate(), 3457)

update test11 set c1 = "after update" where c1 = "after delete" 

select * from test11

--befor_update

delimiter //
create trigger to_update_others_before_observation12
before update on test11  for each row
begin
    insert into test12(c1,c2,c3) values (old.c1, old.c2, old.c3);
end; //

update test11 set c1 = "insert new" where c1 = "sudh" 

