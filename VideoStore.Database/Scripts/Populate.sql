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