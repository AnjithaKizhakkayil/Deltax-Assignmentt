/****** Object:  Table [dbo].[Actor_Tbl]    Script Date: 05/26/2018 17:40:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Actor_Tbl]') AND type in (N'U'))
DROP TABLE [dbo].[Actor_Tbl]
GO
/****** Object:  Table [dbo].[Actress_tbl]    Script Date: 05/26/2018 17:40:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Actress_tbl]') AND type in (N'U'))
DROP TABLE [dbo].[Actress_tbl]
GO
/****** Object:  Table [dbo].[AddNew_tbl]    Script Date: 05/26/2018 17:40:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNew_tbl]') AND type in (N'U'))
DROP TABLE [dbo].[AddNew_tbl]
GO
/****** Object:  Table [dbo].[ProducerTbl]    Script Date: 05/26/2018 17:40:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProducerTbl]') AND type in (N'U'))
DROP TABLE [dbo].[ProducerTbl]
GO
/****** Object:  Table [dbo].[ProducerTbl]    Script Date: 05/26/2018 17:40:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProducerTbl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProducerTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProducerName] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Sex] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dob] [date] NULL,
	[Bio] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
SET IDENTITY_INSERT [dbo].[ProducerTbl] ON
INSERT [dbo].[ProducerTbl] ([Id], [ProducerName], [Sex], [Dob], [Bio]) VALUES (1, N'Simon Kinberg', NULL, NULL, NULL)
INSERT [dbo].[ProducerTbl] ([Id], [ProducerName], [Sex], [Dob], [Bio]) VALUES (2, N'--SELECT--', NULL, NULL, NULL)
INSERT [dbo].[ProducerTbl] ([Id], [ProducerName], [Sex], [Dob], [Bio]) VALUES (3, N'John Powell', NULL, NULL, NULL)
INSERT [dbo].[ProducerTbl] ([Id], [ProducerName], [Sex], [Dob], [Bio]) VALUES (4, N'John Powell', NULL, NULL, NULL)
INSERT [dbo].[ProducerTbl] ([Id], [ProducerName], [Sex], [Dob], [Bio]) VALUES (5, N'X', N'Male', CAST(0x713C0B00 AS Date), N'xyzxyz')
SET IDENTITY_INSERT [dbo].[ProducerTbl] OFF
/****** Object:  Table [dbo].[AddNew_tbl]    Script Date: 05/26/2018 17:40:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNew_tbl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AddNew_tbl](
	[Serial_No] [int] IDENTITY(1,1) NOT NULL,
	[Movie_Name] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Images] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Actor] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Producer] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[YearOfReleasing] [date] NULL
)
END
GO
SET IDENTITY_INSERT [dbo].[AddNew_tbl] ON
INSERT [dbo].[AddNew_tbl] ([Serial_No], [Movie_Name], [Images], [Actor], [Producer], [YearOfReleasing]) VALUES (1, N'Deadpool 2', N'~/Images/MV5BMjI3Njg3MzAxNF5BMl5BanBnXkFtZTgwNjI2OTY0NTM@._V1_QL50_SY1000_CR0,0,674,1000_AL_.jpg', N'Josh Brolin', N'Simon Kinberg', CAST(0xCB3E0B00 AS Date))
INSERT [dbo].[AddNew_tbl] ([Serial_No], [Movie_Name], [Images], [Actor], [Producer], [YearOfReleasing]) VALUES (7, N'Solo: A Star Wars Story (2018)', N'~/Images/MV5BOTM2NTI3NTc3Nl5BMl5BanBnXkFtZTgwNzM1OTQyNTM@._V1_QL50_SY1000_CR0,0,674,1000_AL_.jpg', N'Alden Ehrenreich', N'John Powell', CAST(0x473E0B00 AS Date))
INSERT [dbo].[AddNew_tbl] ([Serial_No], [Movie_Name], [Images], [Actor], [Producer], [YearOfReleasing]) VALUES (8, N'Black Panther', N'~/Images/MV5BMTg1MTY2MjYzNV5BMl5BanBnXkFtZTgwMTc4NTMwNDI@._V1_QL50_SY1000_CR0,0,674,1000_AL_.jpg', N'y', N'X', CAST(0xBB3D0B00 AS Date))
SET IDENTITY_INSERT [dbo].[AddNew_tbl] OFF
/****** Object:  Table [dbo].[Actress_tbl]    Script Date: 05/26/2018 17:40:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Actress_tbl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Actress_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ActressName] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
SET IDENTITY_INSERT [dbo].[Actress_tbl] ON
INSERT [dbo].[Actress_tbl] ([Id], [ActressName]) VALUES (2, N'Morena Baccarin ')
INSERT [dbo].[Actress_tbl] ([Id], [ActressName]) VALUES (3, N'--SELECT--')
INSERT [dbo].[Actress_tbl] ([Id], [ActressName]) VALUES (4, N'Emilia Clarke')
INSERT [dbo].[Actress_tbl] ([Id], [ActressName]) VALUES (5, N'Emilia Clarke')
SET IDENTITY_INSERT [dbo].[Actress_tbl] OFF
/****** Object:  Table [dbo].[Actor_Tbl]    Script Date: 05/26/2018 17:40:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Actor_Tbl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Actor_Tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ActorName] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Sex] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOB] [date] NULL,
	[Bio] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
SET IDENTITY_INSERT [dbo].[Actor_Tbl] ON
INSERT [dbo].[Actor_Tbl] ([Id], [ActorName], [Sex], [DOB], [Bio]) VALUES (2, N'Josh Brolin', NULL, NULL, NULL)
INSERT [dbo].[Actor_Tbl] ([Id], [ActorName], [Sex], [DOB], [Bio]) VALUES (9, N'Millie Bobby Brown', N'Female', CAST(0xDC290B00 AS Date), N'Millie Bobby Brown is an English actress and model')
INSERT [dbo].[Actor_Tbl] ([Id], [ActorName], [Sex], [DOB], [Bio]) VALUES (4, N'Alden Ehrenreich', NULL, NULL, NULL)
INSERT [dbo].[Actor_Tbl] ([Id], [ActorName], [Sex], [DOB], [Bio]) VALUES (11, N'y', N'Female', CAST(0xCB3E0B00 AS Date), N'yyyy')
INSERT [dbo].[Actor_Tbl] ([Id], [ActorName], [Sex], [DOB], [Bio]) VALUES (7, N'Shahrukh Khan', N'Male', CAST(0x41F20A00 AS Date), N'Shah Rukh Khan, also known as SRK, is an Indian film actor')
SET IDENTITY_INSERT [dbo].[Actor_Tbl] OFF
