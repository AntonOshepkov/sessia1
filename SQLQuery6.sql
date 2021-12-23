USE [master]
GO
/****** Object:  Database [Oshepkov-baza]    Script Date: 21.12.2021 11:58:29 ******/
CREATE DATABASE [Экзамен]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Экзамен', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\oshepkov-baza.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Экзамен_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Oshepkov-baza_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Экзамен2] SET COMPATIBILITY_LEVEL = 140
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
/****** Object:  Table [dbo].[Абоненты]    Script Date: 21.12.2021 11:58:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Абоненты](
	[Код_абонента] [int] NOT NULL,
	[Код_ТелефонАбонента] [int] NULL,
	[ФИО] [nvarchar](50) NULL,
	[Адрес] [nvarchar](50) NULL,
 CONSTRAINT [PK_Абоненты] PRIMARY KEY CLUSTERED 
(
	[Код_абонента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Город]    Script Date: 21.12.2021 11:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Город](
	[Код_города] [int] NOT NULL,
	[Код_тарифа] [int] NULL,
	[Название_города] [nvarchar](50) NULL,
 CONSTRAINT [PK_Город] PRIMARY KEY CLUSTERED 
(
	[Код_города] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Разговоры]    Script Date: 21.12.2021 11:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Разговоры](
	[Код_разговора] [int] NOT NULL,
	[Код_ТелефонаАбонента] [int] NULL,
	[Код_города] [int] NULL,
	[Дата_разговора] [date] NULL,
	[Время_разговора] [int] NULL,
	[Оплата] [nvarchar](50) NULL,
 CONSTRAINT [PK_Разговоры] PRIMARY KEY CLUSTERED 
(
	[Код_разговора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Таблица1]    Script Date: 21.12.2021 11:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Таблица1](
	[Номер_абонента] [int] NOT NULL,
	[ФИО_Абонента] [nchar](50) NULL,
	[Адрес] [nvarchar](50) NULL,
	[Номер_телефона] [int] NULL,
	[Номер_договора] [nchar](10) NOT NULL,
	[Дата_установки_телефона] [date] NULL,
	[Номер_разговора] [int] NULL,
	[Дата_разговора] [date] NULL,
	[Время_разговора] [time](7) NULL,
	[Код_города] [int] NULL,
	[Название_города] [nchar](50) NULL,
	[Тариф_стоимость_1мин] [money] NOT NULL,
	[Оплаты] [nvarchar](50) NULL,
 CONSTRAINT [PK_Таблица1] PRIMARY KEY CLUSTERED 
(
	[Номер_абонента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Тарифы]    Script Date: 21.12.2021 11:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Тарифы](
	[Код_тарифа] [int] NOT NULL,
	[Тариф] [int] NULL,
 CONSTRAINT [PK_Тарифы] PRIMARY KEY CLUSTERED 
(
	[Код_тарифа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Телефоны_абонентов]    Script Date: 21.12.2021 11:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Телефоны_абонентов](
	[Телефоны_абонентов] [int] NOT NULL,
	[Код_разговора] [int] NOT NULL,
	[Номер_телефона] [nchar](20) NOT NULL,
	[Номер_договора] [nvarchar](50) NOT NULL,
	[Дата_установки_телефона] [date] NOT NULL,
 CONSTRAINT [PK_Телефоны_абонентов] PRIMARY KEY CLUSTERED 
(
	[Телефоны_абонентов] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Абоненты]  WITH CHECK ADD  CONSTRAINT [FK_Абоненты_Телефоны_абонентов] FOREIGN KEY([Код_ТелефонАбонента])
REFERENCES [dbo].[Телефоны_абонентов] ([Телефоны_абонентов])
GO
ALTER TABLE [dbo].[Абоненты] CHECK CONSTRAINT [FK_Абоненты_Телефоны_абонентов]
GO
ALTER TABLE [dbo].[Город]  WITH CHECK ADD  CONSTRAINT [FK_Город_Тарифы] FOREIGN KEY([Код_тарифа])
REFERENCES [dbo].[Тарифы] ([Код_тарифа])
GO
ALTER TABLE [dbo].[Город] CHECK CONSTRAINT [FK_Город_Тарифы]
GO
ALTER TABLE [dbo].[Разговоры]  WITH CHECK ADD  CONSTRAINT [FK_Разговоры_Город] FOREIGN KEY([Код_города])
REFERENCES [dbo].[Город] ([Код_города])
GO
ALTER TABLE [dbo].[Разговоры] CHECK CONSTRAINT [FK_Разговоры_Город]
GO
ALTER TABLE [dbo].[Телефоны_абонентов]  WITH CHECK ADD  CONSTRAINT [FK_Телефоны_абонентов_Разговоры] FOREIGN KEY([Код_разговора])
REFERENCES [dbo].[Разговоры] ([Код_разговора])
GO
ALTER TABLE [dbo].[Телефоны_абонентов] CHECK CONSTRAINT [FK_Телефоны_абонентов_Разговоры]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'стоимость 1мин' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Тарифы', @level2type=N'COLUMN',@level2name=N'Тариф'
GO
USE [master]
GO
ALTER DATABASE [Morgunov-baza2] SET  READ_WRITE 
GO