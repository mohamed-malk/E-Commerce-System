USE [srm_db_iti]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description], [Icon]) VALUES (2, N'احذية', N'نحن لدينا اجمل الاحذية', N'steps')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Icon]) VALUES (6, N'الملابس', N'افضل الملابس وأجملها', N'apparel')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Icon]) VALUES (10, N'شنط', N'شنط شنط معايا شنط', N'shopping_bag')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Icon]) VALUES (11, N'فئه', N'ووووووصفه', N'check_box')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Sallers] ON 

INSERT [dbo].[Sallers] ([Id], [Name], [Phone], [Email], [Password], [NId]) VALUES (1, N'Malk', N'01024578910', N'malk@gmail.com', N'123456789', 12044545454545)
SET IDENTITY_INSERT [dbo].[Sallers] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [AddingDate], [NumberReviews], [AvgRate], [SallerId]) VALUES (31, N'صاصا المصاصا', N'هذا المنتج غير قابل للتعامل الجاد', CAST(N'2024-03-29T03:20:54.2127640' AS DateTime2), 1, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [AddingDate], [NumberReviews], [AvgRate], [SallerId]) VALUES (71, N'منتج جديد', N'ووووووصف', CAST(N'2024-03-30T15:39:48.5639978' AS DateTime2), 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategories] ON 

