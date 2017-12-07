----------------------[[Customer]]-------------------------
SET NOCOUNT ON
SET IDENTITY_INSERT [dbo].[Customer] ON
MERGE INTO 
	dbo.Customer 
WITH (HOLDLOCK) AS target
USING (VALUES
	(1, 'Hodor@Hodor.com', 'hodorhodor')
	) AS source ([Id], [EmailAddress], [Password])
    ON target.Id = source.Id
WHEN MATCHED 
THEN 
    UPDATE SET 
		target.EmailAddress = source.EmailAddress,
		target.Password = source.Password
WHEN NOT MATCHED BY TARGET 
THEN
    INSERT (Id, EmailAddress, Password)
    VALUES (source.Id, source.EmailAddress, Source.Password);
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET NOCOUNT OFF
GO
---------------------------------------------------------------
----------------------Type Tables------------------------------
---------------------------------------------------------------

----------------------AddressType------------------------------
SET NOCOUNT ON
SET IDENTITY_INSERT [dbo].[AddressType] ON
MERGE INTO 
	dbo.AddressType 
WITH (HOLDLOCK) AS target
USING (VALUES
	(1, 'Physical', 1, GETDATE()),
	(2, 'Billing', 1, GETDATE())
	) AS source ([Id], [TypeName], [CreateUserId], [CreateDate])
    ON target.Id = source.Id
WHEN MATCHED 
THEN 
    UPDATE SET 
		target.TypeName = source.TypeName,
		target.CreateUserId = source.CreateUserId,
		target.CreateDate = source.CreateDate
WHEN NOT MATCHED BY TARGET 
THEN
    INSERT (Id, TypeName, CreateUserId, CreateDate)
    VALUES (source.Id, source.TypeName, Source.CreateUserId, Source.CreateDate);
SET IDENTITY_INSERT [dbo].[AddressType] OFF
GO
SET NOCOUNT OFF
GO
----------------------[FilmContributorType]-------------------------
SET NOCOUNT ON
SET IDENTITY_INSERT [dbo].[FilmContributorType] ON
MERGE INTO 
	dbo.FilmContributorType 
WITH (HOLDLOCK) AS target
USING (VALUES
	(1, 'Actor', 1, GETDATE()),
	(2, 'Director', 1, GETDATE()),
	(3, 'Producer', 1, GETDATE())
	) AS source ([Id], [TypeName], [CreateUserId], [CreateDate])
    ON target.Id = source.Id
WHEN MATCHED 
THEN 
    UPDATE SET 
		target.TypeName = source.TypeName,
		target.CreateUserId = source.CreateUserId,
		target.CreateDate = source.CreateDate
WHEN NOT MATCHED BY TARGET 
THEN
    INSERT (Id, TypeName, CreateUserId, CreateDate)
    VALUES (source.Id, source.TypeName, Source.CreateUserId, Source.CreateDate);
SET IDENTITY_INSERT [dbo].[FilmContributorType] OFF
GO
SET NOCOUNT OFF
GO
----------------------[[FormatType]]-------------------------
SET NOCOUNT ON
SET IDENTITY_INSERT [dbo].[FormatType] ON
MERGE INTO 
	dbo.FormatType 
WITH (HOLDLOCK) AS target
USING (VALUES
	(1, 'DVD', 1, GETDATE()),
	(2, 'Bluray', 1, GETDATE()),
	(3, 'Stream', 1, GETDATE())
	) AS source ([Id], [TypeName], [CreateUserId], [CreateDate])
    ON target.Id = source.Id
WHEN MATCHED 
THEN 
    UPDATE SET 
		target.TypeName = source.TypeName,
		target.CreateUserId = source.CreateUserId,
		target.CreateDate = source.CreateDate
WHEN NOT MATCHED BY TARGET 
THEN
    INSERT (Id, TypeName, CreateUserId, CreateDate)
    VALUES (source.Id, source.TypeName, Source.CreateUserId, Source.CreateDate);
