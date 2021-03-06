USE [master]
GO
/****** Object:  Database [eShop]    Script Date: 4/13/2021 12:22:14 AM ******/
CREATE DATABASE [eShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eShop', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\eShop.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'eShop_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\eShop_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [eShop] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [eShop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [eShop] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [eShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eShop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [eShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [eShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [eShop] SET  MULTI_USER 
GO
ALTER DATABASE [eShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [eShop]
GO
/****** Object:  Table [dbo].[aboutus]    Script Date: 4/13/2021 12:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aboutus](
	[a_id] [int] IDENTITY(1,1) NOT NULL,
	[a_welcome] [varchar](500) NULL,
	[a_description] [varchar](500) NULL,
	[a_message] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[a_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
insert into aboutus values('Welcome to e-shop, your number one source for all things . We are dedicated to providing you the very best of product, with an emphasis on fast delivery.'
							,'Founded in 2020 by Drinor and Meriton, e-shop has come a long way from its beginnings in UBT. When they first started out, his passion for eco-friendly cleaning products drove them to start their own business.'
							,'We hope you enjoy our products as much as we enjoy offering them to you. If you have any questions or comments, please dont hesitate to contact us.')
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cart]    Script Date: 4/13/2021 12:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[cart_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[p_id] [int] NULL,
	[product_quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

use eShop
insert into cart values(101,1000,1)
select * from cart where user_id=100
GO
/****** Object:  Table [dbo].[contact]    Script Date: 4/13/2021 12:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contact](
	[c_id] [int] IDENTITY(1,1) NOT NULL,
	[c_name] [varchar](255) NOT NULL,
	[c_lastname] [varchar](255) NOT NULL,
	[c_email] [varchar](255) NOT NULL,
	[c_message] [varchar](255) NOT NULL,
	[c_country] [varchar](255) NOT NULL,
	[c_age] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[product]    Script Date: 4/13/2021 12:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product](
	[p_id] [int] IDENTITY(1000,1) NOT NULL,
	[p_name] [varchar](255) NOT NULL,
	[p_description] [varchar](255) NOT NULL,
	[p_performance] [varchar](255) NOT NULL,
	[p_image] [varchar](255) NOT NULL,
	[p_price] [float] NOT NULL,
	[p_code] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[p_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
select * from product
insert into product values('Iphone 11 PRO','11 inch, amoled screen, 256 GB memory','100MP Camera, octa core processor','iphone11.jpeg',859.99,'11PRO')
update product set p_description='Smartphone' where p_price=859.99
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[slider]    Script Date: 4/13/2021 12:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[slider](
	[s_id] [int] IDENTITY(1,1) NOT NULL,
	[s_image] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
insert into slider values('slide1.png')
update slider set s_image='slider7.png' where s_image='slider2.jpeg'
select count(s_id) from slider
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 4/13/2021 12:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[u_id] [int] IDENTITY(100,1) NOT NULL,
	[u_name] [varchar](80) NOT NULL,
	[u_lastname] [varchar](80) NOT NULL,
	[u_email] [varchar](255) NOT NULL,
	[u_password] [varchar](100) NOT NULL,
	[u_isAdmin] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

use eShop
insert into users values('Meriton','Gashi','meriton@gmail.com','1234567899',1)

select *
from users
where u_email='meriton@gmail.com'

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[cart] ADD  DEFAULT ((1)) FOR [product_quantity]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [P] FOREIGN KEY([p_id])
REFERENCES [dbo].[product] ([p_id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [P]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [U] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([u_id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [U]
GO
USE [master]
GO
ALTER DATABASE [eShop] SET  READ_WRITE 
GO
