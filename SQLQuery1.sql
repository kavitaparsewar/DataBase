USE [FundooDB]
Go

-- procedure for Notes Table insert 

Alter Procedure spAddNote(
@Title nvarchar(max),
@Message nvarchar(max),
@Id bigint,
@Remainder datetime2(7),
@IsArchieve bit =0,
@IsPin bit=0,
@IsTrash bit=0
)

As begin 
BEGIN try 
Insert into Notes values (@Id,@Title,@Message,@Remainder,@IsArchieve,@IsPin,@IsTrash)
END try
begin catch
select
ERROR_NUMBER() as ErrorNumber,
ERROR_MESSAGE() as ErrorMessage
end catch 
end

Exec spAddNote 'books','welcome',2



--procedure for delete Note

create procedure spDeleteNote
(
@NoteId int 
)
As
Begin
Delete from Notes where NoteId=@NoteId
End

Exec spDeleteNote 11


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
End

Exec spUpdateNote 12,'Notebook','welcome',2


--procedure for getAll from Note

create procedure spGetAllNote
as
Begin
select * from Notes
End

