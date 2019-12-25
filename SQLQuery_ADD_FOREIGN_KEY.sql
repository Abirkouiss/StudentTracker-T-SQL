ALTER TABLE [dbo].[EmailAddresses] WITH CHECK ADD CONSTRAINT [FK_EmailAddresses_Students] FOREIGN KEY ([StudentId])
REFERENCES [dbo].[Students]([StudentId]);
Go