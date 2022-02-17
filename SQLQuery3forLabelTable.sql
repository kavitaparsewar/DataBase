USE [FundooDB]
Go

--create procedure for Label Table
Create Procedure spAddLabel
As
BEGIN
select * from Labels
END


-- procedure for Labels Table insert

create Procedure spAddLabel
(
@LabelName nvarchar(max),
@NoteId bigint,
 @Id bigint
)
As begin
Begin try 
Insert into Labels values (@LabelName,@Noteid,@Id)   
End try
begin catch
select
ERROR_MESSAGE() as ErrorNumber,
ERROR_MESSAGE() as ErrorMessage
end catch
end


Exec spAddLabel 'Birthday','6',1



--procedure for update Labels

create procedure spUpdateLabel
(
@LabelName nvarchar(max),
@NoteId bigint,
 @Id bigint,
 @LabelId bigint
)
as
Begin
Update Labels 
set
LabelName=@LabelName,NoteId=@NoteId,Id=@Id where LabelId=@LabelId
End


Exec spUpdateLabel 'welcome to home',7,2,3

--select * from Labels


--procedure for delete Label

create procedure spDeleteLabel
(
@LabelId bigint
)
As
Begin
Delete from Labels where LabelId=@LabelId
End

Exec spDeleteLabel 4






--procedure for getAll from Label

create procedure spGetAllLabel
as
Begin
select * from Labels
End




--create function find Title by labelid

Create Function GetLabel (@LabelId bigint)
returns varchar(20)
as
begin
return 
(
select LabelName from Labels where LabelId=@LabelId
)
End

Print dbo.GetLabel(3);


--get all labels of that perticular id

create Function GetAllLabels (@LabelId bigint)
returns table
As
return
select * from Labels where LabelId<=@LabelId

select * from GetAllLabels (3);





-- Implementation of cursor on Label Table of FundooDB

Use FundooDB
SET NOCOUNT ON;
DECLARE @LabelId int ,@LabelName varchar(20)
PRINT '-------- Label Details --------';
DECLARE label_cursor CURSOR FOR
SELECT LabelId,LabelName FROM Labels
OPEN Label_cursor
FETCH NEXT FROM Label_cursor
INTO @LabelId,@LabelName
print 'LabelId   LabelName'
WHILE @@FETCH_STATUS = 0
BEGIN
    print CAST(@LabelId as varchar(50)) +'           '+
		cast(@LabelName as varchar(50))
    FETCH NEXT FROM Label_cursor
INTO @LabelId, @LabelName
END
CLOSE Label_cursor;
DEALLOCATE Label_cursor;
