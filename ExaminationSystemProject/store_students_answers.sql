USE [ExaminationSystem.bacpac]
GO
/****** Object:  StoredProcedure [dbo].[Store_Students_Answers]    Script Date: 4/7/2023 4:26:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE [dbo].[Store_Students_Answers]
@Exams_ID bigint,@Quest_id bigint , @Student_ID bigint,@StudentAnswer nvarchar(50)
AS
begin 
declare @mark float
SET @mark = 0

Select @mark = Degree from Questions 
where ID= @Quest_id and Answer = @StudentAnswer

insert into Student_Answers(ExamID,QuestID,StudID,StudAnswer,mark)
values(@Exams_ID,@Quest_id,@Student_ID,@StudentAnswer,@mark)
End
SELECT * FROM[dbo].[Student_Answers]