INSERT [dbo].[ProductCategories] ([ProductId], [CategoryId], [Id]) VALUES (31, 2, 21)
INSERT [dbo].[ProductCategories] ([ProductId], [CategoryId], [Id]) VALUES (71, 10, 59)
SET IDENTITY_INSERT [dbo].[ProductCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (1, N'#ffffff', N'الابيض')
INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (9, N'#1E9F34', N'الاخضر')
INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (10, N'#9A18C9', N'بنفسجي')
INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (11, N'#EDF019', N'الاصفر')
INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (13, N'#1F4DD6', N'الازرق')
INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (14, N'#000000', N'الاسود')
INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (15, N'#FF0000', N'الاحمر')
INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (16, N'#FF9500', N'برتقاني')
INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (17, N'#CCA000', N'بيج')
INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (18, N'#BFBFBF', N'رمادي')
INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (19, N'#EA2E79', N'البمبي')
INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (22, N'#17ACDE', N'نيلي')
INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (23, N'#FDBABA', N'لون')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[ColoredProducts] ON 

INSERT [dbo].[ColoredProducts] ([ProductId], [ColorId], [Image], [Id]) VALUES (31, 11, N'31_11.jpg', 51)
INSERT [dbo].[ColoredProducts] ([ProductId], [ColorId], [Image], [Id]) VALUES (71, 10, N'product_71_10.png', 84)
INSERT [dbo].[ColoredProducts] ([ProductId], [ColorId], [Image], [Id]) VALUES (71, 13, N'product_71_13.png', 85)
SET IDENTITY_INSERT [dbo].[ColoredProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ( [Name], [Phone], [Email], [Password], [Image], [Address]) VALUES (N'محمد ياسر', N'01064226269', N'mohamed23mallk26yasser@gmail.com', N'rofida123', NULL, NULL)
INSERT [dbo].[Customers] ([Name], [Phone], [Email], [Password], [Image], [Address]) VALUES (N'مصطفى ياسر', N'01064226269', N'mostafayasserali044@gmail.com', N'rofida123', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (8, CAST(N'2024-03-27T00:53:27.3110000' AS DateTime2), CAST(N'2024-03-27T04:26:40.6512466' AS DateTime2), 1, 100, N'PortSaid', 2)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (9, CAST(N'2024-03-27T00:53:27.3110000' AS DateTime2), CAST(N'2024-03-27T22:53:02.7645222' AS DateTime2), 2, 100, N'PortSaid', 2)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (10, CAST(N'2024-03-27T03:31:38.4010000' AS DateTime2), CAST(N'2024-03-27T21:55:44.5157354' AS DateTime2), 1, 150, N'Cairo', 2)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (11, CAST(N'2024-03-27T03:31:38.4010000' AS DateTime2), CAST(N'2024-03-29T03:30:51.4515284' AS DateTime2), 1, 100, N'Cairo', 2)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (13, CAST(N'2024-03-27T04:28:23.3200000' AS DateTime2), CAST(N'2024-03-27T21:55:46.6717243' AS DateTime2), 2, 100, N'Cairo', 2)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (19, CAST(N'2024-03-27T15:39:54.0470000' AS DateTime2), CAST(N'2024-03-27T21:53:14.2707283' AS DateTime2), 1, 100, N'Cairo', 2)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (21, CAST(N'2024-03-27T17:02:01.1100000' AS DateTime2), CAST(N'2024-03-29T20:51:10.1406340' AS DateTime2), 1, 100, N'Cairo', 2)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (44, CAST(N'2024-03-29T17:20:00.2700000' AS DateTime2), NULL, 0, 1680, N'محافظة بني سويف مدينة ببا', 8)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (45, CAST(N'2024-03-29T17:26:35.5110000' AS DateTime2), NULL, 0, 1680, N'محافظة بني سويف مدينة ببا', 8)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (46, CAST(N'2024-03-29T18:27:42.6130000' AS DateTime2), NULL, 0, 350, N'محافظة بني سويف مدينة ببا', 8)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (47, CAST(N'2024-03-29T18:33:33.2570000' AS DateTime2), NULL, 0, 740, N'محافظة بني سويف مدينة ببا', 8)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (48, CAST(N'2024-03-29T22:16:38.8260000' AS DateTime2), CAST(N'2024-03-30T00:20:57.3508147' AS DateTime2), 1, 400, N'محافظة اسيوط', 2)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (49, CAST(N'2024-03-29T22:26:37.8850000' AS DateTime2), NULL, 0, 320, N'محافظة اسيوط', 2)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (50, CAST(N'2024-03-30T05:26:59.9650000' AS DateTime2), NULL, 0, 400, N'محافظة اسيوط', 2)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (52, CAST(N'2024-03-30T06:03:06.0290000' AS DateTime2), NULL, 0, 400, N'محافظة بني سويف مدينة ببا', 8)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (55, CAST(N'2024-03-30T10:10:53.0810000' AS DateTime2), NULL, 0, 420, N'محافظة اسيوط', 2)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (58, CAST(N'2024-03-30T13:24:32.3310000' AS DateTime2), NULL, 0, 200, N'عين شمس لللللللللل', 18)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
INSERT [dbo].[Reviews] ([CustomerId],[Customer] , [ProductId], [Rate], [Comment], [Date]) VALUES (2, N'محمد ياسر', 31, 3, N'جميل للغاية', CAST(N'2024-03-30T14:19:57.9900000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (9, N'2XL')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (10, N'3XL')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (12, N'4XL')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (2, N'L')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (1, N'm')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (6, N'S')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (8, N'xl')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductVarients] ON 

INSERT [dbo].[ProductVarients] ([ProductId], [ColorId], [SizeId], [Quantity], [UnitPrice], [Discount], [Id]) VALUES (31, 11, 6, 3, 70, 0.01, 56)
INSERT [dbo].[ProductVarients] ([ProductId], [ColorId], [SizeId], [Quantity], [UnitPrice], [Discount], [Id]) VALUES (71, 13, 1, 8, 70, 0.1, 89)
INSERT [dbo].[ProductVarients] ([ProductId], [ColorId], [SizeId], [Quantity], [UnitPrice], [Discount], [Id]) VALUES (71, 10, 6, 6, 70, 0.25, 90)
SET IDENTITY_INSERT [dbo].[ProductVarients] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductVarientBelongToOrder] ON 

INSERT [dbo].[ProductVarientBelongToOrder] ([OrderId], [ProductId], [SizeId], [ColorId], [Quantity], [TotalPrice], [Id]) VALUES (48, 31, 6, 11, 11, 70, 43)
SET IDENTITY_INSERT [dbo].[ProductVarientBelongToOrder] OFF
GO