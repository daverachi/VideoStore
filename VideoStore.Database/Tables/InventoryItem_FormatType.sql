CREATE TABLE [dbo].[InventoryItem_FormatType]
(
	Id	INT IDENTITY (1,1) NOT NULL,
	FormatTypeId INT NOT NULL,
	InventoryItemId INT NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME NOT NULL,
    UpdateUserId    INT	NULL,
    UpdateDate      DATETIME NULL, 
	CONSTRAINT PK_InventoryItemFormatType PRIMARY KEY CLUSTERED (Id ASC),
	CONSTRAINT FK_InventoryItemFormatType_InventoryItem FOREIGN KEY (InventoryItemId) REFERENCES dbo.InventoryItem (Id),
	CONSTRAINT FK_InventoryItemFormatType_FormatType FOREIGN KEY (FormatTypeId) REFERENCES dbo.FormatType (Id),
)
