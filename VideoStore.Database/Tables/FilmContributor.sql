CREATE TABLE [dbo].[FilmContributor]
(
	Id		INT IDENTITY (1,1) NOT NULL,
	FirstName	nvarchar(MAX) NOT NULL,
	LastName	nvarchar(MAX) NOT NULL,
	FilmContributorTypeId INT NOT NULL,
	CreateUserId    INT NOT NULL,
    CreateDate      DATETIME NOT NULL,
    UpdateUserId    INT	NULL,
    UpdateDate      DATETIME NULL, 
	CONSTRAINT PK_FilmContributor PRIMARY KEY CLUSTERED (Id ASC),
	CONSTRAINT FK_FilmContributor_FilmContributorItem FOREIGN KEY (FilmContributorTypeId) REFERENCES dbo.FilmContributorType (Id),
)
