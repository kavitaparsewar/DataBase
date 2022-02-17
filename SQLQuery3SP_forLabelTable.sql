USE [FundooDB]
Go
--create procedure for Label Table
Create Procedure spAddLabel
As
BEGIN
select * from Labels
END

Go
Create PROCEDURE spLabelUpdate
As
BEGIN
Select * from Labels
END

go
ALTER PROCEDURE [dbo].[spLabelUpdate]
	-- Add the parameters for the stored procedure here
	@LabelId int , 
   @LabelName varchar(20),  
   @Noteid int(20),  
   @Id int(10) 
  
AS
BEGIN	
	Update Labels 
   set
   LabelId=@LabelId,  
   LabelName=@LabelName,  
    NoteId= @NoteId, 
   Id=@Id,  
   where LableId=@NoteId 	
END




