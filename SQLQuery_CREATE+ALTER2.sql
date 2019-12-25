
CREATE TABLE dbo.StudentsCourses
(
  StudentsCourseId int IDENTITY (1,1) PRIMARY KEY NOT NULL,
  StudentId int NOT NULL,
  CourseId int NOT NULL,
  CreateDate datetime NOT NULL DEFAULT ((getdate())),
  EditDate datetime NOT NULL DEFAULT ((getdate()))
);

ALTER TABLE [dbo].[StudentsCourses] WITH CHECK ADD CONSTRAINT [FK_StudentsCourses_Students] FOREIGN KEY ([StudentId])
REFERENCES [dbo].[Students]([StudentId]);

ALTER TABLE [dbo].[StudentsCourses] WITH CHECK ADD CONSTRAINT [FK_StudentsCourses_Courses] FOREIGN KEY ([CourseId])
REFERENCES [dbo].[Courses]([CourseId]);