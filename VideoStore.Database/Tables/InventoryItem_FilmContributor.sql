CREATE TABLE [dbo].[InventoryItem_FilmContributor]
(
	Id	INT IDENTITY (1,1) NOT NULL,
	FilmContributorId INT NOT NULL,
	InventoryItemId INT NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME NOT NULL,
    UpdateUserId    INT	NULL,
    UpdateDate      DATETIME NULL, 
	CONSTRAINT PK_InventoryItemFilmContributor PRIMARY KEY CLUSTERED (Id ASC),
	CONSTRAINT FK_InventoryItemFilmContributor_InventoryItem FOREIGN KEY (InventoryItemId) REFERENCES dbo.InventoryItem (Id),
	CONSTRAINT FK_InventoryItemFilmContributor_FilmContributor FOREIGN KEY (FilmContributorId) REFERENCES dbo.FilmContributor (Id),
)
