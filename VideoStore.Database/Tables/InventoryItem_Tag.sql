CREATE TABLE [dbo].[InventoryItem_Tag]
(
	Id	INT IDENTITY (1,1) NOT NULL,
	InventoryItemId INT NOT NULL,
	Tag			nvarchar(MAX) NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME NOT NULL,
    UpdateUserId    INT	NULL,
    UpdateDate      DATETIME NULL, 
	CONSTRAINT PK_InventoryItem_Tag PRIMARY KEY CLUSTERED (Id ASC),
	CONSTRAINT FK_InventoryItem_Tag_InventoryItem FOREIGN KEY (InventoryItemId) REFERENCES dbo.InventoryItem (Id),
)
