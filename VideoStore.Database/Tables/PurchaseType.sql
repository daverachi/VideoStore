CREATE TABLE [dbo].[PurchaseType]
(
	Id		INT IDENTITY (1,1) NOT NULL,
	TypeName		nvarchar(MAX) NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME NOT NULL,
    UpdateUserId    INT	NULL,
    UpdateDate      DATETIME NULL, 
	CONSTRAINT PK_PurchaseType PRIMARY KEY CLUSTERED (Id ASC),
)