SET IDENTITY_INSERT [dbo].[FormatType] OFF
GO
SET NOCOUNT OFF
GO
----------------------[[ItemType]]-------------------------
SET NOCOUNT ON
SET IDENTITY_INSERT [dbo].[ItemType] ON
MERGE INTO 
	dbo.ItemType 
WITH (HOLDLOCK) AS target
USING (VALUES
	(1, 'Video', 1, GETDATE()),
	(2, 'Food', 1, GETDATE()),
	(3, 'Beverage', 1, GETDATE()),
	(4, 'Misc', 1, GETDATE())
	) AS source ([Id], [TypeName], [CreateUserId], [CreateDate])
    ON target.Id = source.Id
WHEN MATCHED 
THEN 
    UPDATE SET 
		target.TypeName = source.TypeName,
		target.CreateUserId = source.CreateUserId,
		target.CreateDate = source.CreateDate
WHEN NOT MATCHED BY TARGET 
THEN
    INSERT (Id, TypeName, CreateUserId, CreateDate)
    VALUES (source.Id, source.TypeName, Source.CreateUserId, Source.CreateDate);
SET IDENTITY_INSERT [dbo].[ItemType] OFF
GO
SET NOCOUNT OFF
GO
----------------------[[PurchaseType]]-------------------------
SET NOCOUNT ON
SET IDENTITY_INSERT [dbo].[PurchaseType] ON
MERGE INTO 
	dbo.PurchaseType 
WITH (HOLDLOCK) AS target
USING (VALUES
	(1, 'Rental', 1, GETDATE()),
	(2, 'Purchase', 1, GETDATE())
	) AS source ([Id], [TypeName], [CreateUserId], [CreateDate])
    ON target.Id = source.Id
WHEN MATCHED 
THEN 
    UPDATE SET 
		target.TypeName = source.TypeName,
		target.CreateUserId = source.CreateUserId,
		target.CreateDate = source.CreateDate
WHEN NOT MATCHED BY TARGET 
THEN
    INSERT (Id, TypeName, CreateUserId, CreateDate)
    VALUES (source.Id, source.TypeName, Source.CreateUserId, Source.CreateDate);
SET IDENTITY_INSERT [dbo].[PurchaseType] OFF
GO
SET NOCOUNT OFF
GO
----------------------[[State]]-------------------------
SET NOCOUNT ON
SET IDENTITY_INSERT [dbo].[State] ON
MERGE INTO 
	dbo.State 
