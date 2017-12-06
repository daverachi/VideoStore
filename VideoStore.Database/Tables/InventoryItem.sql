CREATE TABLE [dbo].[InventoryItem]
(
	Id		INT IDENTITY (1,1) NOT NULL,
	ItemName	nvarchar(150) NOT NULL,
	Description	nvarchar(MAX) NOT NULL,
	Length			INT NULL,
	ItemTypeId	INT NOT NULL,
	PurchaseTypeId	INT NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME      NOT NULL,
    UpdateUserId    INT			NULL,
    UpdateDate      DATETIME      NULL, 
	CONSTRAINT PK_InventoryItem PRIMARY KEY CLUSTERED (Id ASC),
)
