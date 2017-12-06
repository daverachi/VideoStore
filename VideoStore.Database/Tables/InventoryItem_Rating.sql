CREATE TABLE [dbo].[InventoryItem_Rating]
(
	Id	INT IDENTITY (1,1) NOT NULL,
	InventoryItemId INT NOT NULL,
	Rating			nvarchar(MAX) NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME NOT NULL,
    UpdateUserId    INT	NULL,
    UpdateDate      DATETIME NULL, 
	CONSTRAINT PK_InventoryItem_Rating PRIMARY KEY CLUSTERED (Id ASC),
	CONSTRAINT FK_InventoryItem_Rating_InventoryItem FOREIGN KEY (InventoryItemId) REFERENCES dbo.InventoryItem (Id),
)
