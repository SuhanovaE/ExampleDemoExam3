USE [master]
GO
/****** Object:  Database [WheelDB]    Script Date: 05.09.2023 10:11:52 ******/
CREATE DATABASE [WheelDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WheelDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WheelDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WheelDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WheelDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WheelDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WheelDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WheelDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WheelDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WheelDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WheelDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WheelDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [WheelDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WheelDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WheelDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WheelDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WheelDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WheelDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WheelDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WheelDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WheelDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WheelDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WheelDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WheelDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WheelDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WheelDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WheelDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WheelDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WheelDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WheelDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WheelDB] SET  MULTI_USER 
GO
ALTER DATABASE [WheelDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WheelDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WheelDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WheelDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WheelDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WheelDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WheelDB] SET QUERY_STORE = OFF
GO
USE [WheelDB]
GO
/****** Object:  Table [dbo].[Coupon]    Script Date: 05.09.2023 10:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupon](
	[id_coupon] [int] IDENTITY(1,1) NOT NULL,
	[order_date] [date] NULL,
	[fk_order] [int] NULL,
	[fk_order_total] [int] NULL,
	[fk_product_discount] [int] NULL,
	[fk_point_of_issue_name] [int] NULL,
	[code] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 05.09.2023 10:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id_order] [int] IDENTITY(1,1) NOT NULL,
	[fk_product_name] [int] NULL,
	[fk_product_photo] [int] NULL,
	[fk_product_description] [int] NULL,
	[fk_product_producer] [int] NULL,
	[fk_product_price] [int] NULL,
	[fk_product_discount] [int] NULL,
	[total] [int] NULL,
	[fk_status] [int] NULL,
	[fk_point_of_issue_name] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointOfIssue]    Script Date: 05.09.2023 10:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointOfIssue](
	[id_point_of_issue] [int] IDENTITY(1,1) NOT NULL,
	[name_point_of_issue] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05.09.2023 10:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id_product] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[photo] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[producer] [nvarchar](max) NULL,
	[price] [int] NULL,
	[discount] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 05.09.2023 10:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[id_status] [int] IDENTITY(1,1) NOT NULL,
	[status_name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [WheelDB] SET  READ_WRITE 
GO
