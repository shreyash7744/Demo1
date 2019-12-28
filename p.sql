/* drop procedure if exists insertData;
delimiter $
create procedure insertData(i int, fname varchar(45), lname varchar(45), d date, e varchar(128))
begin
declare x int;
select max(id) into x from student;
set x:=x+1;
insert into student values(x,fname,lname,d,e);
end $
delimiter ;
*/
drop procedure if exists updateData;
 delimiter $
 create procedure updateData(i int , nemail varchar(128))
 begin 
     
   if i in (select id from student)
   then
   update student set student.emailID = nemail where i=student.id;
   else 
   select "Record not found";
   end if;
   end $
   delimiter ;