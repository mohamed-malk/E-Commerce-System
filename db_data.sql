USE [Graduation_File]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description], [Icon]) VALUES (1, N'all', N'Welcome to our SRM shop for all your needs! Explore a diverse range of products', N'category')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Icon]) VALUES (2, N'احذية', N'نحن لدينا اجمل الاحذية', N'steps')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Icon]) VALUES (6, N'الملابس ', N'افضل الملابس ستجدها هنا', N'apparel')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Sallers] ON 

INSERT [dbo].[Sallers] ([Id], [Name], [Phone], [Email], [Password], [NId]) VALUES (1, N'Malk', N'01024578910', N'malk@gmail.com', N'123456789', 12044545454545)
SET IDENTITY_INSERT [dbo].[Sallers] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [AddingDate], [NumberReviews], [AvgRate], [SallerId]) VALUES (1, N'Dress', N'Dark Dress', CAST(N'2024-03-26T18:11:22.9933333' AS DateTime2), 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (1, N'#ffffff', N'white')
INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (2, N'#000000', N'black')
INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (3, N'#FF0000', N'red')
INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (9, N'#1E9F34', N'الاخضر')
INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (10, N'#9A18C9', N'بنفسجي')
INSERT [dbo].[Colors] ([Id], [Code], [Name]) VALUES (11, N'#EDF019', N'الاصفر')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[ColoredProducts] ON 

INSERT [dbo].[ColoredProducts] ([ProductId], [ColorId], [Image], [Id]) VALUES (1, 1, N'1_1.png', 1)
SET IDENTITY_INSERT [dbo].[ColoredProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [Name], [Phone], [Email], [Password], [Image]) VALUES (2, N'Rofida Mohamed', N'01064226269', N'rofida@gmail.com', N'rofida123', NULL)
INSERT [dbo].[Customers] ([Id], [Name], [Phone], [Email], [Password], [Image]) VALUES (3, N'', N'', N'', N'', NULL)
INSERT [dbo].[Customers] ([Id], [Name], [Phone], [Email], [Password], [Image]) VALUES (4, N'', N'', N'', N'', NULL)
INSERT [dbo].[Customers] ([Id], [Name], [Phone], [Email], [Password], [Image]) VALUES (5, N'روفيدة محمد', N'01064226269', N'Rofida@gmail..com', N'rofida123', NULL)
INSERT [dbo].[Customers] ([Id], [Name], [Phone], [Email], [Password], [Image]) VALUES (6, N'سانجي', N'01529898333', N'rofida@gmail.com', N'سشى1234', NULL)
INSERT [dbo].[Customers] ([Id], [Name], [Phone], [Email], [Password], [Image]) VALUES (7, N'روفيدة', N'01028384844', N'sijisjd@gmail.com', N'1234567', NULL)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (1, CAST(N'2024-03-26T23:16:44.4370000' AS DateTime2), NULL, 0, 50, N'Fatoum', 5)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (2, CAST(N'2024-03-26T23:33:49.5090000' AS DateTime2), NULL, 0, 50, N'Fayoum', 2)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (3, CAST(N'2024-03-26T23:39:55.9300000' AS DateTime2), NULL, 0, 50, N'vairo', 2)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (4, CAST(N'2024-03-27T00:45:44.2020000' AS DateTime2), NULL, 0, 100, N'Cairo', 2)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (5, CAST(N'2024-03-27T00:53:27.3110000' AS DateTime2), NULL, 0, 100, N'PortSaid', 2)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (6, CAST(N'2024-03-27T00:53:27.3110000' AS DateTime2), NULL, 0, 100, N'PortSaid', 2)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (7, CAST(N'2024-03-27T00:53:27.3110000' AS DateTime2), NULL, 0, 100, N'PortSaid', 2)
INSERT [dbo].[Orders] ([Id], [OrderedDate], [ConfirmDate], [State], [TotalCost], [CustomerAddress], [CustomerId]) VALUES (8, CAST(N'2024-03-27T00:53:27.3110000' AS DateTime2), NULL, 0, 100, N'PortSaid', 2)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (1, N'm')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (2, N'l')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (6, N'S')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductVarients] ON 

INSERT [dbo].[ProductVarients] ([ProductId], [ColorId], [SizeId], [Quantity], [UnitPrice], [Discount], [Id]) VALUES (1, 1, 1, 5, 50, 0, 1)
INSERT [dbo].[ProductVarients] ([ProductId], [ColorId], [SizeId], [Quantity], [UnitPrice], [Discount], [Id]) VALUES (1, 1, 2, 9, 50, 0, 7)
SET IDENTITY_INSERT [dbo].[ProductVarients] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductVarientBelongToOrder] ON 

INSERT [dbo].[ProductVarientBelongToOrder] ([OrderId], [ProductId], [SizeId], [ColorId], [Quantity], [TotalPrice], [Id]) VALUES (2, 1, 1, 1, 1, 50, 1)
INSERT [dbo].[ProductVarientBelongToOrder] ([OrderId], [ProductId], [SizeId], [ColorId], [Quantity], [TotalPrice], [Id]) VALUES (3, 1, 1, 1, 1, 50, 2)
INSERT [dbo].[ProductVarientBelongToOrder] ([OrderId], [ProductId], [SizeId], [ColorId], [Quantity], [TotalPrice], [Id]) VALUES (4, 1, 1, 1, 1, 50, 3)
INSERT [dbo].[ProductVarientBelongToOrder] ([OrderId], [ProductId], [SizeId], [ColorId], [Quantity], [TotalPrice], [Id]) VALUES (5, 1, 1, 1, 1, 50, 5)
INSERT [dbo].[ProductVarientBelongToOrder] ([OrderId], [ProductId], [SizeId], [ColorId], [Quantity], [TotalPrice], [Id]) VALUES (6, 1, 1, 1, 1, 50, 7)
INSERT [dbo].[ProductVarientBelongToOrder] ([OrderId], [ProductId], [SizeId], [ColorId], [Quantity], [TotalPrice], [Id]) VALUES (8, 1, 1, 1, 1, 50, 9)
INSERT [dbo].[ProductVarientBelongToOrder] ([OrderId], [ProductId], [SizeId], [ColorId], [Quantity], [TotalPrice], [Id]) VALUES (8, 1, 2, 1, 1, 50, 13)
SET IDENTITY_INSERT [dbo].[ProductVarientBelongToOrder] OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240325193546_alldatabase', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240325213759_longNid', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240325233756_FixColor', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240326003707_FixValidationeDate', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240326010013_yarab', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240326010052_Fix-Identy', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240326170100_ID-Mig', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240326184525_sizenametonull', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240326190730_returnsize', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240326232617_OrrderItemId-Mig', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240327004130_Fix-ProductID-Unique', N'8.0.3')
GO
