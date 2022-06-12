USE [master]
GO
/****** Object:  Database [Hotel_Booking]    Script Date: 13/06/2022 05:55:48 ******/
CREATE DATABASE [Hotel_Booking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hotel_Booking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Hotel_Booking.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hotel_Booking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Hotel_Booking_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Hotel_Booking] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hotel_Booking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hotel_Booking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hotel_Booking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hotel_Booking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hotel_Booking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hotel_Booking] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hotel_Booking] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Hotel_Booking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hotel_Booking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hotel_Booking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hotel_Booking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hotel_Booking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hotel_Booking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hotel_Booking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hotel_Booking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hotel_Booking] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Hotel_Booking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hotel_Booking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hotel_Booking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hotel_Booking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hotel_Booking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hotel_Booking] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hotel_Booking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hotel_Booking] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Hotel_Booking] SET  MULTI_USER 
GO
ALTER DATABASE [Hotel_Booking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hotel_Booking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hotel_Booking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hotel_Booking] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Hotel_Booking] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Hotel_Booking] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Hotel_Booking] SET QUERY_STORE = OFF
GO
USE [Hotel_Booking]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[city] [nvarchar](255) NOT NULL,
	[image] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[city] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityRate]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityRate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cityid] [int] NULL,
	[cityrate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenientCategories]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenientCategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[convenientCategory] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[convenientCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenientRate]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenientRate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[convenientId] [int] NULL,
	[convenientRate] [int] NULL,
	[hotelId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelCategories]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelCategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [nvarchar](255) NOT NULL,
	[image] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelConveniences]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelConveniences](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[convenient] [nvarchar](255) NULL,
	[hotelId] [int] NULL,
	[convenientCategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelGallery]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelGallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[image] [varchar](max) NULL,
	[hotelId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelLikeLog]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelLikeLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [int] NULL,
	[hotelId] [int] NULL,
	[userId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelPromotions]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelPromotions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[discount] [float] NULL,
	[create] [datetime] NULL,
	[from] [date] NULL,
	[to] [date] NULL,
	[hotelId] [int] NULL,
	[promotionId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelRating]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelRating](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[score] [float] NULL,
	[feedback] [nvarchar](max) NULL,
	[reservationId] [int] NULL,
	[rateAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelReport]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelReport](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[report] [nvarchar](255) NULL,
	[hotelId] [int] NULL,
	[userId] [int] NULL,
	[status] [varchar](55) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[noOfStar] [int] NULL,
	[description] [nvarchar](max) NULL,
	[hotelAdvance] [nvarchar](max) NULL,
	[policies] [nvarchar](max) NULL,
	[map] [varchar](max) NULL,
	[email] [varchar](255) NULL,
	[phoneNumber] [varchar](25) NULL,
	[status] [varchar](128) NULL,
	[address] [nvarchar](max) NULL,
	[cityId] [int] NULL,
	[categoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelServices]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelServices](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[service] [nvarchar](255) NULL,
	[price] [float] NULL,
	[unit] [nvarchar](50) NULL,
	[create] [datetime] NULL,
	[from] [datetime] NULL,
	[to] [datetime] NULL,
	[hotelId] [int] NULL,
	[serviceCategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelSuggestPlaces]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelSuggestPlaces](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[place] [nvarchar](255) NULL,
	[distance] [float] NULL,
	[hotelId] [int] NULL,
	[categoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manages]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[hotelId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[promotion] [nvarchar](255) NULL,
	[create] [datetime] NULL,
	[from] [date] NULL,
	[to] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReservationRoom]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservationRoom](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quality] [int] NULL,
	[unitprice] [float] NULL,
	[roomId] [int] NULL,
	[reservationId] [int] NULL,
	[discount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reversations]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reversations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[noOfAdults] [int] NULL,
	[noOfChild] [int] NULL,
	[noOfRoom] [int] NULL,
	[bookDate] [datetime] NULL,
	[arrival] [date] NULL,
	[department] [date] NULL,
	[status] [varchar](128) NULL,
	[userId] [int] NULL,
	[hotelId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReversationServices]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReversationServices](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[unitPrice] [float] NULL,
	[quantity] [int] NULL,
	[reservationId] [int] NULL,
	[serviceId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomTypes]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomTypes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomType] [nvarchar](255) NULL,
	[image] [varchar](max) NULL,
	[quality] [int] NULL,
	[price] [float] NULL,
	[maxAdults] [int] NULL,
	[maxChild] [int] NULL,
	[bed] [nvarchar](255) NULL,
	[area] [varchar](25) NULL,
	[decription] [nvarchar](255) NULL,
	[hotelId] [int] NULL,
	[promotionId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceCategories]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceCategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceCategory] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ServiceCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuggestPlaceCategories]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuggestPlaceCategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[suggestPlaceCategory] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[suggestPlaceCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 13/06/2022 05:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](255) NOT NULL,
	[gender] [int] NULL,
	[dob] [date] NULL,
	[email] [varchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[avatar] [varchar](max) NULL,
	[phoneNumber] [varchar](10) NULL,
	[password] [varchar](51) NULL,
	[role] [varchar](51) NULL,
	[status] [varchar](51) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[CityRate]  WITH CHECK ADD  CONSTRAINT [fk_CityRate] FOREIGN KEY([cityid])
REFERENCES [dbo].[Cities] ([id])
GO
ALTER TABLE [dbo].[CityRate] CHECK CONSTRAINT [fk_CityRate]
GO
ALTER TABLE [dbo].[ConvenientRate]  WITH CHECK ADD  CONSTRAINT [fk_convenientRate] FOREIGN KEY([convenientId])
REFERENCES [dbo].[HotelConveniences] ([id])
GO
ALTER TABLE [dbo].[ConvenientRate] CHECK CONSTRAINT [fk_convenientRate]
GO
ALTER TABLE [dbo].[ConvenientRate]  WITH CHECK ADD  CONSTRAINT [fk_crHote] FOREIGN KEY([hotelId])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[ConvenientRate] CHECK CONSTRAINT [fk_crHote]
GO
ALTER TABLE [dbo].[HotelConveniences]  WITH CHECK ADD  CONSTRAINT [fk_concategory] FOREIGN KEY([convenientCategoryId])
REFERENCES [dbo].[ConvenientCategories] ([id])
GO
ALTER TABLE [dbo].[HotelConveniences] CHECK CONSTRAINT [fk_concategory]
GO
ALTER TABLE [dbo].[HotelConveniences]  WITH CHECK ADD  CONSTRAINT [fk_hotelCon] FOREIGN KEY([hotelId])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[HotelConveniences] CHECK CONSTRAINT [fk_hotelCon]
GO
ALTER TABLE [dbo].[HotelGallery]  WITH CHECK ADD  CONSTRAINT [fk_hotelGallery] FOREIGN KEY([hotelId])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[HotelGallery] CHECK CONSTRAINT [fk_hotelGallery]
GO
ALTER TABLE [dbo].[HotelLikeLog]  WITH CHECK ADD  CONSTRAINT [fk_hotellike] FOREIGN KEY([hotelId])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[HotelLikeLog] CHECK CONSTRAINT [fk_hotellike]
GO
ALTER TABLE [dbo].[HotelLikeLog]  WITH CHECK ADD  CONSTRAINT [fk_userLike] FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[HotelLikeLog] CHECK CONSTRAINT [fk_userLike]
GO
ALTER TABLE [dbo].[HotelPromotions]  WITH CHECK ADD  CONSTRAINT [fk_hotelPromotions] FOREIGN KEY([hotelId])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[HotelPromotions] CHECK CONSTRAINT [fk_hotelPromotions]
GO
ALTER TABLE [dbo].[HotelPromotions]  WITH CHECK ADD  CONSTRAINT [fk_promotion] FOREIGN KEY([promotionId])
REFERENCES [dbo].[Promotion] ([id])
GO
ALTER TABLE [dbo].[HotelPromotions] CHECK CONSTRAINT [fk_promotion]
GO
ALTER TABLE [dbo].[HotelRating]  WITH CHECK ADD  CONSTRAINT [fk_feedbackReservation] FOREIGN KEY([reservationId])
REFERENCES [dbo].[Reversations] ([id])
GO
ALTER TABLE [dbo].[HotelRating] CHECK CONSTRAINT [fk_feedbackReservation]
GO
ALTER TABLE [dbo].[HotelReport]  WITH CHECK ADD  CONSTRAINT [fk_hotelReported] FOREIGN KEY([hotelId])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[HotelReport] CHECK CONSTRAINT [fk_hotelReported]
GO
ALTER TABLE [dbo].[HotelReport]  WITH CHECK ADD  CONSTRAINT [fk_reporter] FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[HotelReport] CHECK CONSTRAINT [fk_reporter]
GO
ALTER TABLE [dbo].[Hotels]  WITH CHECK ADD  CONSTRAINT [fk_addressescity] FOREIGN KEY([cityId])
REFERENCES [dbo].[Cities] ([id])
GO
ALTER TABLE [dbo].[Hotels] CHECK CONSTRAINT [fk_addressescity]
GO
ALTER TABLE [dbo].[Hotels]  WITH CHECK ADD  CONSTRAINT [fk_hotelcategory] FOREIGN KEY([categoryId])
REFERENCES [dbo].[HotelCategories] ([id])
GO
ALTER TABLE [dbo].[Hotels] CHECK CONSTRAINT [fk_hotelcategory]
GO
ALTER TABLE [dbo].[HotelServices]  WITH CHECK ADD  CONSTRAINT [fk_hotelService] FOREIGN KEY([hotelId])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[HotelServices] CHECK CONSTRAINT [fk_hotelService]
GO
ALTER TABLE [dbo].[HotelServices]  WITH CHECK ADD  CONSTRAINT [fk_ServiceCategory] FOREIGN KEY([serviceCategoryId])
REFERENCES [dbo].[ServiceCategories] ([id])
GO
ALTER TABLE [dbo].[HotelServices] CHECK CONSTRAINT [fk_ServiceCategory]
GO
ALTER TABLE [dbo].[HotelSuggestPlaces]  WITH CHECK ADD  CONSTRAINT [fk_hotelSuggest] FOREIGN KEY([hotelId])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[HotelSuggestPlaces] CHECK CONSTRAINT [fk_hotelSuggest]
GO
ALTER TABLE [dbo].[HotelSuggestPlaces]  WITH CHECK ADD  CONSTRAINT [fk_SuggestCategory] FOREIGN KEY([categoryId])
REFERENCES [dbo].[SuggestPlaceCategories] ([id])
GO
ALTER TABLE [dbo].[HotelSuggestPlaces] CHECK CONSTRAINT [fk_SuggestCategory]
GO
ALTER TABLE [dbo].[Manages]  WITH CHECK ADD  CONSTRAINT [fk_Hotelmanager] FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Manages] CHECK CONSTRAINT [fk_Hotelmanager]
GO
ALTER TABLE [dbo].[Manages]  WITH CHECK ADD  CONSTRAINT [fk_manageHotel] FOREIGN KEY([hotelId])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[Manages] CHECK CONSTRAINT [fk_manageHotel]
GO
ALTER TABLE [dbo].[ReservationRoom]  WITH CHECK ADD  CONSTRAINT [fk_bookroom] FOREIGN KEY([roomId])
REFERENCES [dbo].[RoomTypes] ([id])
GO
ALTER TABLE [dbo].[ReservationRoom] CHECK CONSTRAINT [fk_bookroom]
GO
ALTER TABLE [dbo].[ReservationRoom]  WITH CHECK ADD  CONSTRAINT [fk_reservation] FOREIGN KEY([reservationId])
REFERENCES [dbo].[Reversations] ([id])
GO
ALTER TABLE [dbo].[ReservationRoom] CHECK CONSTRAINT [fk_reservation]
GO
ALTER TABLE [dbo].[Reversations]  WITH CHECK ADD  CONSTRAINT [fk_reservationHotel] FOREIGN KEY([hotelId])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[Reversations] CHECK CONSTRAINT [fk_reservationHotel]
GO
ALTER TABLE [dbo].[Reversations]  WITH CHECK ADD  CONSTRAINT [fk_reservationUser] FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Reversations] CHECK CONSTRAINT [fk_reservationUser]
GO
ALTER TABLE [dbo].[ReversationServices]  WITH CHECK ADD  CONSTRAINT [fk_bookedServices] FOREIGN KEY([serviceId])
REFERENCES [dbo].[HotelServices] ([id])
GO
ALTER TABLE [dbo].[ReversationServices] CHECK CONSTRAINT [fk_bookedServices]
GO
ALTER TABLE [dbo].[ReversationServices]  WITH CHECK ADD  CONSTRAINT [fk_bookServices] FOREIGN KEY([reservationId])
REFERENCES [dbo].[Reversations] ([id])
GO
ALTER TABLE [dbo].[ReversationServices] CHECK CONSTRAINT [fk_bookServices]
GO
ALTER TABLE [dbo].[RoomTypes]  WITH CHECK ADD  CONSTRAINT [fk_hotelPromotion] FOREIGN KEY([promotionId])
REFERENCES [dbo].[HotelPromotions] ([id])
GO
ALTER TABLE [dbo].[RoomTypes] CHECK CONSTRAINT [fk_hotelPromotion]
GO
ALTER TABLE [dbo].[RoomTypes]  WITH CHECK ADD  CONSTRAINT [fk_hotelRoom] FOREIGN KEY([hotelId])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[RoomTypes] CHECK CONSTRAINT [fk_hotelRoom]
GO
ALTER TABLE [dbo].[Hotels]  WITH CHECK ADD CHECK  (([noOfstar]>(0) AND [noOfstar]<(6)))
GO
ALTER TABLE [dbo].[ReversationServices]  WITH CHECK ADD CHECK  (([quantity]>(0)))
GO
USE [master]
GO
ALTER DATABASE [Hotel_Booking] SET  READ_WRITE 
GO
