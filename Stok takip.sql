USE [stok_takip]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 26.07.2019 14:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[LID] [int] NOT NULL,
	[Lokasyon_Adı] [nvarchar](50) NOT NULL,
	[ürün_adeti] [int] NULL,
 CONSTRAINT [PK_Locations_1] PRIMARY KEY CLUSTERED 
(
	[LID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 26.07.2019 14:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MID] [int] IDENTITY(1,1) NOT NULL,
	[Menu_Adı] [nvarchar](50) NOT NULL,
	[is_create] [nchar](10) NULL,
	[is_delete] [nchar](10) NULL,
	[is_read] [nchar](10) NULL,
	[is_update] [nchar](10) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operation]    Script Date: 26.07.2019 14:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operation](
	[OID] [int] IDENTITY(1,1) NOT NULL,
	[Lokasyon_ID] [int] NOT NULL,
	[Kullanıcı_ID] [int] NOT NULL,
	[Ürün_ID] [int] NOT NULL,
	[Ürüntipi_ID] [int] NOT NULL,
	[Tarih] [smalldatetime] NOT NULL,
	[Ürün_Miktarı] [int] NOT NULL,
	[OTID] [int] NULL,
	[ürün_no] [int] NULL,
 CONSTRAINT [PK_Operation] PRIMARY KEY CLUSTERED 
(
	[OID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operation_Type]    Script Date: 26.07.2019 14:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operation_Type](
	[OPID] [int] IDENTITY(1,1) NOT NULL,
	[Operasyon_Tipleri] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Operation_Type] PRIMARY KEY CLUSTERED 
(
	[OPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 26.07.2019 14:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[Ürün_Adı] [nvarchar](50) NOT NULL,
	[Birim_Fİyat] [int] NOT NULL,
	[Yaşam_Ömrü] [int] NOT NULL,
	[Ürün_Miktarı] [int] NOT NULL,
	[Ürün_No] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Type]    Script Date: 26.07.2019 14:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Type](
	[PTID] [int] IDENTITY(1,1) NOT NULL,
	[Ürün_Tipi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Product_Type] PRIMARY KEY CLUSTERED 
(
	[PTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 26.07.2019 14:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[Soyad] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Sifre] [nvarchar](50) NOT NULL,
	[TPID] [int] NOT NULL,
 CONSTRAINT [PK_Users_1] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users_Type]    Script Date: 26.07.2019 14:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users_Type](
	[TPID] [int] IDENTITY(1,1) NOT NULL,
	[Kullanıcı_Tipi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Users_Ta__CE44E73313686E08] PRIMARY KEY CLUSTERED 
(
	[TPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Locations] ([LID], [Lokasyon_Adı], [ürün_adeti]) VALUES (1, N'Kalite Lokasyon', 10)
INSERT [dbo].[Locations] ([LID], [Lokasyon_Adı], [ürün_adeti]) VALUES (2, N'Satış Lokasyon', 20)
INSERT [dbo].[Locations] ([LID], [Lokasyon_Adı], [ürün_adeti]) VALUES (3, N'Mal Kabul', 30)
INSERT [dbo].[Locations] ([LID], [Lokasyon_Adı], [ürün_adeti]) VALUES (4, N'Free', 40)
INSERT [dbo].[Locations] ([LID], [Lokasyon_Adı], [ürün_adeti]) VALUES (5, N'Bant', 50)
INSERT [dbo].[Locations] ([LID], [Lokasyon_Adı], [ürün_adeti]) VALUES (6, N'A1', 60)
INSERT [dbo].[Locations] ([LID], [Lokasyon_Adı], [ürün_adeti]) VALUES (7, N'A2', 70)
INSERT [dbo].[Locations] ([LID], [Lokasyon_Adı], [ürün_adeti]) VALUES (8, N'A3', 80)
INSERT [dbo].[Locations] ([LID], [Lokasyon_Adı], [ürün_adeti]) VALUES (9, N'A4', 90)
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([MID], [Menu_Adı], [is_create], [is_delete], [is_read], [is_update]) VALUES (1, N'Tanımlar', NULL, NULL, NULL, NULL)
INSERT [dbo].[Menu] ([MID], [Menu_Adı], [is_create], [is_delete], [is_read], [is_update]) VALUES (2, N'Operasyonlar', NULL, NULL, NULL, NULL)
INSERT [dbo].[Menu] ([MID], [Menu_Adı], [is_create], [is_delete], [is_read], [is_update]) VALUES (3, N'Listeler', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[Operation] ON 

INSERT [dbo].[Operation] ([OID], [Lokasyon_ID], [Kullanıcı_ID], [Ürün_ID], [Ürüntipi_ID], [Tarih], [Ürün_Miktarı], [OTID], [ürün_no]) VALUES (1, 1, 1, 1, 1, CAST(N'1900-01-01T00:00:00' AS SmallDateTime), 1, 4, NULL)
INSERT [dbo].[Operation] ([OID], [Lokasyon_ID], [Kullanıcı_ID], [Ürün_ID], [Ürüntipi_ID], [Tarih], [Ürün_Miktarı], [OTID], [ürün_no]) VALUES (2, 5, 1, 3, 4, CAST(N'1900-01-01T00:00:00' AS SmallDateTime), 3, 4, NULL)
INSERT [dbo].[Operation] ([OID], [Lokasyon_ID], [Kullanıcı_ID], [Ürün_ID], [Ürüntipi_ID], [Tarih], [Ürün_Miktarı], [OTID], [ürün_no]) VALUES (3, 2, 1, 2, 3, CAST(N'1900-01-01T00:00:00' AS SmallDateTime), 4, 4, NULL)
INSERT [dbo].[Operation] ([OID], [Lokasyon_ID], [Kullanıcı_ID], [Ürün_ID], [Ürüntipi_ID], [Tarih], [Ürün_Miktarı], [OTID], [ürün_no]) VALUES (4, 4, 3, 2, 1, CAST(N'1900-01-01T00:00:00' AS SmallDateTime), 3, 4, NULL)
INSERT [dbo].[Operation] ([OID], [Lokasyon_ID], [Kullanıcı_ID], [Ürün_ID], [Ürüntipi_ID], [Tarih], [Ürün_Miktarı], [OTID], [ürün_no]) VALUES (5, 3, 1, 3, 4, CAST(N'1900-01-01T00:00:00' AS SmallDateTime), 2, 4, NULL)
SET IDENTITY_INSERT [dbo].[Operation] OFF
SET IDENTITY_INSERT [dbo].[Operation_Type] ON 

INSERT [dbo].[Operation_Type] ([OPID], [Operasyon_Tipleri]) VALUES (1, N'Fire')
INSERT [dbo].[Operation_Type] ([OPID], [Operasyon_Tipleri]) VALUES (2, N'Lokasyon Değişimleri')
INSERT [dbo].[Operation_Type] ([OPID], [Operasyon_Tipleri]) VALUES (3, N'Satışa Çıkartma')
INSERT [dbo].[Operation_Type] ([OPID], [Operasyon_Tipleri]) VALUES (4, N'Mal Kabul Operasyonu')
SET IDENTITY_INSERT [dbo].[Operation_Type] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([PID], [Ürün_Adı], [Birim_Fİyat], [Yaşam_Ömrü], [Ürün_Miktarı], [Ürün_No]) VALUES (1, N'Kalem', 10, 2, 5000, 440043)
INSERT [dbo].[Product] ([PID], [Ürün_Adı], [Birim_Fİyat], [Yaşam_Ömrü], [Ürün_Miktarı], [Ürün_No]) VALUES (2, N'Silgi', 4, 2, 4000, 440042)
INSERT [dbo].[Product] ([PID], [Ürün_Adı], [Birim_Fİyat], [Yaşam_Ömrü], [Ürün_Miktarı], [Ürün_No]) VALUES (3, N'Kalem Traş', 3, 2, 2000, 440041)
INSERT [dbo].[Product] ([PID], [Ürün_Adı], [Birim_Fİyat], [Yaşam_Ömrü], [Ürün_Miktarı], [Ürün_No]) VALUES (4, N'Pilot Kalem', 12, 2, 3500, 440040)
INSERT [dbo].[Product] ([PID], [Ürün_Adı], [Birim_Fİyat], [Yaşam_Ömrü], [Ürün_Miktarı], [Ürün_No]) VALUES (5, N'Tükenmez Kalem', 15, 2, 2500, 440049)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Product_Type] ON 

INSERT [dbo].[Product_Type] ([PTID], [Ürün_Tipi]) VALUES (1, N'Sağlam')
INSERT [dbo].[Product_Type] ([PTID], [Ürün_Tipi]) VALUES (2, N'Bozuk')
INSERT [dbo].[Product_Type] ([PTID], [Ürün_Tipi]) VALUES (3, N'Free')
INSERT [dbo].[Product_Type] ([PTID], [Ürün_Tipi]) VALUES (4, N'Satışta')
INSERT [dbo].[Product_Type] ([PTID], [Ürün_Tipi]) VALUES (5, N'Kayıp')
SET IDENTITY_INSERT [dbo].[Product_Type] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UID], [Ad], [Soyad], [Email], [Sifre], [TPID]) VALUES (1, N'Sami', N'KIBRIZ', N'sametkibriz44@gmail.com', N'123456', 1)
INSERT [dbo].[Users] ([UID], [Ad], [Soyad], [Email], [Sifre], [TPID]) VALUES (2, N'Cihad', N'DAYAN', N'cihaddayan44@hotmail.com', N'123456', 3)
INSERT [dbo].[Users] ([UID], [Ad], [Soyad], [Email], [Sifre], [TPID]) VALUES (3, N'Yavuz', N'Çaylı', N'cayli44@gmail.com', N'123456', 4)
INSERT [dbo].[Users] ([UID], [Ad], [Soyad], [Email], [Sifre], [TPID]) VALUES (4, N'Hayriye', N'Cingöz', N'hayriye44@gmail.com', N'123456', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[Users_Type] ON 

INSERT [dbo].[Users_Type] ([TPID], [Kullanıcı_Tipi]) VALUES (1, N'Operatör')
INSERT [dbo].[Users_Type] ([TPID], [Kullanıcı_Tipi]) VALUES (2, N'Şef')
INSERT [dbo].[Users_Type] ([TPID], [Kullanıcı_Tipi]) VALUES (3, N'Departman Çalışanları')
INSERT [dbo].[Users_Type] ([TPID], [Kullanıcı_Tipi]) VALUES (4, N'Departman Şefi')
SET IDENTITY_INSERT [dbo].[Users_Type] OFF
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Users_Table] FOREIGN KEY([MID])
REFERENCES [dbo].[Users_Type] ([TPID])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_Users_Table]
GO
ALTER TABLE [dbo].[Operation]  WITH CHECK ADD  CONSTRAINT [FK_Operation_Locations] FOREIGN KEY([OID])
REFERENCES [dbo].[Locations] ([LID])
GO
ALTER TABLE [dbo].[Operation] CHECK CONSTRAINT [FK_Operation_Locations]
GO
ALTER TABLE [dbo].[Operation]  WITH CHECK ADD  CONSTRAINT [FK_Operation_Product] FOREIGN KEY([OID])
REFERENCES [dbo].[Product] ([PID])
GO
ALTER TABLE [dbo].[Operation] CHECK CONSTRAINT [FK_Operation_Product]
GO
ALTER TABLE [dbo].[Operation]  WITH CHECK ADD  CONSTRAINT [FK_Operation_Product_Type] FOREIGN KEY([OID])
REFERENCES [dbo].[Product_Type] ([PTID])
GO
ALTER TABLE [dbo].[Operation] CHECK CONSTRAINT [FK_Operation_Product_Type]
GO
ALTER TABLE [dbo].[Operation_Type]  WITH CHECK ADD  CONSTRAINT [FK_Operation_Type_Operation] FOREIGN KEY([OPID])
REFERENCES [dbo].[Operation] ([OID])
GO
ALTER TABLE [dbo].[Operation_Type] CHECK CONSTRAINT [FK_Operation_Type_Operation]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Operation] FOREIGN KEY([UID])
REFERENCES [dbo].[Operation] ([OID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Operation]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Users_Table] FOREIGN KEY([UID])
REFERENCES [dbo].[Users_Type] ([TPID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Users_Table]
GO
