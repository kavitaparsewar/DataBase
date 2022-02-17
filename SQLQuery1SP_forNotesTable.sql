USE [FundooDB]
Go

-- procedure for Notes Table 

Alter Procedure spAddNote(
@Title nvarchar(max),
@Message nvarchar(max),
@Id bigint,
--@Remainder datetime2(7),
@IsArchieve bit =0,
@IsPin bit=0,
@IsTrash bit=0
)

As
BEGIN
set nocount on ;
declare @NoteId as bigint
Insert into Notes (Id,Title,Message,Remainder,IsArchieve,IsPin,IsTrash)values(@Id,@Title,@Message,getdate(),@IsArchieve,@IsPin,@IsTrash)
set @NoteId=SCOPE_IDENTITY()
select * from Notes where NoteId=@NoteId
END

spAddNote 'books','welcome',2



--procedure for delete Note
create procedure spDeleteNote
(
@NoteId int 
)
As
Begin
Delete from Notes where NoteId=@NoteId
End

spDeleteNote 11

select * from Notes


--procedure for update Note

create procedure spUpdateNote
(
@NoteId bigint,
@Title nvarchar(max),
@Message nvarchar(max),
@Id bigint,
--@Remainder datetime2(7),
@IsArchieve bit =0,
@IsPin bit=0,
@IsTrash bit=0
)
as
Begin
Update Notes 
set
Title=@Title,Message=@Message,IsArchieve=@IsArchieve,IsPin=@IsPin,IsTrash=@IsTrash,Remainder=getdate()where NoteId=@NoteId
select * from Notes where NoteId=@NoteId
End

spUpdateNote 12,'Notebook','welcome',2


--procedure for getAll from Note

create procedure spGetAllNote
as
Begin
select * from Notes
End



--create function find Title by id

Create Function GetNote (@NoteId bigint)
returns varchar(20)
as
begin
return 
(
select Title from Notes where NoteId=@NoteId
)
End

Print dbo.GetNote(3);


--get all notes of that perticular id

create Function GetAllNotes (@NoteId bigint)
returns table
As
return
select * from Notes where NoteId<=@NoteId 

select * from GetAllNotes (3);

