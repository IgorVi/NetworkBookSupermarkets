USE [master]
GO
/****** Object:  Database [NetworkBookSupermarketsIgor]    Script Date: 15.04.2015 15:57:48 ******/
CREATE DATABASE [NetworkBookSupermarketsIgor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NetworkBookSupermarkets', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\NetworkBookSupermarkets.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NetworkBookSupermarkets_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\NetworkBookSupermarkets_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NetworkBookSupermarketsIgor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET ARITHABORT OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET RECOVERY FULL 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET  MULTI_USER 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'NetworkBookSupermarketsIgor', N'ON'
GO
USE [NetworkBookSupermarketsIgor]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 15.04.2015 15:57:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Book]    Script Date: 15.04.2015 15:57:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[id_genre] [int] NULL,
	[id_publishing] [int] NOT NULL,
	[id_author] [int] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Client]    Script Date: 15.04.2015 15:57:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 15.04.2015 15:57:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Genre]    Script Date: 15.04.2015 15:57:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Marketer]    Script Date: 15.04.2015 15:57:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marketer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[id_shop] [int] NULL,
 CONSTRAINT [PK_Marketer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Publishing]    Script Date: 15.04.2015 15:57:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publishing](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Publishing] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sale]    Script Date: 15.04.2015 15:57:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[id_book] [int] NOT NULL,
	[id_client] [int] NULL,
	[id_marketer] [int] NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Share]    Script Date: 15.04.2015 15:57:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Share](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[procent] [int] NULL,
 CONSTRAINT [PK_Share] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shop]    Script Date: 15.04.2015 15:57:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[id_country] [int] NOT NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Store]    Script Date: 15.04.2015 15:57:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[id_shop] [int] NOT NULL,
	[id_book] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[id_share] [int] NULL,
	[price] [float] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([id], [name]) VALUES (1, N'Джеффри Рихтер')
INSERT [dbo].[Author] ([id], [name]) VALUES (2, N'Герберт Шилдт')
INSERT [dbo].[Author] ([id], [name]) VALUES (3, N'Эрика Джеймс')
SET IDENTITY_INSERT [dbo].[Author] OFF
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([id], [name], [id_genre], [id_publishing], [id_author]) VALUES (1, N'CLR via C#. Программирование на платформе Microsoft .NET Framework 4.5 на языке C#', 1, 1, 1)
INSERT [dbo].[Book] ([id], [name], [id_genre], [id_publishing], [id_author]) VALUES (2, N'C++. Базовый курс', 2, 2, 2)
INSERT [dbo].[Book] ([id], [name], [id_genre], [id_publishing], [id_author]) VALUES (3, N'Пятьдесят оттенков серого', 3, 3, 3)
SET IDENTITY_INSERT [dbo].[Book] OFF
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([id], [name]) VALUES (1, N'Иванов')
INSERT [dbo].[Client] ([id], [name]) VALUES (2, N'Соколов')
INSERT [dbo].[Client] ([id], [name]) VALUES (3, N'Петров')
INSERT [dbo].[Client] ([id], [name]) VALUES (4, N'Сидоров')
SET IDENTITY_INSERT [dbo].[Client] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([id], [name]) VALUES (1, N'Украина')
INSERT [dbo].[Country] ([id], [name]) VALUES (2, N'Росия')
INSERT [dbo].[Country] ([id], [name]) VALUES (3, N'США')
INSERT [dbo].[Country] ([id], [name]) VALUES (4, N'Польша')
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Genre] ON 

INSERT [dbo].[Genre] ([id], [name]) VALUES (1, N'Учебное пособие')
INSERT [dbo].[Genre] ([id], [name]) VALUES (2, N'Программирование')
INSERT [dbo].[Genre] ([id], [name]) VALUES (3, N'Роман')
SET IDENTITY_INSERT [dbo].[Genre] OFF
SET IDENTITY_INSERT [dbo].[Marketer] ON 

INSERT [dbo].[Marketer] ([id], [name], [id_shop]) VALUES (1, N'Зайцев', 2)
INSERT [dbo].[Marketer] ([id], [name], [id_shop]) VALUES (2, N'Суворов', 3)
INSERT [dbo].[Marketer] ([id], [name], [id_shop]) VALUES (3, N'Орлов', 1)
SET IDENTITY_INSERT [dbo].[Marketer] OFF
SET IDENTITY_INSERT [dbo].[Publishing] ON 

