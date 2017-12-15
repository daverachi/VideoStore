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
	(2, 'Coco_Large.jpg', 1, GETDATE()),
	(3, 'JusticeLeague_Large.jpg', 1, GETDATE()),
	(4, 'KingsmanGoldenCircle_Large.jpg', 1, GETDATE()),
	(5, 'LadyBird_Large.jpg', 1, GETDATE()),
	(6, 'MurderOnTheOrientExpress_Large.jpg', 1, GETDATE()),
	(7, 'StarWars_TheLastJedi_Large.jpg', 1, GETDATE()),
	(8, 'Thor_Ragnarok_Large.jpg', 1, GETDATE()),
	(9, 'Coke_Small.jpg', 1, GETDATE()),
	(10, 'Twizzlers_Large.jpg', 1, GETDATE()),
	(11, 'PopularScience_Large.jpg', 1, GETDATE()),
	(12, 'Good&Plenty_Large.jpg', 1, GETDATE())
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
----------------------[[InventoryItem]]-------------------------
SET NOCOUNT ON
SET IDENTITY_INSERT [dbo].[InventoryItem] ON
MERGE INTO 
	dbo.InventoryItem 
WITH (HOLDLOCK) AS target
USING (VALUES
	(1, 144, 1, GETDATE(),'Avengers: Infinity War', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.'),
	(2, 152, 1, GETDATE(), 'Star Wars: The Last Jedi','Having taken her first steps into the Jedi world, Rey joins Luke Skywalker on an adventure with Leia, Finn and Poe that unlocks mysteries of the Force and secrets of the past.'),
	(3, 120, 1, GETDATE(), 'Justice League','Fueled by his restored faith in humanity and inspired by Superman''s selfless act, Bruce Wayne enlists the help of his newfound ally, Diana Prince, to face an even greater enemy. '),
	(4, 105, 1, GETDATE(), 'Coco','Aspiring musician Miguel, confronted with his family''s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer. '),
	(5, 130, 1, GETDATE(), 'Thor: Ragnarok','Imprisoned, the almighty Thor finds himself in a lethal gladiatorial contest against the Hulk, his former ally. Thor must fight for survival and race against time to prevent the all-powerful Hela from destroying his home and the Asgardian civilization.'),
	(6, 114, 1, GETDATE(), 'Murder on the Orient Express','When a murder occurs on the train he''s travelling on, celebrated detective Hercule Poirot is recruited to solve the case. '),
	(7, 94, 1, GETDATE(), 'Lady Bird','In the early 2000s, an artistically-inclined seventeen year-old comes of age in Sacramento, California. '),
	(8, 141, 1, GETDATE(), 'Kingsman: The Golden Circle','When their headquarters are destroyed and the world is held hostage, the Kingsman''s journey leads them to the discovery of an allied spy organization in the US. These two elite secret organizations must band together to defeat a common enemy. '),
	(9, NULL, 1, GETDATE(), 'Twizzlers','Strawberry Flavored Licorice Candy, 16 Ounce Bag'),
	(10, NULL, 1, GETDATE(), 'Good & Plenty','Good & Plenty Theater Box 6 Oz - Licorice Candy With A Hard Candy Shell.'),
	(11, NULL, 1, GETDATE(), 'Popular Science Magazine','Print Magazine'),
	(12, NULL, 1, GETDATE(), 'Coca-Cola','Soda, 20 Ounce')
	--(5, NULL, 1, GETDATE(), '',''),
	--(6, NULL, 1, GETDATE(), '',''),
	--(7, NULL, 1, GETDATE(), '',''),
	--(8, NULL, 1, GETDATE(), '',''),
	--(9, NULL, 1, GETDATE(), '',''),
	--(0, NULL, 1, GETDATE(), '',''),
	--(1, NULL, 1, GETDATE(), '',''),
	--(2, NULL, 1, GETDATE(), '',''),
	--(3, NULL, 1, GETDATE(), '',''),
	--(4, NULL, 1, GETDATE(), '',''),
	--(5, NULL, 1, GETDATE(), '',''),
	--(6, NULL, 1, GETDATE(), '',''),
	--(7, NULL, 1, GETDATE(), '',''),
	--(8, NULL, 1, GETDATE(), '',''),
	--(9, NULL, 1, GETDATE(), '',''),
	--(0, NULL, 1, GETDATE(), '',''),
	--(1, NULL, 1, GETDATE(), '',''),
	--(2, NULL, 1, GETDATE(), '',''),
	--(3, NULL, 1, GETDATE(), '',''),
	--(4, NULL, 1, GETDATE(), '',''),
	--(5, NULL, 1, GETDATE(), '',''),
	--(6, NULL, 1, GETDATE(), '',''),
	--(7, NULL, 1, GETDATE(), '',''),
	--(8, NULL, 1, GETDATE(), '',''),
	--(9, NULL, 1, GETDATE(), '',''),
	--(0, NULL, 1, GETDATE(), '',''),
	) AS source ([Id], [Length],[CreateUserId],[CreateDate],[ItemName], [Description])
    ON target.Id = source.Id
WHEN MATCHED 
THEN 
    UPDATE SET 
		target.Length = source.Length,
		target.CreateUserId = source.CreateUserId,
		target.CreateDate = source.CreateDate,
		target.ItemName = source.ItemName,
		target.Description = source.Description
WHEN NOT MATCHED BY TARGET 
THEN
    INSERT (Id, Length, CreateUserId, CreateDate, ItemName, Description)
    VALUES (source.Id, source.Length, Source.CreateUserId, Source.CreateDate, Source.ItemName, Source.Description);
SET IDENTITY_INSERT [dbo].[InventoryItem] OFF
GO
SET NOCOUNT OFF
GO

----------------------[[InventoryItem_FileStore]]-------------------------
SET NOCOUNT ON
SET IDENTITY_INSERT [dbo].[InventoryItem_FileStore] ON
MERGE INTO 
	dbo.InventoryItem_FileStore 
WITH (HOLDLOCK) AS target
USING (VALUES
	(1, 1, 1, 1, GETDATE()),
	(2, 2, 4, 1, GETDATE()),
	(3, 3, 3, 1, GETDATE()),
	(4, 4, 8, 1, GETDATE()),
	(5, 5, 7, 1, GETDATE()),
	(6, 6, 6, 1, GETDATE()),
	(7, 7, 2, 1, GETDATE()),
	(8, 8, 5, 1, GETDATE()),
	(9, 9, 12, 1, GETDATE()),
	(10, 10, 9, 1, GETDATE()),
	(11, 11, 11, 1, GETDATE()),
	(12, 12, 10, 1, GETDATE())
	--(5, 5, 0, 1, GETDATE()),
	--(6, 6, 6, 1, GETDATE()),
	--(7, 6, 7, 1, GETDATE()),
	--(8, 6, 8, 1, GETDATE()),
	--(9, 6, 9, 1, GETDATE()),
	--(0, 6, 0, 1, GETDATE()),
	) AS source ([Id], [FileStoreId], [InventoryItemId], [CreateUserId], [CreateDate])
    ON target.Id = source.Id
WHEN MATCHED 
THEN 
    UPDATE SET 
		target.FileStoreId = source.FileStoreId,
		target.InventoryItemId = source.InventoryItemId,
		target.CreateUserId = source.CreateUserId,
		target.CreateDate = source.CreateDate
WHEN NOT MATCHED BY TARGET 
THEN
    INSERT (Id, FileStoreId, InventoryItemId, CreateUserId, CreateDate)
    VALUES (source.Id, source.FileStoreId, Source.InventoryItemId, Source.CreateUserId, Source.CreateDate);
SET IDENTITY_INSERT [dbo].[InventoryItem_FileStore] OFF
GO
SET NOCOUNT OFF
GO

----------------------[[InventoryItem_FilmContributor]]-------------------------
SET NOCOUNT ON
SET IDENTITY_INSERT [dbo].[InventoryItem_FilmContributor] ON
MERGE INTO 
	dbo.InventoryItem_FilmContributor 
WITH (HOLDLOCK) AS target
USING (VALUES
	(1, 1, 1, 1, GETDATE()),
	(2, 2, 1, 1, GETDATE()),
	(3, 3, 1, 1, GETDATE()),
	(4, 4, 1, 1, GETDATE()),
	(5, 5, 1, 1, GETDATE()),
	(6, 6, 1, 1, GETDATE()),
	(7, 7, 1, 1, GETDATE()),
	(8, 8, 3, 1, GETDATE()),
	(9, 9, 3, 1, GETDATE()),
	(10, 10, 3, 1, GETDATE()),
	(11, 11, 3, 1, GETDATE()),
	(12, 12, 3, 1, GETDATE()),
	(13, 13, 3, 1, GETDATE()),
	(14, 14, 3, 1, GETDATE()),
	(15, 15, 3, 1, GETDATE()),
	(16, 16, 4, 1, GETDATE()),
	(17, 17, 4, 1, GETDATE()),
	(18, 18, 4, 1, GETDATE()),
	(19, 19, 4, 1, GETDATE()),
	(20, 20, 4, 1, GETDATE()),
	(21, 21, 4, 1, GETDATE()),
	(22, 22, 4, 1, GETDATE()),
	(23, 23, 5, 1, GETDATE()),
	(24, 24, 5, 1, GETDATE()),
	(25, 25, 5, 1, GETDATE()),
	(26, 26, 5, 1, GETDATE()),
	(27, 27, 5, 1, GETDATE()),
	(28, 28, 5, 1, GETDATE()),
	(29, 29, 5, 1, GETDATE()),
	(30, 30, 2, 1, GETDATE()),
	(31, 31, 2, 1, GETDATE()),
	(32, 32, 2, 1, GETDATE()),
	(33, 33, 2, 1, GETDATE()),
	(34, 34, 2, 1, GETDATE()),
	(35, 35, 2, 1, GETDATE()),
	(36, 36, 2, 1, GETDATE()),
	(37, 37, 6, 1, GETDATE()),
	(38, 38, 6, 1, GETDATE()),
	(49, 39, 6, 1, GETDATE()),
	(40, 40, 6, 1, GETDATE()),
	(41, 41, 6, 1, GETDATE()),
	(42, 42, 6, 1, GETDATE()),
	(43, 43, 7, 1, GETDATE()),
	(44, 44, 7, 1, GETDATE()),
	(45, 45, 7, 1, GETDATE()),
	(46, 46, 7, 1, GETDATE()),
	(47, 47, 7, 1, GETDATE()),
	(48, 48, 7, 1, GETDATE()),
	(59, 49, 8, 1, GETDATE()),
	(50, 50, 8, 1, GETDATE()),
	(51, 51, 8, 1, GETDATE()),
	(52, 52, 8, 1, GETDATE()),
	(53, 53, 8, 1, GETDATE()),
	(54, 54, 8, 1, GETDATE())
	--(6, 2, 5, 1, GETDATE()),
	--(7, 2, 6, 1, GETDATE()),
	--(8, 2, 7, 1, GETDATE()),
	--(9, 2, 1, 1, GETDATE()),
	--(0, 2, 1, 1, GETDATE()),
	--(1, 2, 1, 1, GETDATE()),
	--(2, 2, 1, 1, GETDATE()),
	--(3, 2, 1, 1, GETDATE()),
	--(4, 2, 1, 1, GETDATE()),
	--(5, 2, 1, 1, GETDATE()),
	--(6, 2, 1, 1, GETDATE()),
	--(7, 2, 1, 1, GETDATE()),
	--(8, 2, 1, 1, GETDATE()),
	--(9, 2, 1, 1, GETDATE()),
	--(0, 2, 1, 1, GETDATE()),
	) AS source ([Id], [FilmContributorId], [InventoryItemId], [CreateUserId], [CreateDate])
    ON target.Id = source.Id
WHEN MATCHED 
THEN 
    UPDATE SET 
		target.FilmContributorId = source.FilmContributorId,
		target.InventoryItemId = source.InventoryItemId,
		target.CreateUserId = source.CreateUserId,
		target.CreateDate = source.CreateDate
WHEN NOT MATCHED BY TARGET 
THEN
    INSERT (Id, FilmContributorId, InventoryItemId, CreateUserId, CreateDate)
    VALUES (source.Id, source.FilmContributorId, Source.InventoryItemId, Source.CreateUserId, Source.CreateDate);
SET IDENTITY_INSERT [dbo].[InventoryItem_FilmContributor] OFF
GO
SET NOCOUNT OFF
GO

----------------------[[InventoryItem_FormatType]]-------------------------
SET NOCOUNT ON
SET IDENTITY_INSERT [dbo].[InventoryItem_FormatType] ON
MERGE INTO 
	dbo.InventoryItem_FormatType 
WITH (HOLDLOCK) AS target
USING (VALUES
	(1, 1, 1, 1, GETDATE()),
	(2, 2, 1, 1, GETDATE()),
	(3, 3, 1, 1, GETDATE()),
	(4, 1, 2, 1, GETDATE()),
	(5, 2, 2, 1, GETDATE()),
	(6, 3, 2, 1, GETDATE()),
	(7, 1, 3, 1, GETDATE()),
	(8, 2, 3, 1, GETDATE()),
	(9, 3, 3, 1, GETDATE()),
	(10, 1, 4, 1, GETDATE()),
	(11, 2, 4, 1, GETDATE()),
	(12, 3, 4, 1, GETDATE()),
	(13, 1, 5, 1, GETDATE()),
	(14, 2, 5, 1, GETDATE()),
	(15, 3, 5, 1, GETDATE()),
	(16, 1, 6, 1, GETDATE()),
	(17, 2, 6, 1, GETDATE()),
	(18, 3, 6, 1, GETDATE()),
	(19, 1, 7, 1, GETDATE()),
	(20, 2, 7, 1, GETDATE()),
	(21, 3, 7, 1, GETDATE()),
	(22, 1, 8, 1, GETDATE()),
	(23, 2, 8, 1, GETDATE()),
	(24, 3, 8, 1, GETDATE())
	--(5, 1, 1, 1, GETDATE()),
	--(6, 1, 1, 1, GETDATE()),
	--(7, 1, 1, 1, GETDATE()),
	--(8, 1, 1, 1, GETDATE()),
	--(9, 1, 1, 1, GETDATE()),
	--(0, 1, 1, 1, GETDATE()),
	--(1, 1, 1, 1, GETDATE()),
	--(2, 1, 1, 1, GETDATE()),
	--(3, 1, 1, 1, GETDATE()),
	--(4, 1, 1, 1, GETDATE()),
	--(5, 1, 1, 1, GETDATE()),
	--(6, 1, 1, 1, GETDATE()),
	--(7, 1, 1, 1, GETDATE()),
	--(8, 1, 1, 1, GETDATE()),
	--(9, 1, 1, 1, GETDATE()),
	--(0, 1, 1, 1, GETDATE())
	) AS source ([Id], [FormatTypeId], [InventoryItemId], [CreateUserId], [CreateDate])
    ON target.Id = source.Id
WHEN MATCHED 
THEN 
    UPDATE SET 
		target.FormatTypeId = source.FormatTypeId,
		target.InventoryItemId = source.InventoryItemId,
		target.CreateUserId = source.CreateUserId,
		target.CreateDate = source.CreateDate
WHEN NOT MATCHED BY TARGET 
THEN
    INSERT (Id, FormatTypeId, InventoryItemId, CreateUserId, CreateDate)
    VALUES (source.Id, source.FormatTypeId, Source.InventoryItemId, Source.CreateUserId, Source.CreateDate);
SET IDENTITY_INSERT [dbo].[InventoryItem_FormatType] OFF
GO
SET NOCOUNT OFF
GO
----------------------[[InventoryItem_ItemType]]-------------------------
SET NOCOUNT ON
SET IDENTITY_INSERT [dbo].[InventoryItem_ItemType] ON
MERGE INTO 
	dbo.InventoryItem_ItemType 
WITH (HOLDLOCK) AS target
USING (VALUES
	(1, 1, 1, 1, GETDATE()),
	(2, 1, 2, 1, GETDATE()),
	(3, 1, 3, 1, GETDATE()),
	(4, 1, 4, 1, GETDATE()),
	(5, 1, 5, 1, GETDATE()),
	(6, 1, 6, 1, GETDATE()),
	(7, 1, 7, 1, GETDATE()),
	(8, 1, 8, 1, GETDATE()),
	(9, 2, 9, 1, GETDATE()),
	(10, 2, 10, 1, GETDATE()),
	(11, 4, 11, 1, GETDATE()),
	(12, 3, 12, 1, GETDATE())
	--(5, 1, 1, 1, GETDATE()),
	--(6, 1, 1, 1, GETDATE()),
	--(7, 1, 1, 1, GETDATE()),
	--(8, 1, 1, 1, GETDATE()),
	--(9, 1, 1, 1, GETDATE()),
	--(0, 1, 1, 1, GETDATE()),
	--(1, 1, 1, 1, GETDATE()),
	--(2, 1, 1, 1, GETDATE()),
	--(3, 1, 1, 1, GETDATE()),
	--(4, 1, 1, 1, GETDATE()),
	--(5, 1, 1, 1, GETDATE()),
	--(6, 1, 1, 1, GETDATE()),
	--(7, 1, 1, 1, GETDATE()),
	--(8, 1, 1, 1, GETDATE()),
	--(9, 1, 1, 1, GETDATE()),
	--(0, 1, 1, 1, GETDATE())
	) AS source ([Id], [ItemTypeId], [InventoryItemId], [CreateUserId], [CreateDate])
    ON target.Id = source.Id
WHEN MATCHED 
THEN 
    UPDATE SET 
		target.ItemTypeId = source.ItemTypeId,
		target.InventoryItemId = source.InventoryItemId,
		target.CreateUserId = source.CreateUserId,
		target.CreateDate = source.CreateDate
WHEN NOT MATCHED BY TARGET 
THEN
    INSERT (Id, ItemTypeId, InventoryItemId, CreateUserId, CreateDate)
    VALUES (source.Id, source.ItemTypeId, Source.InventoryItemId, Source.CreateUserId, Source.CreateDate);
SET IDENTITY_INSERT [dbo].[InventoryItem_ItemType] OFF
GO
SET NOCOUNT OFF
GO
----------------------[[InventoryItem_PurchaseType]]-------------------------
SET NOCOUNT ON
SET IDENTITY_INSERT [dbo].[InventoryItem_PurchaseType] ON
MERGE INTO 
	dbo.InventoryItem_PurchaseType 
WITH (HOLDLOCK) AS target
USING (VALUES
	(1, 1, 1, 1, GETDATE()),
	(2, 2, 1, 1, GETDATE()),
	(3, 1, 2, 1, GETDATE()),
	(4, 2, 2, 1, GETDATE()),
	(5, 1, 3, 1, GETDATE()),
	(6, 2, 3, 1, GETDATE()),
	(7, 1, 4, 1, GETDATE()),
	(8, 2, 4, 1, GETDATE()),
	(9, 1, 5, 1, GETDATE()),
	(10, 2, 5, 1, GETDATE()),
	(11, 1, 6, 1, GETDATE()),
	(12, 2, 6, 1, GETDATE()),
	(13, 1, 7, 1, GETDATE()),
	(14, 2, 7, 1, GETDATE()),
	(15, 1, 8, 1, GETDATE()),
	(16, 2, 8, 1, GETDATE()),
	(17, 2, 9, 1, GETDATE()),
	(18, 2, 10, 1, GETDATE()),
	(19, 2, 11, 1, GETDATE()),
	(20, 2, 12, 1, GETDATE())
	--(1, 1, 1, 1, GETDATE()),
	--(2, 1, 1, 1, GETDATE()),
	--(3, 1, 1, 1, GETDATE()),
	--(4, 1, 1, 1, GETDATE()),
	--(5, 1, 1, 1, GETDATE()),
	--(6, 1, 1, 1, GETDATE()),
	--(7, 1, 1, 1, GETDATE()),
	--(8, 1, 1, 1, GETDATE()),
	--(9, 1, 1, 1, GETDATE()),
	--(0, 1, 1, 1, GETDATE())
	) AS source ([Id], [PurchaseTypeId], [InventoryItemId], [CreateUserId], [CreateDate])
    ON target.Id = source.Id
WHEN MATCHED 
THEN 
    UPDATE SET 
		target.PurchaseTypeId = source.PurchaseTypeId,
		target.InventoryItemId = source.InventoryItemId,
		target.CreateUserId = source.CreateUserId,
		target.CreateDate = source.CreateDate
WHEN NOT MATCHED BY TARGET 
THEN
    INSERT (Id, PurchaseTypeId, InventoryItemId, CreateUserId, CreateDate)
    VALUES (source.Id, source.PurchaseTypeId, Source.InventoryItemId, Source.CreateUserId, Source.CreateDate);
SET IDENTITY_INSERT [dbo].[InventoryItem_PurchaseType] OFF
GO
SET NOCOUNT OFF
GO