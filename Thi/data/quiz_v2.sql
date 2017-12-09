/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [quiz]    Script Date: 12/10/2017 12:31:49 AM ******/
CREATE DATABASE [quiz]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'quiz', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\quiz.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'quiz_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\quiz_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [quiz] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [quiz].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [quiz] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [quiz] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [quiz] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [quiz] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [quiz] SET ARITHABORT OFF 
GO
ALTER DATABASE [quiz] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [quiz] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [quiz] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [quiz] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [quiz] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [quiz] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [quiz] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [quiz] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [quiz] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [quiz] SET  DISABLE_BROKER 
GO
ALTER DATABASE [quiz] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [quiz] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [quiz] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [quiz] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [quiz] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [quiz] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [quiz] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [quiz] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [quiz] SET  MULTI_USER 
GO
ALTER DATABASE [quiz] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [quiz] SET DB_CHAINING OFF 
GO
ALTER DATABASE [quiz] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [quiz] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [quiz] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [quiz] SET QUERY_STORE = OFF
GO
USE [quiz]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [quiz]
GO
/****** Object:  Table [dbo].[baithi]    Script Date: 12/10/2017 12:31:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[baithi](
	[made] [int] NOT NULL,
	[ngaythi] [bigint] NULL,
	[socaudung] [int] NULL,
 CONSTRAINT [PK_baithi] PRIMARY KEY CLUSTERED 
(
	[made] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cauhoi]    Script Date: 12/10/2017 12:31:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cauhoi](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[thongtincauhoi] [nvarchar](max) NULL,
	[dapana] [nvarchar](max) NULL,
	[dapanb] [nvarchar](max) NULL,
	[dapanc] [nvarchar](max) NULL,
	[dapand] [nvarchar](max) NULL,
	[dapandung] [varchar](10) NULL,
	[mamucdo] [int] NULL,
 CONSTRAINT [PK_cauhoi] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitietde]    Script Date: 12/10/2017 12:31:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietde](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[made] [int] NULL,
	[macauhoi] [varchar](max) NULL,
 CONSTRAINT [PK_chitietde] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dethi]    Script Date: 12/10/2017 12:31:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dethi](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[ngaytao] [bigint] NULL,
	[mamucdo] [int] NULL,
	[masoluongcauhoi] [int] NULL,
 CONSTRAINT [PK_dethi] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mucdo]    Script Date: 12/10/2017 12:31:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mucdo](
	[mamucdo] [int] NOT NULL,
	[tenmucdo] [nvarchar](50) NULL,
 CONSTRAINT [PK_mucdo] PRIMARY KEY CLUSTERED 
(
	[mamucdo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phanchiacauhoi]    Script Date: 12/10/2017 12:31:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phanchiacauhoi](
	[mamucdo] [int] NOT NULL,
	[masoluong] [int] NOT NULL,
	[mucdocauhoi] [int] NOT NULL,
	[soluongcau] [int] NULL,
 CONSTRAINT [PK_phanchiacauhoi] PRIMARY KEY CLUSTERED 
(
	[masoluong] ASC,
	[mamucdo] ASC,
	[mucdocauhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phanhoi]    Script Date: 12/10/2017 12:31:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phanhoi](
	[ma] [int] NOT NULL,
	[phanhoi] [nvarchar](max) NULL,
	[traloi] [nvarchar](max) NULL,
	[mabaithi] [int] NULL,
 CONSTRAINT [PK_phanhoi] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[soluongcauhoi]    Script Date: 12/10/2017 12:31:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[soluongcauhoi](
	[masoluong] [int] NOT NULL,
	[tongsocauhoi] [int] NULL,
	[thoigianthi] [int] NULL,
 CONSTRAINT [PK_soluongcauhoi] PRIMARY KEY CLUSTERED 
(
	[masoluong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cauhoi] ON 

INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (1, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (2, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (3, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (4, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (5, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (6, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (7, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (8, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (9, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (10, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (11, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (12, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (13, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (15, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (16, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (17, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (18, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (19, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (20, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (21, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (22, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (23, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (24, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (25, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (26, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (27, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (28, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (29, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (30, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (31, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (32, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (33, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (34, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (35, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (36, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (37, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (38, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (39, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (40, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (41, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (42, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (43, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (44, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (45, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (46, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (47, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (48, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (49, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (50, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (51, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (52, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (53, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (54, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (55, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (56, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (57, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (58, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (59, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (60, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (61, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (62, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (63, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (64, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (65, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (66, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (67, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (68, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (69, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (70, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (71, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (72, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (73, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (74, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (75, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (76, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (77, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (78, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (79, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (80, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (81, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (82, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (83, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (84, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (85, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (86, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (87, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (88, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (89, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (90, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (91, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (92, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (93, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (94, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (95, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (96, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (97, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (98, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (99, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (100, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
GO
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (101, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (102, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (103, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (104, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (105, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (106, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (107, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (108, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (109, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (110, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (111, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (112, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (113, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (114, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (115, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (116, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (117, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (118, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (119, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (120, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (121, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (122, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (123, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (124, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (125, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (126, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (127, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (128, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (129, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (130, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (131, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (132, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (133, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (134, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (135, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (136, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (137, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (138, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (139, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (140, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (141, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (142, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (143, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (144, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (145, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (146, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (147, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (148, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (149, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (150, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (151, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (152, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (153, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (154, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (155, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (156, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (157, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (158, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (159, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (160, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (161, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (162, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (163, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (164, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (165, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (166, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (167, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (168, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (169, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (170, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (171, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (172, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (173, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (174, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (175, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (176, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (177, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (178, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (179, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (180, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (181, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (182, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (183, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (184, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (185, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (186, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (187, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (188, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (189, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (190, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (191, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (192, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (193, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (194, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (195, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (196, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (197, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (198, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (199, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (200, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
GO
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (201, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (202, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (203, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (204, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (205, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (206, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (207, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (208, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (209, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (210, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (211, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (212, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (213, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (214, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (215, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (216, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (217, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (218, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (219, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (220, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (221, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (222, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (223, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (224, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (225, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (226, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (227, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (228, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (229, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (230, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (231, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (232, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (233, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (234, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (235, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (236, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (237, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (238, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (239, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (240, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (241, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (242, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (243, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (244, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (245, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (246, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (247, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (248, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (249, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (250, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (251, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (252, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (253, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (254, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (255, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (256, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (257, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (258, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (259, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (260, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (261, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (262, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (263, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (264, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (265, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (266, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (267, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (268, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (269, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (270, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (271, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (272, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (273, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (274, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (275, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (276, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (277, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (278, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (279, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (280, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (281, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (282, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (283, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (284, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (285, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (286, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (287, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (288, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (289, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (290, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (291, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (292, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (293, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (294, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (295, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (296, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (297, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (298, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (299, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (300, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
GO
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (301, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (302, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (303, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (304, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (305, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (306, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (307, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (308, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (309, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (310, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (311, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (312, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (313, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (314, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (315, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (316, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (317, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (318, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (319, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (320, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (321, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (322, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (323, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (324, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (325, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (326, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (327, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (328, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (329, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (330, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (331, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (332, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (333, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (334, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (335, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (336, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (337, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (338, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (339, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (340, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (341, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (342, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (343, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (344, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (345, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (346, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (347, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (348, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (349, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (350, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (351, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (352, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (353, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (354, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (355, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (356, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (357, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (358, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (359, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (360, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (361, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (362, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (363, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (364, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (365, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (366, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (367, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (368, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (369, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (370, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (371, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (372, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (373, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (374, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (375, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (376, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (377, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (378, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (379, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (380, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (381, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (382, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (383, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (384, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (385, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (386, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (387, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (388, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (389, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (390, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (391, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (392, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (393, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (394, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (395, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (396, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (397, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (398, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (399, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (400, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
GO
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (401, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (402, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (403, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (404, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (405, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (406, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (407, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (408, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (409, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (410, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (411, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (412, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (413, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (414, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (415, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (416, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (417, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (418, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (419, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (420, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (421, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (422, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (423, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (424, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (425, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (426, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (427, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (428, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (429, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (430, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (431, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (432, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (433, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (434, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (435, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (436, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (437, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (438, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (439, N'The recent heavy rains have helped to ease the water ______', N'plenty ', N'poverty ', N'shortage ', N'abundance ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (440, N'In a formal interview, it is essential to maintain good eye ______ with the interviewers.', N'link ', N'connection ', N'touch ', N'contact ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (441, N'Before going to bed, he wanted some tea but there was ______ left', N'nothing ', N'no', N'any ', N'a few ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (442, N'You should look up the meaning of new words in the dictionary ______ misuse them', N'so that not to ', N'so not to ', N'so that not ', N'so as not to', N'D', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (443, N'______ smoking is a causative factor of many diseases, there is no ban on tobacco advertising. ', N'However ', N'Therefore ', N'Although ', N'In spite of ', N'C', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (444, N'When Peter was a child, there ______ a cinema near his house', N'used to be ', N'used to have ', N'used to be being ', N'used to have been ', N'B', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (445, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (446, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (447, N'After the car crash last night, all the injured ______ to the hospital in an ambulance. ', N'was rushing ', N'were rushed ', N'was rushed ', N'were rushing ', N'A', 1)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (448, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (449, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (450, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (451, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (452, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (453, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (454, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (455, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (456, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (457, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (458, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (459, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (460, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (461, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (462, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (463, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (464, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (465, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (466, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (467, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (468, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (469, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (470, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (471, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (472, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (473, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (474, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (475, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (476, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (477, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (478, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (479, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (480, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (481, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (482, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (483, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (484, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (485, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (486, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (487, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (488, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (489, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (490, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (491, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (492, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (493, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (494, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (495, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (496, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (497, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (498, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (499, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (500, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
GO
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (501, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (502, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (503, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (504, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (505, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (506, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (507, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (508, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (509, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (510, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (511, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (512, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (513, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (514, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (515, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (516, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (517, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (518, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (519, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (520, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (521, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (522, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (523, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (524, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (525, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (526, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (527, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (528, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (529, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (530, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (531, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (532, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (533, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (534, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (535, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (536, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (537, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (538, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (539, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (540, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (541, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (542, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (543, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (544, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (545, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (546, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (547, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (548, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (549, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (550, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (551, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (552, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (553, N'Working as a volunteer gives her a chance to develop her interpersonal skills, promote friendship, and ______ her own talent. ', N'discover ', N'discovered ', N'discovering ', N'to discover ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (554, N'Mary: “Thanks a lot for your help.” 
	 	John:  “______.” 
', N'My happiness ', N'My excitement ', N'My delight', N'My pleasure ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (555, N'It was so kind of her to put me ______ while I was on a business trip in her town', N'down ', N'off ', N'up', N'in ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (556, N'As a(n) ______ girl, she found it difficult to socialise with other students in the class.', N'reserved ', N'ashamed ', N'dynamic ', N'industrious ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (557, N'He is coming ______ a cold after a night out in the rain', N'down with ', N'up with ', N'away from ', N'across with ', N'D', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (558, N'The team were eager to make ______ the loss of the previous match. ', N'. off with ', N'up with ', N'up for ', N'away with ', N'A', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (559, N'Tom: “When are we leaving for the concert?” 
	 	Kyle : “______.” 
', N'No problem ', N'Certainly ', N'That’s right ', N'Straight away ', N'C', 2)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (560, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (561, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (562, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (563, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (564, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (565, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (566, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (567, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (568, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (569, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (570, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (571, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (572, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (573, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (574, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (575, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (576, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (577, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (578, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (579, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (580, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (581, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (582, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (583, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (584, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (585, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (586, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (587, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (588, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (589, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (590, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (591, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (592, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (593, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (594, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (595, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (596, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (597, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (598, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (599, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (600, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
GO
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (601, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (602, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (603, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (604, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (605, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (606, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (607, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (608, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (609, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (610, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (611, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (612, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (613, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (614, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (615, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (616, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (617, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (618, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (619, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (620, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (621, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (622, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (623, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (624, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (625, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (626, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (627, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (628, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (629, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (630, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (631, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (632, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (633, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (634, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (635, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (636, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (637, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (638, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (639, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (640, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (641, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (642, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (643, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (644, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (645, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (646, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (647, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (648, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (649, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (650, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (651, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (652, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (653, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (654, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (655, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (656, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (657, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (658, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (659, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (660, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (661, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (662, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (663, N'It is interesting to take ______ a new hobby such as collecting stamps or going fishing', N'up ', N'in ', N'over ', N'on ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (664, N'The bad weather caused serious damage to the crop. If only it ______ warmer', N'were ', N'had been ', N'has been ', N'was ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (665, N'Television can make things memorable for the reason that it presents information ______ an effective way', N'on', N'in', N'with', N'over ', N'A', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (666, N'He didn’t know______ or stay until the end of the festival.', N'if to go ', N'if that he should go ', N'to go ', N'whether to go', N'C', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (667, N'Mary: “I will never go mountaineering again.” 
	 	Linda: “Me ______.” 
', N'so ', N'too ', N'neither ', N'either ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (668, N'My mother had to work 12 hours a day in a factory just to ______. ', N'make ends meet ', N'call it a day ', N'break the ice ', N'tighten the belt ', N'D', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (669, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (670, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
INSERT [dbo].[cauhoi] ([ma], [thongtincauhoi], [dapana], [dapanb], [dapanc], [dapand], [dapandung], [mamucdo]) VALUES (671, N'It has been suggested that Mary ______ a computer course in preparation for a steady job', N'take ', N'have been taken ', N'would have taken ', N'was taken ', N'B', 3)
SET IDENTITY_INSERT [dbo].[cauhoi] OFF
SET IDENTITY_INSERT [dbo].[chitietde] ON 

INSERT [dbo].[chitietde] ([ma], [made], [macauhoi]) VALUES (1, 7, N'46,47,92,106,109,214,218,352,367,381,388,392,396,401,423,442,3,4,57,58,65,68,249,252,474,478,487,509,531,13,152,162,317,320,567,599,603,622,624,638')
INSERT [dbo].[chitietde] ([ma], [made], [macauhoi]) VALUES (2, 8, N'54,102,106,194,201,220,223,340,359,374,381,385,395,396,410,415,18,118,132,248,259,263,265,483,491,500,506,547,549,147,149,151,154,159,288,614,653,657,663,665')
INSERT [dbo].[chitietde] ([ma], [made], [macauhoi]) VALUES (3, 9, N'7,19,22,87,176,214,339,367,376,396,404,407,411,414,421,442,58,66,130,131,228,243,449,469,478,483,514,543,546,158,162,287,297,316,332,561,614,620,622,643')
INSERT [dbo].[chitietde] ([ma], [made], [macauhoi]) VALUES (4, 10, N'22,29,40,43,47,52,86,88,93,96,99,169,170,173,174,177,182,183,189,191,195,209,211,212,214,337,338,345,353,362,365,378,380,385,387,391,397,398,402,415,416,422,439,443,444,21,24,42,58,64,70,115,122,126,127,130,136,140,226,236,237,245,247,248,249,261,262,276,449,451,457,474,487,496,497,500,504,539,549,554,71,78,158,159,164,284,291,297,301,302,317,321,323,324,327,563,565,583,599,612,618,623,645,646,670')
INSERT [dbo].[chitietde] ([ma], [made], [macauhoi]) VALUES (5, 11, N'1,12,54,55,96,183,188,197,203,209,219,338,348,359,374,379,380,381,393,407,408,411,424,431,442,66,131,138,140,230,246,257,266,273,274,456,460,464,466,467,469,471,478,482,492,495,501,503,514,518,522,524,529,535,538,545,549,550,17,34,38,71,72,76,77,78,84,142,151,153,159,166,291,292,298,302,303,306,310,313,314,321,333,565,573,589,590,608,609,612,620,623,624,636,640,648,652,657,661,669')
INSERT [dbo].[chitietde] ([ma], [made], [macauhoi]) VALUES (6, 12, N'48,103,186,195,205,209,215,222,341,342,387,404,413,418,419,443,65,121,134,136,243,261,451,457,482,506,522,528,547,150,289,292,298,563,566,567,579,587,626,635')
INSERT [dbo].[chitietde] ([ma], [made], [macauhoi]) VALUES (7, 13, N'22,45,48,55,109,177,184,186,210,222,379,392,397,398,427,444,139,140,225,230,242,243,270,275,460,485,500,501,524,83,289,301,315,323,332,578,591,637,646,667')
INSERT [dbo].[chitietde] ([ma], [made], [macauhoi]) VALUES (9, 15, N'22,53,85,87,89,98,169,193,194,350,374,378,399,420,429,243,244,272,453,465,470,538,540,550,559,84,323,336,570,573')
INSERT [dbo].[chitietde] ([ma], [made], [macauhoi]) VALUES (10, 16, N'29,45,93,95,175,189,198,212,218,219,360,396,405,407,441,121,126,226,241,459,467,471,491,534,550,17,34,76,282,575')
INSERT [dbo].[chitietde] ([ma], [made], [macauhoi]) VALUES (11, 17, N'8,171,174,199,203,210,346,356,358,359,368,380,399,406,442,25,64,115,252,267,475,485,489,490,532,27,156,571,579,623')
INSERT [dbo].[chitietde] ([ma], [made], [macauhoi]) VALUES (12, 18, N'12,22,35,43,55,95,97,106,174,178,187,374,382,422,441,68,508,514,516,518,520,538,544,549,555,76,143,288,308,582')
INSERT [dbo].[chitietde] ([ma], [made], [macauhoi]) VALUES (13, 19, N'7,8,85,95,170,175,188,199,224,348,353,385,395,410,411,59,237,252,262,280,449,502,509,513,515,143,284,327,624,658')
SET IDENTITY_INSERT [dbo].[chitietde] OFF
SET IDENTITY_INSERT [dbo].[dethi] ON 

INSERT [dbo].[dethi] ([ma], [ngaytao], [mamucdo], [masoluongcauhoi]) VALUES (4, 1512837650517, 1, 1)
INSERT [dbo].[dethi] ([ma], [ngaytao], [mamucdo], [masoluongcauhoi]) VALUES (5, 1512837875783, 1, 1)
INSERT [dbo].[dethi] ([ma], [ngaytao], [mamucdo], [masoluongcauhoi]) VALUES (6, 1512837935253, 1, 1)
INSERT [dbo].[dethi] ([ma], [ngaytao], [mamucdo], [masoluongcauhoi]) VALUES (7, 1512838534193, 1, 1)
INSERT [dbo].[dethi] ([ma], [ngaytao], [mamucdo], [masoluongcauhoi]) VALUES (8, 1512838725384, 1, 1)
INSERT [dbo].[dethi] ([ma], [ngaytao], [mamucdo], [masoluongcauhoi]) VALUES (9, 1512838798922, 1, 1)
INSERT [dbo].[dethi] ([ma], [ngaytao], [mamucdo], [masoluongcauhoi]) VALUES (10, 1512838823252, 1, 3)
INSERT [dbo].[dethi] ([ma], [ngaytao], [mamucdo], [masoluongcauhoi]) VALUES (11, 1512839038613, 3, 3)
INSERT [dbo].[dethi] ([ma], [ngaytao], [mamucdo], [masoluongcauhoi]) VALUES (12, 1512839867858, 1, 1)
INSERT [dbo].[dethi] ([ma], [ngaytao], [mamucdo], [masoluongcauhoi]) VALUES (13, 1512839933614, 1, 1)
INSERT [dbo].[dethi] ([ma], [ngaytao], [mamucdo], [masoluongcauhoi]) VALUES (14, 1512840195570, 1, 1)
INSERT [dbo].[dethi] ([ma], [ngaytao], [mamucdo], [masoluongcauhoi]) VALUES (15, 1512840231965, 1, 1)
INSERT [dbo].[dethi] ([ma], [ngaytao], [mamucdo], [masoluongcauhoi]) VALUES (16, 1512840250153, 1, 1)
INSERT [dbo].[dethi] ([ma], [ngaytao], [mamucdo], [masoluongcauhoi]) VALUES (17, 1512840371889, 1, 1)
INSERT [dbo].[dethi] ([ma], [ngaytao], [mamucdo], [masoluongcauhoi]) VALUES (18, 1512840447131, 1, 1)
INSERT [dbo].[dethi] ([ma], [ngaytao], [mamucdo], [masoluongcauhoi]) VALUES (19, 1512840542394, 1, 1)
SET IDENTITY_INSERT [dbo].[dethi] OFF
INSERT [dbo].[mucdo] ([mamucdo], [tenmucdo]) VALUES (1, N'Dễ')
INSERT [dbo].[mucdo] ([mamucdo], [tenmucdo]) VALUES (2, N'Trung bình')
INSERT [dbo].[mucdo] ([mamucdo], [tenmucdo]) VALUES (3, N'Khó')
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (1, 1, 1, 15)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (1, 1, 2, 10)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (1, 1, 3, 5)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (2, 1, 1, 10)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (2, 1, 2, 15)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (2, 1, 3, 5)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (3, 1, 1, 5)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (3, 1, 2, 10)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (3, 1, 3, 15)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (1, 2, 1, 25)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (1, 2, 2, 15)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (1, 2, 3, 10)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (2, 2, 1, 15)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (2, 2, 2, 25)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (2, 2, 3, 10)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (3, 2, 1, 10)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (3, 2, 2, 15)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (3, 2, 3, 25)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (1, 3, 1, 42)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (1, 3, 2, 33)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (1, 3, 3, 25)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (2, 3, 1, 25)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (2, 3, 2, 42)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (2, 3, 3, 33)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (3, 3, 1, 25)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (3, 3, 2, 33)
INSERT [dbo].[phanchiacauhoi] ([mamucdo], [masoluong], [mucdocauhoi], [soluongcau]) VALUES (3, 3, 3, 42)
INSERT [dbo].[soluongcauhoi] ([masoluong], [tongsocauhoi], [thoigianthi]) VALUES (1, 30, 20)
INSERT [dbo].[soluongcauhoi] ([masoluong], [tongsocauhoi], [thoigianthi]) VALUES (2, 50, 40)
INSERT [dbo].[soluongcauhoi] ([masoluong], [tongsocauhoi], [thoigianthi]) VALUES (3, 100, 80)
ALTER TABLE [dbo].[cauhoi]  WITH CHECK ADD  CONSTRAINT [FK_cauhoi_mucdo] FOREIGN KEY([mamucdo])
REFERENCES [dbo].[mucdo] ([mamucdo])
GO
ALTER TABLE [dbo].[cauhoi] CHECK CONSTRAINT [FK_cauhoi_mucdo]
GO
ALTER TABLE [dbo].[chitietde]  WITH CHECK ADD  CONSTRAINT [FK_chitietde_cauhoi] FOREIGN KEY([made])
REFERENCES [dbo].[cauhoi] ([ma])
GO
ALTER TABLE [dbo].[chitietde] CHECK CONSTRAINT [FK_chitietde_cauhoi]
GO
ALTER TABLE [dbo].[chitietde]  WITH CHECK ADD  CONSTRAINT [FK_chitietde_dethi1] FOREIGN KEY([made])
REFERENCES [dbo].[dethi] ([ma])
GO
ALTER TABLE [dbo].[chitietde] CHECK CONSTRAINT [FK_chitietde_dethi1]
GO
ALTER TABLE [dbo].[dethi]  WITH CHECK ADD  CONSTRAINT [FK_dethi_mucdo] FOREIGN KEY([mamucdo])
REFERENCES [dbo].[mucdo] ([mamucdo])
GO
ALTER TABLE [dbo].[dethi] CHECK CONSTRAINT [FK_dethi_mucdo]
GO
ALTER TABLE [dbo].[dethi]  WITH CHECK ADD  CONSTRAINT [FK_dethi_soluongcauhoi] FOREIGN KEY([masoluongcauhoi])
REFERENCES [dbo].[soluongcauhoi] ([masoluong])
GO
ALTER TABLE [dbo].[dethi] CHECK CONSTRAINT [FK_dethi_soluongcauhoi]
GO
ALTER TABLE [dbo].[phanchiacauhoi]  WITH CHECK ADD  CONSTRAINT [FK_phanchiacauhoi_mucdo] FOREIGN KEY([mamucdo])
REFERENCES [dbo].[mucdo] ([mamucdo])
GO
ALTER TABLE [dbo].[phanchiacauhoi] CHECK CONSTRAINT [FK_phanchiacauhoi_mucdo]
GO
ALTER TABLE [dbo].[phanchiacauhoi]  WITH CHECK ADD  CONSTRAINT [FK_phanchiacauhoi_mucdo1] FOREIGN KEY([mucdocauhoi])
REFERENCES [dbo].[mucdo] ([mamucdo])
GO
ALTER TABLE [dbo].[phanchiacauhoi] CHECK CONSTRAINT [FK_phanchiacauhoi_mucdo1]
GO
ALTER TABLE [dbo].[phanchiacauhoi]  WITH CHECK ADD  CONSTRAINT [FK_phanchiacauhoi_soluongcauhoi] FOREIGN KEY([masoluong])
REFERENCES [dbo].[soluongcauhoi] ([masoluong])
GO
ALTER TABLE [dbo].[phanchiacauhoi] CHECK CONSTRAINT [FK_phanchiacauhoi_soluongcauhoi]
GO
USE [master]
GO
ALTER DATABASE [quiz] SET  READ_WRITE 
GO
