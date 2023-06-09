USE [ExaminationSystem.bacpac]
GO
/****** Object:  StoredProcedure [dbo].[Calc_students_grades]    Script Date: 4/7/2023 4:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER procedure [dbo].[Calc_students_grades]
@Exams_ID bigint,@Student_ID bigint,@Final_result float OUTPUT
As
begin
--DECLARE @Final_result float 
SET @Final_result=0
SELECT @Final_result = sum(mark)
FROM Student_Answers
WHERE ExamID= @Exams_ID and StudID = @Student_ID;
return @Final_result
end