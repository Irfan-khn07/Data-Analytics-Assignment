--pivot table

create database pivote
use pivote

create table order_table(
order_id int,
employee_id int,
vendor_id int)

insert into order_table values (1, 289, 1200),
(2, 120, 1340),
(3, 299, 1290),
(4, 119, 1550),
(5, 129, 1250),
(6, 389, 1500),
(7, 200, 1600),
(8, 280, 2200),
(9, 219, 140),
(10, 189, 3200)

select * from order_table

create table order_table1(
order_id int,
employee_id int,
vendor_id int)

insert into order_table1 values (1, 289, 1200),
(2, 120, 1340),
(3, 299, 1290),
(4, 119, 1550),
(5, 129, 1250),
(6, 389, 1500)

select vendor_id,
if(employee_id = 289 , 1 , null) as emp289,
if(employee_id = 120 , 1 , null) as emp120,
if(employee_id = 299 , 1 , null) as emp299,
if(employee_id = 199 , 1 , null) as emp119,
if(employee_id = 129 , 1 , null) as emp129,
if(employee_id = 389 , 1 , null) as emp389
from order_table1 ; 


