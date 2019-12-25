CREATE TABLE dbo.Locations
(
  LocationId int IDENTITY (1,1) PRIMARY KEY NOT NULL,
  Name nvarchar(25) NOT NULL DEFAULT  ('Room'),
  CreateDate datetime NOT NULL DEFAULT ((getdate())),
  EditDate datetime NOT NULL DEFAULT ((getdate()))
);

CREATE TABLE dbo.Courses
(
   CourseId int IDENTITY (1,1) PRIMARY KEY NOT NULL,
   CourseCode nvarchar(10) NOT NULL DEFAULT ('xxxx-xxxx'),
   CourseName nvarchar(25) NOT NULL DEFAULT (''),
   LocationId int NOT NULL DEFAULT(1),
   CreateDate datetime NOT NULL DEFAULT ((getdate())),
  EditDate datetime NOT NULL DEFAULT ((getdate()))

);

ALTER TABLE [dbo].[Courses] WITH CHECK ADD CONSTRAINT [FK_Courses_Locations] FOREIGN KEY ([LocationId])
REFERENCES [dbo].[Locations]([LocationId]);