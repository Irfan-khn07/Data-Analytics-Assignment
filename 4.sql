create database win_fun
use win_fun


create table ineuron_studetns(
student_id int,
student_batch varchar(40),
student_name varchar(40),
student_strem varchar(40),
student_marks int,
student_mail_id varchar(50))

insert into ineuron_studetns values(101, 'fsda' , 'irfan' , 'cs' , 80 , 'irafnkhhn07@gmail.com')

select * from ineuron_studetns

insert into ineuron_studetns values(100, 'fsda' , 'irfan' , 'cs' , 80 , 'irafnkhhn07@gmail.com'),
101, 'fsda' , 'irfan' , 'cs' , 80 , 'irafnkhhn07@gmail.com'),
101, 'fsda' , 'irfan' , 'cs' , 80 , 'irafnkhhn07@gmail.com'),
101, 'fsda' , 'irfan' , 'cs' , 80 , 'irafnkhhn07@gmail.com'),: Running...
[6, 17:38:50] create database win_fun
use win_fun

create table ineuron_studetns(
student_id int,
student_batch varchar(40),
student_name varchar(40),
student_strem varchar(40),
student_marks int,
student_mail_id varchar(50))

insert into ineuron_studetns values(101, 'fsda' , 'irfan' , 'cs' , 80 , 'irafnkhhn07@gmail.com')

select * from ineuron_studetns

insert into ineuron_studetns values(100, 'fsda' , 'hasan' , 'cs' , 67 , 'ikr07@gmail.com'),
(102, 'fsde' , 'raj' , 'cs' , 46 , 'fnkhhn07@gmail.com'),
(103, 'fsde' , 'digvijay' , 'cs' , 54 , 'irnkhhn07@gmail.com'),
(104, 'fsbc' , 'himanshu' , 'cs' , 60 , 'irafnkhhn07@gmail.com'),
(105, 'fsda' , 'ibrahim' , 'me' , 49 , 'iraf07@gmail.com'),
(106, 'fsda' , 'aftab' , 'cs' , 51 , 'denhn07@gmail.com'),
(107, 'fsde' , 'rahul' , 'cs' , 39 , 'ir7@gmail.com'),
(108, 'fsde' , 'ikramul' , 'me' , 32 , 'rajhhn07@gmail.com'),
(109, 'fsbc' , 'rohit' , 'cs' , 61 , 'sonahn07@gmail.com'),
(110, 'fsda' , 'rajan' , 'cs' , 66 , 'ira07@gmail.com'),
(111, 'fsda' , 'irfan' , 'me' , 20 , 'hashn07@gmail.com'),
(112, 'fsda' , 'irfan' , 'cs' , 40 , 'kamfnkhhn07@gmail.com'),
(113, 'fsde' , 'irfan' , 'cs' , 55 , 'hufnkhhn07@gmail.com'),
(114, 'fsbc' , 'irfan' , 'cs' , 29 , 'digfnkhhn07@gmail.com'),
(115, 'fsda' , 'irfan' , 'me' , 21 , 'dkhn07@gmail.com'),
(116, 'fsbc' , 'irfan' , 'cs' , 27 , 'irafnkhhn07@gmail.com'),
(117, 'fsda' , 'irfan' , 'me' , 19 , 'soafnkhhn07@gmail.com'),
(118, 'fsda' , 'irfan' , 'cs' , 23 , 'hakunkhhn07@gmail.com'),
(119, 'fsda' , 'irfan' , 'cs' , 41 , 'ikfnkhhn07@gmail.com'),
(119, 'fsda' , 'irfan' , 'me' , 66 , 'ibjnkhhn07@gmail.com'),
(120, 'fsbc' , 'irfan' , 'me' , 54 , 'hannkhhn07@gmail.com'): Running...
[10, 17:52:47] insert into ineuron_studetns values(100, 'fsda' , 'hasan' , 'cs' , 67 , 'ikr07@gmail.com'),
(102, 'fsde' , 'raj' , 'cs' , 46 , 'fnkhhn07@gmail.com'),
(103, 'fsde' , 'digvijay' , 'cs' , 54 , 'irnkhhn07@gmail.com'),
(104, 'fsbc' , 'himanshu' , 'cs' , 60 , 'irafnkhhn07@gmail.com'),
(105, 'fsda' , 'ibrahim' , 'me' , 49 , 'iraf07@gmail.com'),
(106, 'fsda' , 'aftab' , 'cs' , 51 , 'denhn07@gmail.com'),
(107, 'fsde' , 'rahul' , 'cs' , 39 , 'ir7@gmail.com'),
(108, 'fsde' , 'ikramul' , 'me' , 32 , 'rajhhn07@gmail.com'),
(109, 'fsbc' , 'rohit' , 'cs' , 61 , 'sonahn07@gmail.com'),
(110, 'fsda' , 'rajan' , 'cs' , 66 , 'ira07@gmail.com'),
(111, 'fsda' , 'irfan' , 'me' , 20 , 'hashn07@gmail.com'),
(112, 'fsda' , 'irfan' , 'cs' , 40 , 'kamfnkhhn07@gmail.com'),
(113, 'fsde' , 'irfan' , 'cs' , 55 , 'hufnkhhn07@gmail.com'),
(114, 'fsbc' , 'irfan' , 'cs' , 29 , 'digfnkhhn07@gmail.com'),
(115, 'fsda' , 'irfan' , 'me' , 21 , 'dkhn07@gmail.com'),
(116, 'fsbc' , 'irfan' , 'cs' , 27 , 'irafnkhhn07@gmail.com'),
(117, 'fsda' , 'irfan' , 'me' , 19 , 'soafnkhhn07@gmail.com'),
(118, 'fsda' , 'irfan' , 'cs' , 23 , 'hakunkhhn07@gmail.com'),
(119, 'fsda' , 'irfan' , 'cs' , 41 , 'ikfnkhhn07@gmail.com'),
(119, 'fsda' , 'irfan' , 'me' , 66 , 'ibjnkhhn07@gmail.com'),
(120, 'fsbc' , 'irfan' , 'me' , 54 , 'hannkhhn07@gmail.com')

select * from (select student_id , student_batch , student_strem , student_marks ,
row_number() over ( partition by student_batch order by student_marks desc ) as 'row_number',
rank() over (  partition by student_batch order by student_marks desc ) as 'row_rank' 
from ineuron_studetns) as test where row_rank = 1: 4 row(s) returned


select * from(select student_id , student_batch , student_strem , student_marks ,
row_number() over (partition by student_batch order by student_marks desc ) as 'row_number',
rank() over ( partition by student_batch order by student_marks desc ) as 'row_rank' ,
dense_rank() over (partition by student_batch order by student_marks desc) as 'dense_rank'
from ineuron_studetns) as test where `dense_rank` =3

select * from(select student_id , student_batch , student_strem , student_marks ,
row_number() over (partition by student_batch order by student_marks desc ) as 'row_number',
rank() over ( partition by student_batch order by student_marks desc ) as 'row_rank' ,
dense_rank() over (partition by student_batch order by student_marks desc) as 'dense_rank'
from ineuron_studetns) as test where `dense_rank` in (1, 2, 3)


