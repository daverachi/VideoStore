CREATE TABLE [dbo].[RentalHistory]
(
	Id	INT IDENTITY (1,1) NOT NULL,
	CustomerId		 INT NOT NULL,
	InventoryItemId INT NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME NOT NULL,
    UpdateUserId    INT	NULL,
    UpdateDate      DATETIME NULL, 
	CONSTRAINT PK_RentalHistory PRIMARY KEY CLUSTERED (Id ASC),
	CONSTRAINT FK_RentalHistory_InventoryItem FOREIGN KEY (InventoryItemId) REFERENCES dbo.InventoryItem (Id),
	CONSTRAINT FK_RentalHistory_Customer FOREIGN KEY (CustomerId) REFERENCES dbo.Customer (Id),
)