INSERT [dbo].[Publishing] ([id], [name]) VALUES (1, N'ООО «Питер»')
INSERT [dbo].[Publishing] ([id], [name]) VALUES (2, N' Диалектика-Вильямс')
INSERT [dbo].[Publishing] ([id], [name]) VALUES (3, N'Эксмо')
SET IDENTITY_INSERT [dbo].[Publishing] OFF
SET IDENTITY_INSERT [dbo].[Sale] ON 

INSERT [dbo].[Sale] ([id], [price], [quantity], [id_book], [id_client], [id_marketer], [date]) VALUES (1, 499.5, 2, 1, 3, 1, CAST(0xB0390B00 AS Date))
INSERT [dbo].[Sale] ([id], [price], [quantity], [id_book], [id_client], [id_marketer], [date]) VALUES (2, 166, 6, 3, 1, 2, CAST(0x8D390B00 AS Date))
INSERT [dbo].[Sale] ([id], [price], [quantity], [id_book], [id_client], [id_marketer], [date]) VALUES (3, 285.4, 4, 2, 2, 3, CAST(0xB2390B00 AS Date))
INSERT [dbo].[Sale] ([id], [price], [quantity], [id_book], [id_client], [id_marketer], [date]) VALUES (4, 166, 1, 3, 1, 3, CAST(0xB7390B00 AS Date))
SET IDENTITY_INSERT [dbo].[Sale] OFF
SET IDENTITY_INSERT [dbo].[Share] ON 

INSERT [dbo].[Share] ([id], [name], [procent]) VALUES (1, N'Праздничная скидка', 10)
INSERT [dbo].[Share] ([id], [name], [procent]) VALUES (2, N'Распродажа', 30)
INSERT [dbo].[Share] ([id], [name], [procent]) VALUES (3, N'Однодневная скидка', 5)
SET IDENTITY_INSERT [dbo].[Share] OFF
SET IDENTITY_INSERT [dbo].[Shop] ON 

INSERT [dbo].[Shop] ([id], [name], [id_country]) VALUES (1, N'Киев', 1)
INSERT [dbo].[Shop] ([id], [name], [id_country]) VALUES (2, N'Москва', 2)
INSERT [dbo].[Shop] ([id], [name], [id_country]) VALUES (3, N'Нью-Йорк', 3)
SET IDENTITY_INSERT [dbo].[Shop] OFF
INSERT [dbo].[Store] ([id_shop], [id_book], [quantity], [id_share], [price]) VALUES (2, 1, 4, NULL, 499.5)
INSERT [dbo].[Store] ([id_shop], [id_book], [quantity], [id_share], [price]) VALUES (3, 2, 6, NULL, 285.4)
INSERT [dbo].[Store] ([id_shop], [id_book], [quantity], [id_share], [price]) VALUES (1, 3, 2, 1, 166)
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author] FOREIGN KEY([id_author])
REFERENCES [dbo].[Author] ([id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Author]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Genre] FOREIGN KEY([id_genre])
REFERENCES [dbo].[Genre] ([id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Genre]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Publishing] FOREIGN KEY([id_publishing])
REFERENCES [dbo].[Publishing] ([id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Publishing]
GO
ALTER TABLE [dbo].[Marketer]  WITH CHECK ADD  CONSTRAINT [FK_Marketer_Shop] FOREIGN KEY([id_shop])
REFERENCES [dbo].[Shop] ([id])
GO
ALTER TABLE [dbo].[Marketer] CHECK CONSTRAINT [FK_Marketer_Shop]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Book] FOREIGN KEY([id_book])
REFERENCES [dbo].[Book] ([id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sales_Book]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Client] FOREIGN KEY([id_client])
REFERENCES [dbo].[Client] ([id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sales_Client]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Marketer] FOREIGN KEY([id_marketer])
REFERENCES [dbo].[Marketer] ([id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sales_Marketer]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Country] FOREIGN KEY([id_country])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_Country]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Book1] FOREIGN KEY([id_book])
REFERENCES [dbo].[Book] ([id])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Book1]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Share] FOREIGN KEY([id_share])
REFERENCES [dbo].[Share] ([id])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Share]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Shop] FOREIGN KEY([id_shop])
REFERENCES [dbo].[Shop] ([id])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Shop]
GO
USE [master]
GO
ALTER DATABASE [NetworkBookSupermarketsIgor] SET  READ_WRITE 
GO
