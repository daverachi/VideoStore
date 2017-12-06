CREATE TABLE [dbo].[RelatedItem]
(
	Id	INT IDENTITY (1,1) NOT NULL,
	InventoryItem1Id INT NOT NULL,
	InventoryItem2Id INT NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME NOT NULL,
    UpdateUserId    INT	NULL,
    UpdateDate      DATETIME NULL, 
	CONSTRAINT PK_RelatedItem PRIMARY KEY CLUSTERED (Id ASC),
	CONSTRAINT FK_RelatedItem_InventoryItem1 FOREIGN KEY (InventoryItem1Id) REFERENCES dbo.InventoryItem (Id),
	CONSTRAINT FK_RelatedItem_InventoryItem2 FOREIGN KEY (InventoryItem2Id) REFERENCES dbo.InventoryItem (Id),
)
