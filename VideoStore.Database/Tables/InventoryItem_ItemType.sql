CREATE TABLE [dbo].[InventoryItem_ItemType]
(
	Id	INT IDENTITY (1,1) NOT NULL,
	ItemTypeId INT NOT NULL,
	InventoryItemId INT NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME NOT NULL,
    UpdateUserId    INT	NULL,
    UpdateDate      DATETIME NULL, 
	CONSTRAINT PK_InventoryItemItemType PRIMARY KEY CLUSTERED (Id ASC),
	CONSTRAINT FK_InventoryItemItemType_InventoryItem FOREIGN KEY (InventoryItemId) REFERENCES dbo.InventoryItem (Id),
	CONSTRAINT FK_InventoryItemItemType_ItemType FOREIGN KEY (ItemTypeId) REFERENCES dbo.ItemType (Id),
)
