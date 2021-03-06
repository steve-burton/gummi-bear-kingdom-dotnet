USE [master]
GO
/****** Object:  Database [GummiBearKingdom]    Script Date: 2/11/2017 1:35:10 PM ******/
CREATE DATABASE [GummiBearKingdom]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GummiBearKingdom', FILENAME = N'C:\Users\Steve Burton\GummiBearKingdom.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GummiBearKingdom_log', FILENAME = N'C:\Users\Steve Burton\GummiBearKingdom_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GummiBearKingdom] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GummiBearKingdom].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GummiBearKingdom] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GummiBearKingdom] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GummiBearKingdom] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GummiBearKingdom] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GummiBearKingdom] SET ARITHABORT OFF 
GO
ALTER DATABASE [GummiBearKingdom] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GummiBearKingdom] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GummiBearKingdom] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GummiBearKingdom] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GummiBearKingdom] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GummiBearKingdom] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GummiBearKingdom] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GummiBearKingdom] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GummiBearKingdom] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GummiBearKingdom] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GummiBearKingdom] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GummiBearKingdom] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GummiBearKingdom] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GummiBearKingdom] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GummiBearKingdom] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GummiBearKingdom] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [GummiBearKingdom] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GummiBearKingdom] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GummiBearKingdom] SET  MULTI_USER 
GO
ALTER DATABASE [GummiBearKingdom] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GummiBearKingdom] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GummiBearKingdom] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GummiBearKingdom] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GummiBearKingdom] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GummiBearKingdom] SET QUERY_STORE = OFF
GO
USE [GummiBearKingdom]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [GummiBearKingdom]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/11/2017 1:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 2/11/2017 1:35:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Cost] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170210190551_Initial', N'1.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170210203700_MakeCostString', N'1.0.1')
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Cost], [Country], [Image], [Name]) VALUES (1, N'$2.50', N'Germany', N'http://candyasap.com/image/cache/data/gummi-bears-600x600.jpg', N'Gummi Bears')
INSERT [dbo].[Products] ([ProductId], [Cost], [Country], [Image], [Name]) VALUES (3, N'$3.00', N'Germany', N'https://i5.walmartimages.com/asr/426b0f31-f01c-4ca8-8c0e-9e2837b81627_1.55d56ac267f816a77a1a567c4d845e52.jpeg', N'Sour Golden Bears')
INSERT [dbo].[Products] ([ProductId], [Cost], [Country], [Image], [Name]) VALUES (4, N'$6.00', N'U.S.A.', N'http://iwantcaffeine.com/img/loud-truck-energy-gummi-bears-2-flavor-variety-three-1-oz-packets-each-of-citrus-and-berry-in-a-gift-box_29141_500.jpg', N'Energy Bears')
INSERT [dbo].[Products] ([ProductId], [Cost], [Country], [Image], [Name]) VALUES (5, N'$4.50', N'U.S.A.', N'http://www.images-iherb.com/l/YUE-01551-2.jpg', N'Organic Gummi Bears')
SET IDENTITY_INSERT [dbo].[Products] OFF
USE [master]
GO
ALTER DATABASE [GummiBearKingdom] SET  READ_WRITE 
GO