WITH (HOLDLOCK) AS target
USING (VALUES
	(1, 'ALABAMA', 1, GETDATE()),
	(2, 'ALASKA', 1, GETDATE()),
	(3, 'ARIZONA', 1, GETDATE()),
	(4, 'ARKANSAS', 1, GETDATE()),
	(5, 'CALIFORNIA', 1, GETDATE()),
	(6, 'COLORADO', 1, GETDATE()),
	(7, 'CONNECTICUT', 1, GETDATE()),
	(8, 'DELAWARE', 1, GETDATE()),
	(9, 'FLORIDA', 1, GETDATE()),
	(10, 'GEORGIA', 1, GETDATE()),
	(11, 'HAWAII', 1, GETDATE()),
	(12, 'IDAHO', 1, GETDATE()),
	(13, 'ILLINOIS', 1, GETDATE()),
	(14, 'INDIANA', 1, GETDATE()),
	(15, 'IOWA', 1, GETDATE()),
	(16, 'KANSAS', 1, GETDATE()),
	(17, 'KENTUCKY', 1, GETDATE()),
	(18, 'LOUISIANA', 1, GETDATE()),
	(19, 'MAINE', 1, GETDATE()),
	(20, 'MARYLAND', 1, GETDATE()),
	(21, 'MASSACHUSETTS', 1, GETDATE()),
	(22, 'MICHIGAN', 1, GETDATE()),
	(23, 'MINNESOTA', 1, GETDATE()),
	(24, 'MISSISSIPPI', 1, GETDATE()),
	(25, 'MISSOURI', 1, GETDATE()),
	(26, 'MONTANA', 1, GETDATE()),
	(27, 'NEBRASKA', 1, GETDATE()),
	(28, 'NEVADA', 1, GETDATE()),
	(29, 'NEW HAMPSHIRE', 1, GETDATE()),
	(30, 'NEW JERSEY', 1, GETDATE()),
	(31, 'NEW MEXICO', 1, GETDATE()),
	(32, 'NEW YORK', 1, GETDATE()),
	(33, 'NORTH CAROLINA', 1, GETDATE()),
	(34, 'NORTH DAKOTA', 1, GETDATE()),
	(35, 'OHIO', 1, GETDATE()),
	(36, 'OKLAHOMA', 1, GETDATE()),
	(37, 'OREGON', 1, GETDATE()),
	(38, 'PENNSYLVANIA', 1, GETDATE()),
	(39, 'RHODE ISLAND', 1, GETDATE()),
	(40, 'SOUTH CAROLINA', 1, GETDATE()),
	(41, 'SOUTH DAKOTA', 1, GETDATE()),
	(42, 'TENNESSEE', 1, GETDATE()),
	(43, 'TEXAS', 1, GETDATE()),
	(44, 'UTAH', 1, GETDATE()),
	(45, 'VERMONT', 1, GETDATE()),
	(46, 'VIRGINIA', 1, GETDATE()),
	(47, 'WASHINGTON', 1, GETDATE()),
	(48, 'WEST VIRGINIA', 1, GETDATE()),
	(49, 'WISCONSIN', 1, GETDATE()),
	(50, 'WYOMING', 1, GETDATE()),
	(51, 'WESTEROS', 1, GETDATE())
	) AS source ([Id], [Name], [CreateUserId], [CreateDate])
    ON target.Id = source.Id
WHEN MATCHED 
THEN 
    UPDATE SET 
		target.Name = source.Name,
		target.CreateUserId = source.CreateUserId,
		target.CreateDate = source.CreateDate
WHEN NOT MATCHED BY TARGET 
THEN
    INSERT (Id, Name, CreateUserId, CreateDate)
    VALUES (source.Id, source.Name, Source.CreateUserId, Source.CreateDate);
SET IDENTITY_INSERT [dbo].[State] OFF
GO
SET NOCOUNT OFF
GO
-------------------------------------------------------------------
-------------------------------------------------------------------
-----------------END TYPE TABLES-----------------------------------

----------------------[[Address]]-------------------------
SET NOCOUNT ON
SET IDENTITY_INSERT [dbo].[Address] ON
MERGE INTO 
	dbo.Address 
WITH (HOLDLOCK) AS target
USING (VALUES
	(1, 1, '2 Winterfell Drive', null, 'Winterfell', 51, '72727', 1, 1, GETDATE()),
	(2, 1, 'Castle Winterfell', null, 'Winterfell', 51, '72727', 1, 1, GETDATE())
	) AS source ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [StateId], [Zipcode], [AddressTypeId], [CreateUserId], [CreateDate])
    ON target.Id = source.Id
WHEN MATCHED 
THEN 
    UPDATE SET 
		target.CustomerId = source.CustomerId,
		target.AddressLine1 = source.AddressLine1,
		target.AddressLine2 = source.AddressLine2,
		target.City = source.City,
		target.StateId = source.StateId,
		target.Zipcode = source.Zipcode,
		target.AddressTypeId = source.AddressTypeId,
		target.CreateUserId = source.CreateUserId,
		target.CreateDate = source.CreateDate
WHEN NOT MATCHED BY TARGET 
THEN
    INSERT (Id, CustomerId, AddressLine1, AddressLine2, City, StateId, Zipcode, AddressTypeId, CreateUserId, CreateDate)
    VALUES (source.Id, source.CustomerId, Source.AddressLine1, Source.AddressLine2, Source.City, Source.StateId, Source.Zipcode, Source.AddressTypeId, Source.CreateUserId, Source.CreateDate);
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET NOCOUNT OFF
GO

