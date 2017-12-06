CREATE TABLE [dbo].[Customer_Address]
(
	Id	INT IDENTITY (1,1) NOT NULL,
	CustomerId INT NOT NULL,
	AddressId INT NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME NOT NULL,
    UpdateUserId    INT	NULL,
    UpdateDate      DATETIME NULL, 
	CONSTRAINT PK_CustomerAddress PRIMARY KEY CLUSTERED (Id ASC),
	CONSTRAINT FK_CustomerAddress_Customer FOREIGN KEY (CustomerId) REFERENCES dbo.Customer (Id),
	CONSTRAINT FK_CustomerAddress_Address FOREIGN KEY (AddressId) REFERENCES dbo.Address (Id),
)
