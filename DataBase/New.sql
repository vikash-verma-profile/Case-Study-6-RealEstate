USE [master]
GO
/****** Object:  Database [RealEstateDb]    Script Date: 7/23/2022 6:06:57 PM ******/
CREATE DATABASE [RealEstateDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RealEstateDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RealEstateDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RealEstateDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RealEstateDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RealEstateDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RealEstateDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RealEstateDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RealEstateDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RealEstateDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RealEstateDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RealEstateDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [RealEstateDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RealEstateDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RealEstateDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RealEstateDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RealEstateDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RealEstateDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RealEstateDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RealEstateDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RealEstateDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RealEstateDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RealEstateDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RealEstateDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RealEstateDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RealEstateDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RealEstateDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RealEstateDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RealEstateDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RealEstateDb] SET RECOVERY FULL 
GO
ALTER DATABASE [RealEstateDb] SET  MULTI_USER 
GO
ALTER DATABASE [RealEstateDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RealEstateDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RealEstateDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RealEstateDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RealEstateDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RealEstateDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RealEstateDb', N'ON'
GO
ALTER DATABASE [RealEstateDb] SET QUERY_STORE = OFF
GO
USE [RealEstateDb]
GO
/****** Object:  Table [dbo].[TblLogin]    Script Date: 7/23/2022 6:06:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblLogin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](200) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[MObileNumber] [int] NULL,
	[isAdmin] [int] NULL,
	[isVender] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOrder]    Script Date: 7/23/2022 6:06:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOrder](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](200) NULL,
	[UserName] [varchar](200) NULL,
	[PropertyImage] [varchar](100) NOT NULL,
	[VenderName] [varchar](200) NULL,
	[Email] [varchar](200) NULL,
	[Address] [varchar](200) NULL,
	[HousePrice] [int] NULL,
	[VendorUserName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblProperty]    Script Date: 7/23/2022 6:06:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblProperty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](200) NULL,
	[PropertyName] [varchar](200) NULL,
	[PropertyDescription] [varchar](500) NULL,
	[PropertyImage] [varchar](100) NULL,
	[PropertySize] [varchar](100) NULL,
	[Propertylocation] [varchar](200) NULL,
	[PropertyPrice] [int] NULL,
	[Discount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblVenderProperty]    Script Date: 7/23/2022 6:06:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblVenderProperty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](200) NOT NULL,
	[Email] [varchar](200) NULL,
	[PropertyName] [varchar](200) NOT NULL,
	[PropertyDescription] [varchar](500) NULL,
	[PropertyImage] [varchar](100) NOT NULL,
	[PropertySize] [varchar](100) NOT NULL,
	[Propertylocation] [varchar](200) NOT NULL,
	[PropertyPrice] [int] NULL,
	[Discount] [int] NULL,
	[IsApproved] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblLogin] ON 

INSERT [dbo].[TblLogin] ([Id], [UserName], [Password], [MObileNumber], [isAdmin], [isVender]) VALUES (1, N'test@test.com', N'12', 903245666, 1, 0)
INSERT [dbo].[TblLogin] ([Id], [UserName], [Password], [MObileNumber], [isAdmin], [isVender]) VALUES (2, N'asd', N'123456', 903245666, NULL, 1)
INSERT [dbo].[TblLogin] ([Id], [UserName], [Password], [MObileNumber], [isAdmin], [isVender]) VALUES (3, N'vikash', N'123', 903245666, NULL, 1)
INSERT [dbo].[TblLogin] ([Id], [UserName], [Password], [MObileNumber], [isAdmin], [isVender]) VALUES (4, N'asdadsasd', N'123', 903245666, NULL, 1)
INSERT [dbo].[TblLogin] ([Id], [UserName], [Password], [MObileNumber], [isAdmin], [isVender]) VALUES (6, N'asd@asdasdasd', N'asd', 903245666, NULL, 1)
INSERT [dbo].[TblLogin] ([Id], [UserName], [Password], [MObileNumber], [isAdmin], [isVender]) VALUES (7, N'abc@hcl.com', N'1234', 903245666, NULL, 0)
SET IDENTITY_INSERT [dbo].[TblLogin] OFF
GO
SET IDENTITY_INSERT [dbo].[TblOrder] ON 

INSERT [dbo].[TblOrder] ([OrderId], [FullName], [UserName], [PropertyImage], [VenderName], [Email], [Address], [HousePrice], [VendorUserName]) VALUES (1, N'ad', N'asd', N'asd', N'asd', N'asd', N'asd', 0, NULL)
SET IDENTITY_INSERT [dbo].[TblOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[TblProperty] ON 

INSERT [dbo].[TblProperty] ([Id], [UserName], [PropertyName], [PropertyDescription], [PropertyImage], [PropertySize], [Propertylocation], [PropertyPrice], [Discount]) VALUES (1, NULL, N'raj-villa', N'near to pune', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblProperty] OFF
GO
SET IDENTITY_INSERT [dbo].[TblVenderProperty] ON 

INSERT [dbo].[TblVenderProperty] ([Id], [UserName], [Email], [PropertyName], [PropertyDescription], [PropertyImage], [PropertySize], [Propertylocation], [PropertyPrice], [Discount], [IsApproved]) VALUES (1, N'shubhangi', N's@gmail.com', N'raj-villa', N'near to pune', N'c1.jpg', N'40', N'mumbai', 345091, 20, 1)
INSERT [dbo].[TblVenderProperty] ([Id], [UserName], [Email], [PropertyName], [PropertyDescription], [PropertyImage], [PropertySize], [Propertylocation], [PropertyPrice], [Discount], [IsApproved]) VALUES (4, N'Ram', N'', N'Test House', N'asd', N'', N'asd', N'asd', 12, 12, 1)
INSERT [dbo].[TblVenderProperty] ([Id], [UserName], [Email], [PropertyName], [PropertyDescription], [PropertyImage], [PropertySize], [Propertylocation], [PropertyPrice], [Discount], [IsApproved]) VALUES (6, N'asdasd', N'asdasd', N'adsasd', N'asdasd', N'asdasd', N'asdasd', N'asdasd', 100, 123, NULL)
INSERT [dbo].[TblVenderProperty] ([Id], [UserName], [Email], [PropertyName], [PropertyDescription], [PropertyImage], [PropertySize], [Propertylocation], [PropertyPrice], [Discount], [IsApproved]) VALUES (7, N'ajsdgasjdgkkj', N'asdjgasdjhg', N'adasdjhgasdj', N'akjdsgasjdgasd ', N'asdg', N'1000', N'asd', 100, 12, NULL)
INSERT [dbo].[TblVenderProperty] ([Id], [UserName], [Email], [PropertyName], [PropertyDescription], [PropertyImage], [PropertySize], [Propertylocation], [PropertyPrice], [Discount], [IsApproved]) VALUES (8, N'asdkjhasdkas dkjgasd', N'askjdhaskjdg asdg ash', N'asdasdg', N'askjgdsk asjh gasd ', N'askdjaskjd ', N' gaskjda agds', N'asdkj a gsdkj asd ', 129, 1209, NULL)
SET IDENTITY_INSERT [dbo].[TblVenderProperty] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TblLogin__C9F284567351C9BD]    Script Date: 7/23/2022 6:06:57 PM ******/
ALTER TABLE [dbo].[TblLogin] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TblOrder__A9D10534A15083D9]    Script Date: 7/23/2022 6:06:57 PM ******/
ALTER TABLE [dbo].[TblOrder] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TblVende__A9D105342EC68507]    Script Date: 7/23/2022 6:06:57 PM ******/
ALTER TABLE [dbo].[TblVenderProperty] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [RealEstateDb] SET  READ_WRITE 
GO
