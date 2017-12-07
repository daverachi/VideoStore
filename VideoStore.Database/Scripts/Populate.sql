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

----------------------[[Customer_Address]]-------------------------
SET NOCOUNT ON
SET IDENTITY_INSERT [dbo].[Customer_Address] ON
MERGE INTO 
	dbo.Customer_Address 
WITH (HOLDLOCK) AS target
USING (VALUES
	(1, 1, 1, 1, GETDATE()),
	(2, 1, 2, 1, GETDATE())
	) AS source ([Id], [CustomerId], [AddressId], [CreateUserId], [CreateDate])
    ON target.Id = source.Id
WHEN MATCHED 
THEN 
    UPDATE SET 
		target.CustomerId = source.CustomerId,
		target.AddressId = source.AddressId,
		target.CreateUserId = source.CreateUserId,
		target.CreateDate = source.CreateDate
WHEN NOT MATCHED BY TARGET 
THEN
    INSERT (Id, CustomerId, AddressId, CreateUserId, CreateDate)
    VALUES (source.Id, source.CustomerId, Source.AddressId, Source.CreateUserId, Source.CreateDate);
SET IDENTITY_INSERT [dbo].[Customer_Address] OFF
GO
SET NOCOUNT OFF
GO

----------------------[[FileStore]]-------------------------
SET NOCOUNT ON
SET IDENTITY_INSERT [dbo].[FileStore] ON
MERGE INTO 
	dbo.FileStore 
WITH (HOLDLOCK) AS target
USING (VALUES
	(1, 'AvengersInfinityWar_Large.jpg', 1, GETDATE()),
	(2, 'AvengersInfinityWar_Small.jpg', 1, GETDATE()),
	(3, 'Coco_Small.jpg', 1, GETDATE()),
	(4, 'Coco_Large.jpg', 1, GETDATE()),
	(5, 'JusticeLeague_Small.jpg', 1, GETDATE()),
	(6, 'JusticeLeague_Large.jpg', 1, GETDATE()),
	(7, 'KingsmanGoldenCircle_Small.jpg', 1, GETDATE()),
	(8, 'KingsmanGoldenCircle_Large.jpg', 1, GETDATE()),
	(9, 'LadyBird_Small.jpg', 1, GETDATE()),
	(10, 'LadyBird_Large.jpg', 1, GETDATE()),
	(11, 'MurderOnTheOrientExpress_Small.jpg', 1, GETDATE()),
	(12, 'MurderOnTheOrientExpress_Large.jpg', 1, GETDATE()),
	(13, 'StarWars_TheLastJedi_Small.jpg', 1, GETDATE()),
	(14, 'StarWars_TheLastJedi_Large.jpg', 1, GETDATE()),
	(15, 'Thor_Ragnarok_Small.jpg', 1, GETDATE()),
	(16, 'Thor_Ragnarok_Large.jpg', 1, GETDATE())
	--(7, '_Small.jpg', 1, GETDATE()),
	--(8, '_Large.jpg', 1, GETDATE()),
	--(9, '_Small.jpg', 1, GETDATE()),
	--(0, '_Large.jpg', 1, GETDATE()),
	--(1, '_Small.jpg', 1, GETDATE()),
	--(2, '_Large.jpg', 1, GETDATE()),
	--(3, '_Small.jpg', 1, GETDATE()),
	--(4, '_Large.jpg', 1, GETDATE()),
	--(5, '_Small.jpg', 1, GETDATE()),
	--(6, '_Large.jpg', 1, GETDATE()),
	--(7, '_Small.jpg', 1, GETDATE()),
	--(8, '_Large.jpg', 1, GETDATE()),
	--(9, '_Small.jpg', 1, GETDATE()),
	--(0, '_Large.jpg', 1, GETDATE()),
	--(1, '_Small.jpg', 1, GETDATE()),
	--(2, '_Large.jpg', 1, GETDATE()),
	--(3, '_Small.jpg', 1, GETDATE()),
	--(4, '_Large.jpg', 1, GETDATE()),
	--(5, '_Small.jpg', 1, GETDATE()),
	--(6, '_Large.jpg', 1, GETDATE()),
	--(7, '_Small.jpg', 1, GETDATE()),
	--(8, '_Large.jpg', 1, GETDATE()),
	--(9, '_Small.jpg', 1, GETDATE()),
	--(0, '_Large.jpg', 1, GETDATE()),
	--(1, '_Small.jpg', 1, GETDATE()),
	--(2, '_Large.jpg', 1, GETDATE()),
	--(3, '_Small.jpg', 1, GETDATE()),
	--(4, '_Large.jpg', 1, GETDATE()),
	--(5, '_Small.jpg', 1, GETDATE()),
	--(6, '_Large.jpg', 1, GETDATE()),
	--(7, '_Small.jpg', 1, GETDATE()),
	--(8, '_Large.jpg', 1, GETDATE()),
	--(9, '_Small.jpg', 1, GETDATE()),
	--(0, '_Large.jpg', 1, GETDATE()),
	--(1, '_Small.jpg', 1, GETDATE()),
	--(2, '_Large.jpg', 1, GETDATE()),
	--(3, '_Small.jpg', 1, GETDATE()),
	--(4, '_Large.jpg', 1, GETDATE()),
	--(5, '_Small.jpg', 1, GETDATE())
	) AS source ([Id], [FileURI], [CreateUserId], [CreateDate])
    ON target.Id = source.Id
