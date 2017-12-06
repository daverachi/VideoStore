CREATE TABLE [dbo].[ItemType]
(
	Id		INT IDENTITY (1,1) NOT NULL,
	TypeName		nvarchar(MAX) NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME NOT NULL,
    UpdateUserId    INT	NULL,
    UpdateDate      DATETIME NULL, 
	CONSTRAINT PK_ItemType PRIMARY KEY CLUSTERED (Id ASC),
)
