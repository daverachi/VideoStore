CREATE TABLE [dbo].[PaymentInformation]
(
	Id				INT IDENTITY (1,1) NOT NULL,
	CustomerId		INT	NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME NOT NULL,
    UpdateUserId    INT	NULL,
    UpdateDate      DATETIME NULL, 
	CONSTRAINT PK_PaymentInformation PRIMARY KEY CLUSTERED (Id ASC),
	CONSTRAINT FK_PaymentInformation_Customer FOREIGN KEY (CustomerId) REFERENCES dbo.Customer (Id),
)
