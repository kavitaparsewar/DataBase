

create Database Employee

create table empIndex (id int primary key,Fname varchar(20),Lname varchar(20),salary varchar(20))


--insert index
insert into empIndex(id,Fname,Lname,salary) values(7,'rutu','patils',11000)

--show all table data
select * from empIndex


--create index
create Index Ix_empIndex
on
empIndex (salary ASC)

--Help index
sp_HelpIndex empIndex


-- drop index
drop index empIndex.Ix_empIndex