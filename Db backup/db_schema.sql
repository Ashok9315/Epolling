USE [master]
GO
/****** Object:  Database [voting]    Script Date: 10/9/2017 4:01:16 AM ******/
CREATE DATABASE [voting]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'voting', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\voting.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'voting_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\voting_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [voting] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [voting].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [voting] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [voting] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [voting] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [voting] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [voting] SET ARITHABORT OFF 
GO
ALTER DATABASE [voting] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [voting] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [voting] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [voting] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [voting] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [voting] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [voting] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [voting] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [voting] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [voting] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [voting] SET  ENABLE_BROKER 
GO
ALTER DATABASE [voting] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [voting] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [voting] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [voting] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [voting] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [voting] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [voting] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [voting] SET RECOVERY FULL 
GO
ALTER DATABASE [voting] SET  MULTI_USER 
GO
ALTER DATABASE [voting] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [voting] SET DB_CHAINING OFF 
GO
ALTER DATABASE [voting] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [voting] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [voting]
GO
/****** Object:  Table [dbo].[candidates]    Script Date: 10/9/2017 4:01:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[candidates](
	[cid] [nvarchar](15) NULL,
	[eid] [int] NULL,
	[ename] [nvarchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[elections]    Script Date: 10/9/2017 4:01:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[elections](
	[id] [int] IDENTITY(1000,1) NOT NULL,
	[title] [nvarchar](30) NULL,
	[starttime] [datetime] NULL,
	[endtime] [datetime] NULL,
	[descriptionelection] [nvarchar](100) NULL,
	[bme] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[selected_candidates]    Script Date: 10/9/2017 4:01:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[selected_candidates](
	[cid] [nvarchar](15) NULL,
	[eid] [int] NULL,
	[ename] [nvarchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[symbollist]    Script Date: 10/9/2017 4:01:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[symbollist](
	[name] [varchar](30) NULL,
	[status] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users1]    Script Date: 10/9/2017 4:01:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[adharid] [varchar](30) NOT NULL,
	[fname] [varchar](30) NULL,
	[lname] [varchar](30) NULL,
	[state] [varchar](30) NULL,
	[mobile] [varchar](30) NULL,
	[email] [varchar](30) NULL,
	[bdate] [varchar](30) NULL,
	[district] [varchar](30) NULL,
	[city] [varchar](30) NULL,
	[pin] [varchar](30) NULL,
	[area] [varchar](30) NULL,
	[street] [varchar](30) NULL,
	[gender] [varchar](30) NULL,
	[password] [varchar](30) NOT NULL,
	[photo] [varchar](100) NULL,
	[radomno] [varchar](100) NULL,
	[symbol] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[votes]    Script Date: 10/9/2017 4:01:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[votes](
	[eid] [int] NOT NULL,
	[title] [nvarchar](30) NOT NULL,
	[candidate] [nvarchar](15) NOT NULL,
	[voter] [nvarchar](15) NOT NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [voting] SET  READ_WRITE 
GO