WHEN MATCHED 
THEN 
    UPDATE SET 
		target.FileURI = source.FileURI,
		target.CreateUserId = source.CreateUserId,
		target.CreateDate = source.CreateDate
WHEN NOT MATCHED BY TARGET 
THEN
    INSERT (Id, FileURI, CreateUserId, CreateDate)
    VALUES (source.Id, source.FileURI, Source.CreateUserId, Source.CreateDate);
SET IDENTITY_INSERT [dbo].[FileStore] OFF
GO
SET NOCOUNT OFF
GO

----------------------[[FilmContributor]]-------------------------
SET NOCOUNT ON
SET IDENTITY_INSERT [dbo].[FilmContributor] ON
MERGE INTO 
	dbo.FilmContributor 
WITH (HOLDLOCK) AS target
USING (VALUES
	--Avengers Infinity War
	(1, 'Karen', 'Gillan', 1, 1, GETDATE()),
	(2, 'Tessa', 'Thompson', 1, 1, GETDATE()),
	(3, 'Josh', 'Brolin', 1, 1, GETDATE()),
	(4, 'Anthony', 'Russo', 2, 1, GETDATE()),
	(5, 'Joe', 'Russo', 2, 1, GETDATE()),
	(6, 'Stan', 'Lee', 3, 1, GETDATE()),
	(7, 'Victoria', 'Alonso', 3, 1, GETDATE()),
	-- Justice League
	(8, 'Ben', 'Affleck', 1, 1, GETDATE()),
	(9, 'Henry', 'Cavill', 1, 1, GETDATE()),
	(10, 'Amy', 'Adams', 1, 1, GETDATE()),
	(11, 'Gal', 'Gadot', 1, 1, GETDATE()),
	(12, 'Zack', 'Snyder', 2, 1, GETDATE()),
	(13, 'Ben', 'Affleck', 3, 1, GETDATE()),
	(14, 'Jon', 'Berg', 3, 1, GETDATE()),
	(15, 'Wesley', 'Coller', 3, 1, GETDATE()),
	-- Coco
	(16, 'Anthony', 'Gonzalez', 1, 1, GETDATE()),
	(17, 'Gael', 'Bernal', 1, 1, GETDATE()),
	(18, 'Benjamin', 'Bratt', 1, 1, GETDATE()),
	(19, 'Lee', 'Unkrich', 2, 1, GETDATE()),
	(20, 'Adrian', 'Molina', 2, 1, GETDATE()),
	(21, 'Darla', 'Anderson', 3, 1, GETDATE()),
	(22, 'Mary', 'Drumm', 3, 1, GETDATE()),
	-- Thor Ragnarok
	(23, 'Taika', 'Waititi', 2, 1, GETDATE()),
	(24, 'Chris', 'Hemsworth', 1, 1, GETDATE()),
	(25, 'Tom', 'Hiddleston', 1, 1, GETDATE()),
	(26, 'Cate', 'Blanchett', 1, 1, GETDATE()),
	(27, 'Victoria', 'Alonso', 3, 1, GETDATE()),
	(28, 'Brian', 'Chapek', 3, 1, GETDATE()),
	(29, 'Louis', 'D''Esposito', 3, 1, GETDATE()),
	-- Star Wars - The last jedi
	(30, 'Rian', 'Johnson', 2, 1, GETDATE()),
	(31, 'Daisy', 'Ridley', 1, 1, GETDATE()),
	(32, 'Tom', 'Hardy', 1, 1, GETDATE()),
	(33, 'Adam', 'Driver', 1, 1, GETDATE()),
	(34, 'Mark', 'Hamill', 1, 1, GETDATE()),
	(35, 'J.J.', 'Abrams', 3, 1, GETDATE()),
	(36, 'Ram', 'Bergman', 3, 1, GETDATE()),
	-- Murder on the orient express
	(37, 'Kenneth', 'Branagh', 2, 1, GETDATE()),
	(38, 'Paapa', 'Essiedu', 1, 1, GETDATE()),
	(39, 'Daisy', 'Ridley', 1, 1, GETDATE()),
	(40, 'Leslie', 'Odom Jr.', 1, 1, GETDATE()),
	(41, 'Winston', 'Azzopardi', 3, 1, GETDATE()),
	(42, 'Kenneth', 'Branagh', 3, 1, GETDATE()),
	-- Lady bird
	(43, 'Saoirse', 'Ronan', 1, 1, GETDATE()),
	(44, 'Timothee', 'Chalamet', 1, 1, GETDATE()),
	(45, 'Odeya', 'Rush', 1, 1, GETDATE()),
	(46, 'Greta', 'Gerwig', 2, 1, GETDATE()),
	(47, 'Eli', 'Bush', 3, 1, GETDATE()),
	(48, 'Evelyn', 'O''Neill', 3, 1, GETDATE()),
	-- Kingsman Golden Circle
	(49, 'Matthew', 'Vaughn', 2, 1, GETDATE()),
	(50, 'Taron', 'Egerton', 1, 1, GETDATE()),
	(51, 'Mark', 'Strong', 1, 1, GETDATE()),
	(52, 'Hanna', 'Alstrom', 1, 1, GETDATE()),
	(53, 'Adam', 'Bohling', 3, 1, GETDATE()),
	(54, 'Dave', 'Gibbons', 3, 1, GETDATE())
	--(5, '', '', 1, 1, GETDATE()),
	--(6, '', '', 1, 1, GETDATE()),
	--(7, '', '', 1, 1, GETDATE()),
	--(8, '', '', 1, 1, GETDATE()),
	--(9, '', '', 1, 1, GETDATE()),
	--(0, '', '', 1, 1, GETDATE()),
	--(1, '', '', 1, 1, GETDATE()),
	--(2, '', '', 1, 1, GETDATE()),
	--(3, '', '', 1, 1, GETDATE()),
	--(4, '', '', 1, 1, GETDATE()),
	--(5, '', '', 1, 1, GETDATE()),
	--(6, '', '', 1, 1, GETDATE()),
	--(7, '', '', 1, 1, GETDATE()),
	--(8, '', '', 1, 1, GETDATE()),
	--(9, '', '', 1, 1, GETDATE()),
	--(0, '', '', 1, 1, GETDATE()),
	--(1, '', '', 1, 1, GETDATE()),
	--(2, '', '', 1, 1, GETDATE()),
	--(3, '', '', 1, 1, GETDATE()),
	--(4, '', '', 1, 1, GETDATE()),
	--(5, '', '', 1, 1, GETDATE()),
	--(6, '', '', 1, 1, GETDATE()),
	--(7, '', '', 1, 1, GETDATE()),
	--(8, '', '', 1, 1, GETDATE()),
	--(9, '', '', 1, 1, GETDATE()),
	--(0, '', '', 1, 1, GETDATE()),
	--(1, '', '', 1, 1, GETDATE()),
	--(2, '', '', 1, 1, GETDATE()),
	--(3, '', '', 1, 1, GETDATE()),
	--(4, '', '', 1, 1, GETDATE()),
	--(5, '', '', 1, 1, GETDATE()),
	--(6, '', '', 1, 1, GETDATE()),
	--(7, '', '', 1, 1, GETDATE()),
	--(8, '', '', 1, 1, GETDATE()),
	--(9, '', '', 1, 1, GETDATE()),
	--(0, '', '', 1, 1, GETDATE()),
	) AS source ([Id], [FirstName], [LastName], [FilmContributorTypeId],[CreateUserId], [CreateDate])
    ON target.Id = source.Id
WHEN MATCHED 
THEN 
    UPDATE SET 
		target.FirstName = source.FirstName,
		target.LastName = source.LastName,
		target.FilmContributorTypeId = source.FilmContributorTypeId,
		target.CreateUserId = source.CreateUserId,
		target.CreateDate = source.CreateDate
WHEN NOT MATCHED BY TARGET 
THEN
    INSERT (Id, FirstName, LastName, FilmContributorTypeId,CreateUserId, CreateDate)
    VALUES (source.Id, source.FirstName, source.LastName, Source.FilmContributorTypeId, Source.CreateUserId, Source.CreateDate);
SET IDENTITY_INSERT [dbo].[FilmContributor] OFF
GO
SET NOCOUNT OFF
GO