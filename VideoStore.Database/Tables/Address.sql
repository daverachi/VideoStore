CREATE TABLE [dbo].[Address]
(
	Id		INT IDENTITY (1,1) NOT NULL,
	AddressLine1	nvarchar(MAX) NOT NULL,
	AddressLine2	nvarchar(MAX) NOT NULL,
	City	nvarchar(MAX) NOT NULL,
	StateId	INT NOT NULL,
	Zipcode	nvarchar(10) NOT NULL,
	AddressTypeId INT NOT NULL,
	CreateUserID    INT NOT NULL,
    CreateDate      DATETIME      NOT NULL,
    UpdateUserID    INT			NULL,
    UpdateDate      DATETIME      NULL, 
	CONSTRAINT PK_Address PRIMARY KEY CLUSTERED (Id ASC),
	CONSTRAINT FK_Address_AddressType FOREIGN KEY (AddressTypeId) REFERENCES dbo.AddressType (Id),
)
