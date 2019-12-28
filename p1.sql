drop procedure if exists insertData;
delimiter $$
create procedure insertData(i int , fname varchar(45), lname varchar(45) ,d date,e varchar(128))
begin
declare x int;
select max(id) into x from student;
set x:=x+1;
insert into student values(x,fname,lname,d,e);
end $$
delimiter;
