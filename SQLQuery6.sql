USE [master]
GO
/****** Object:  Database [Oshepkov-baza]    Script Date: 21.12.2021 11:58:29 ******/
CREATE DATABASE [�������]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'�������', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\oshepkov-baza.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'�������_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Oshepkov-baza_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [�������2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sessia2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Oshepkov-baza] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET ARITHABORT OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Oshepkov-baza] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Oshepkov-baza] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Oshepkov-baza] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Oshepkov-baza] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET RECOVERY FULL 
GO
ALTER DATABASE [Oshepkov-baza] SET  MULTI_USER 
GO
ALTER DATABASE [Oshepkov-baza] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Oshepkov-baza] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Oshepkov-baza] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Oshepkov-baza] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Oshepkov-baza] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Morgunov-baza2', N'ON'
GO
ALTER DATABASE [Oshepkov-baza] SET QUERY_STORE = OFF
GO
USE [Sessia2]
GO
/****** Object:  Table [dbo].[��������]    Script Date: 21.12.2021 11:58:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[��������](
	[���_��������] [int] NOT NULL,
	[���_���������������] [int] NULL,
	[���] [nvarchar](50) NULL,
	[�����] [nvarchar](50) NULL,
 CONSTRAINT [PK_��������] PRIMARY KEY CLUSTERED 
(
	[���_��������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[�����]    Script Date: 21.12.2021 11:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[�����](
	[���_������] [int] NOT NULL,
	[���_������] [int] NULL,
	[��������_������] [nvarchar](50) NULL,
 CONSTRAINT [PK_�����] PRIMARY KEY CLUSTERED 
(
	[���_������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[���������]    Script Date: 21.12.2021 11:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[���������](
	[���_���������] [int] NOT NULL,
	[���_����������������] [int] NULL,
	[���_������] [int] NULL,
	[����_���������] [date] NULL,
	[�����_���������] [int] NULL,
	[������] [nvarchar](50) NULL,
 CONSTRAINT [PK_���������] PRIMARY KEY CLUSTERED 
(
	[���_���������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[�������1]    Script Date: 21.12.2021 11:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[�������1](
	[�����_��������] [int] NOT NULL,
	[���_��������] [nchar](50) NULL,
	[�����] [nvarchar](50) NULL,
	[�����_��������] [int] NULL,
	[�����_��������] [nchar](10) NOT NULL,
	[����_���������_��������] [date] NULL,
	[�����_���������] [int] NULL,
	[����_���������] [date] NULL,
	[�����_���������] [time](7) NULL,
	[���_������] [int] NULL,
	[��������_������] [nchar](50) NULL,
	[�����_���������_1���] [money] NOT NULL,
	[������] [nvarchar](50) NULL,
 CONSTRAINT [PK_�������1] PRIMARY KEY CLUSTERED 
(
	[�����_��������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[������]    Script Date: 21.12.2021 11:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[������](
	[���_������] [int] NOT NULL,
	[�����] [int] NULL,
 CONSTRAINT [PK_������] PRIMARY KEY CLUSTERED 
(
	[���_������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[��������_���������]    Script Date: 21.12.2021 11:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[��������_���������](
	[��������_���������] [int] NOT NULL,
	[���_���������] [int] NOT NULL,
	[�����_��������] [nchar](20) NOT NULL,
	[�����_��������] [nvarchar](50) NOT NULL,
	[����_���������_��������] [date] NOT NULL,
 CONSTRAINT [PK_��������_���������] PRIMARY KEY CLUSTERED 
(
	[��������_���������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[��������]  WITH CHECK ADD  CONSTRAINT [FK_��������_��������_���������] FOREIGN KEY([���_���������������])
REFERENCES [dbo].[��������_���������] ([��������_���������])
GO
ALTER TABLE [dbo].[��������] CHECK CONSTRAINT [FK_��������_��������_���������]
GO
ALTER TABLE [dbo].[�����]  WITH CHECK ADD  CONSTRAINT [FK_�����_������] FOREIGN KEY([���_������])
REFERENCES [dbo].[������] ([���_������])
GO
ALTER TABLE [dbo].[�����] CHECK CONSTRAINT [FK_�����_������]
GO
ALTER TABLE [dbo].[���������]  WITH CHECK ADD  CONSTRAINT [FK_���������_�����] FOREIGN KEY([���_������])
REFERENCES [dbo].[�����] ([���_������])
GO
ALTER TABLE [dbo].[���������] CHECK CONSTRAINT [FK_���������_�����]
GO
ALTER TABLE [dbo].[��������_���������]  WITH CHECK ADD  CONSTRAINT [FK_��������_���������_���������] FOREIGN KEY([���_���������])
REFERENCES [dbo].[���������] ([���_���������])
GO
ALTER TABLE [dbo].[��������_���������] CHECK CONSTRAINT [FK_��������_���������_���������]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������� 1���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'������', @level2type=N'COLUMN',@level2name=N'�����'
GO
USE [master]
GO
ALTER DATABASE [Morgunov-baza2] SET  READ_WRITE 
GO