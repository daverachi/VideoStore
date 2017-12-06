CREATE TABLE [dbo].[InventoryItem_Review]
(
	Id	INT IDENTITY (1,1) NOT NULL,
	CustomerId		INT NULL,
	InventoryItemId INT NOT NULL,
	Review			nvarchar(MAX) NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME NOT NULL,
    UpdateUserId    INT	NULL,
    UpdateDate      DATETIME NULL, 
	CONSTRAINT PK_InventoryItem_Review PRIMARY KEY CLUSTERED (Id ASC),
	CONSTRAINT FK_InventoryItem_Review_InventoryItem FOREIGN KEY (InventoryItemId) REFERENCES dbo.InventoryItem (Id),
	CONSTRAINT FK_InventoryItem_Review_Customer FOREIGN KEY (CustomerId) REFERENCES dbo.Customer (Id),
)
