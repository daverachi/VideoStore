CREATE TABLE [dbo].[State]
(
	Id		INT IDENTITY (1,1) NOT NULL,
	Name	nvarchar(MAX) NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME NOT NULL,
    UpdateUserId    INT	NULL,
    UpdateDate      DATETIME NULL, 
	CONSTRAINT PK_State PRIMARY KEY CLUSTERED (Id ASC),
)
