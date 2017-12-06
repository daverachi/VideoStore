CREATE TABLE [dbo].[InventoryItem_FileStore]
(
	Id	INT IDENTITY (1,1) NOT NULL,
	FileStoreId INT NOT NULL,
	InventoryItemId INT NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME NOT NULL,
    UpdateUserId    INT	NULL,
    UpdateDate      DATETIME NULL, 
	CONSTRAINT PK_InventoryItemInventoryFileStore PRIMARY KEY CLUSTERED (Id ASC),
	CONSTRAINT FK_InventoryItemInventoryFileStore_InventoryItem FOREIGN KEY (InventoryItemId) REFERENCES dbo.InventoryItem (Id),
	CONSTRAINT FK_InventoryItemInventoryFileStore_FileStore FOREIGN KEY (FileStoreId) REFERENCES dbo.FileStore (Id),

)
