CREATE TABLE [dbo].[FileStore]
(
	Id		INT IDENTITY (1,1) NOT NULL,
	FileURI		nvarchar(MAX) NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME NOT NULL,
    UpdateUserId    INT	NULL,
    UpdateDate      DATETIME NULL, 
	CONSTRAINT PK_FileStore PRIMARY KEY CLUSTERED (Id ASC),
)
