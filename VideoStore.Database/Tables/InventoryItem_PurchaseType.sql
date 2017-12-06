CREATE TABLE [dbo].[InventoryItem_PurchaseType]
(
	Id	INT IDENTITY (1,1) NOT NULL,
	PurchaseTypeId INT NOT NULL,
	InventoryItemId INT NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME NOT NULL,
    UpdateUserId    INT	NULL,
    UpdateDate      DATETIME NULL, 
	CONSTRAINT PK_InventoryItemPurchaseType PRIMARY KEY CLUSTERED (Id ASC),
	CONSTRAINT FK_InventoryItemPurchaseType_InventoryItem FOREIGN KEY (InventoryItemId) REFERENCES dbo.InventoryItem (Id),
	CONSTRAINT FK_InventoryItemPurchaseType_PurchaseType FOREIGN KEY (PurchaseTypeId) REFERENCES dbo.PurchaseType (Id),
)
