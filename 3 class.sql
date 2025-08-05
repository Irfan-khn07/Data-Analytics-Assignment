create database if not exists sales
use sales

CREATE TABLE sales (
	order_id VARCHAR(15) NOT NULL, 
	order_date VARCHAR(15) NOT NULL, 
	ship_date VARCHAR(15) NOT NULL, 
	ship_mode VARCHAR(14) NOT NULL, 
	customer_name VARCHAR(22) NOT NULL, 
	segment VARCHAR(11) NOT NULL, 
	state VARCHAR(36) NOT NULL, 
	country VARCHAR(32) NOT NULL, 
	market VARCHAR(6) NOT NULL, 
	region VARCHAR(14) NOT NULL, 
	product_id VARCHAR(16) NOT NULL, 
	category VARCHAR(15) NOT NULL, 
	sub_category VARCHAR(11) NOT NULL, 
	product_name VARCHAR(127) NOT NULL, 
	sales DECIMAL(38, 0) NOT NULL, 
	quantity DECIMAL(38, 0) NOT NULL, 
	discount DECIMAL(38, 3) NOT NULL, 
	profit DECIMAL(38, 8) NOT NULL, 
	shipping_cost DECIMAL(38, 2) NOT NULL, 
	order_priority VARCHAR(8) NOT NULL, 
	`year` DECIMAL(38, 0) NOT NULL
);
SET SESSION sql_mode = ''

load data infile 
'D:/sales_data_final.csv'
into table sales 
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows 

select * from sales

select str_to_date(order_date,'%m/%d/%y') from sales

alter table sales
add column order_date_new  date after order_date

update sales
set order_date_new = str_to_date(order_date,'%m/%d/%Y')

alter table sales
add column ship_date_new date after ship_date

update sales
set ship_date_new = str_to_date(ship_date, '%m/%d/%Y')

select * from sales

SET SQL_SAFE_UPDATES = 0;

select * from sales where ship_date_new = '2011-01-05'
select * from sales where ship_date_new > '2011-01-05'
select * from sales where ship_date_new < '2011-01-05'
select * from sales where ship_date_new between '2011-01-05' and '2011-08-30'
select now()
select curdate()
select curtime()

select * from sales where ship_date_new < date_sub(now() , interval 1 week)

select date_sub(now() , interval 1 week)
select date_sub(now() , interval 30 day)
select date_sub(now() , interval 30 year)
select year(now())
select dayname('2022-09-20 21:10:30')

alter table sales
add column flag date after order_id

update sales
set flag = now()

select  * from sales

ALTER TABLE sales
modify column year datetime;

alter table sales
modify column Year_New int;

alter table sales
modify column Month_New int;

alter table sales
modify column Day_New int;


update sales set Month_new= month(order_date_new)
update sales set day_new= day(order_date_new)
update sales set year_new= year(order_date_new)

SET SQL_SAFE_UPDATES = 0;

select * from sales limit 5

select year_new , avg(sales) from sales group by year_new

select year_new , sum(sales) from sales group by year_new

select year_new , min(sales) from sales group by year_new

select year_new , max(sales) from sales group by year_new

select year_new , sum(quantity) from sales group by year_new

select (discount + shipping_cost) as CTC from sales;
select (sales*discount + shipping_cost) as CTC from sales;

select order_id, discount, if(discount > 0 , 'yes' , 'no') as discount_flag from sales

alter table sales
add column discount_flag varchar(20) after discount

update sales
set discount_flag = if(discount > 0, 'yes' , 'no');

select discount_flag , count(*) from sales group by discount_flag



DELIMITER &&
CREATE FUNCTION add_to_col(a int)
returns int
deterministic
begin
declare b int;
set b = a + 10;
return b;
end && 
--$$ $$ &&  && both use
select add_to_col(10)

select quantity , add_to_col(quantity) from sales


DELIMITER $$
create function final_profits(profit int , discount int)
returns int
deterministic
begin
declare final_profit int;
set final_profit = profit - discount;
return final_profit;
end $$

select profit , discount , final_profits(profit, discount) from sales;

DELIMITER $$
create function final_profits_real(profit decimal , discount decimal(20,6) , sales decimal(20,6))
returns int
deterministic
begin
declare final_profit int;
set final_profit = profit - sales * discount;
return final_profit;
end $$


select profit , discount , sales,  final_profits_real(profit, discount, sales) from sales;

--int ot str

DELIMITER $$
CREATE FUNCTION int_to_str (a int)
returns varchar(30)
DETERMINISTIC
BEGIN
DECLARE b VARCHAR(30);
set b = a;
return b;
end $$

select int_to_str(30)

select quantity , int_to_str(quantity) from sales;


select max(sales), min(sales) from sales 
1 - 100 - super affordable product
100 - 300 - moderate price
600 + - expensive


delimiter &&
create function mark_sales(sales int)
returns varchar(30)
DETERMINISTIC
begin
declare flag_sales varchar(30);
if sales < 100 then 
     set  flag_sales = "super affordable product" ;
elseif sales > 100 and sales < 300 then     
     set   flag_sales = "affordable"  ;
elseif sales > 300 and sales < 600 then
     set   flag_sales = "moderate price"  ;
else
    set flag_sales = "expensive"	;
end if;
return  flag_sales ;
end &&

select mark_sales(20)
select mark_sales(200)

select sales , mark_sales(sales) from sales;

--loop 1 to 100

create table loop_table(val int)


Delimiter $$
create procedure insert_data()
begin
set @var = 10 ;
genrate_data : loop
insert into loop_table values (@var);
set @var = @var + 1 ;
if @var = 100 then
     leave genrate_data;
end if ;
end loop genrate_data ;   
end $$ 


call insert_data()

select * from loop_table


Delimiter $$
create procedure insert_data()
begin
set @var = 10 ;
genrate_data : loop
if @var %3 = 0 then
set @var = @var + 1 ;
insert into loop_table values (@var);
if @var = 100 then
     leave genrate_data;
end if ;
end if ;
end loop genrate_data ;   
end $$

--Task
1. create a loop for a table to insert a recod into a table for two columns in fist coulmn you have to insert a data ranging from 1
2. create a user defind fun to find out date differance in number of days
3. create a UDF to find out a log base 10 of any number.
4. create a UDF whic will be able to check a total number of records avaible in your table
5. create a procedure to find out sedcond 5th higessr profit in your sales table you dont have to use rank and windowing funcation
--
