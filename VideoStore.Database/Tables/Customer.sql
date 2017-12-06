CREATE TABLE [dbo].[Customer]
(
	Id		INT IDENTITY (1,1) NOT NULL,
	EmailAddress	nvarchar(MAX) NOT NULL,
	Password		nvarchar(MAX) NOT NULL,
	CreateUserId    INT NULL,
    CreateDate      DATETIME      NULL,
    UpdateUserId    INT			NULL,
    UpdateDate      DATETIME      NULL, 
	CONSTRAINT PK_Customer PRIMARY KEY CLUSTERED (Id ASC),
)
