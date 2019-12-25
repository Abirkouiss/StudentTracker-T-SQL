CREATE TABLE dbo.EmailAddresses 
(
    EmailAddressesIs int IDENTITY (1,1) PRIMARY KEY NOT NULL,
	StudentId int NOT NULL,
	URI nvarchar(255) NOT NULL DEFAULT ('abir@home.com'),
	CreateDate datetime NOT NULL DEFAULT ((getdate())),
	EditDtae datetime NOT NULL DEFAULT ((getdate()))


);