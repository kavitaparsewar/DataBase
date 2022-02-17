create Database Employee

create table emp (id int primary key,Fname varchar(20),Lname varchar(20))

insert into emp(id,Fname,Lname) values(5,'kamal','biradar')

select * from emp

create table emp_audit
(
id int,
Inserted_By varchar(100)
)
Go

select * from emp_audit

create trigger TRG_Insert_Audit
on emp
for insert 
as
begin
declare @id int

select @id=id from inserted 
insert into emp_audit (id,Inserted_By)
values(@id,ORIGINAL_LOGIN())

print 'Insert Trigger executed'
End
Go


create trigger TRG_Delete_Rule
on emp
for delete
as
begin
   Rollback
   print'****'
   print'you cannot delete records from this table'
   print'****'
   end
   go


   delete from emp



   create trigger TRG_Update
   on emp
   for update
   as
   begin

   if((select count(*)from inserted)>1)
   rollback tran

   if exists(select * from inserted 
    left )



	CREATE TRIGGER TRG_Update
AFTER UPDATE
ON emp FOR EACH ROW
trigger_body