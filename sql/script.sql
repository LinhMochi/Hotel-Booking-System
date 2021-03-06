USE [Hotel_Booking]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 7/14/2022 4:54:01 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityRate]    Script Date: 7/14/2022 4:54:01 PM ******/
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
/****** Object:  Table [dbo].[ConvenientCategories]    Script Date: 7/14/2022 4:54:01 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenientRate]    Script Date: 7/14/2022 4:54:01 PM ******/
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
/****** Object:  Table [dbo].[HotelCategories]    Script Date: 7/14/2022 4:54:01 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelConveniences]    Script Date: 7/14/2022 4:54:01 PM ******/
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
/****** Object:  Table [dbo].[HotelGallery]    Script Date: 7/14/2022 4:54:01 PM ******/
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
/****** Object:  Table [dbo].[HotelLikeLog]    Script Date: 7/14/2022 4:54:01 PM ******/
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
/****** Object:  Table [dbo].[HotelPromotions]    Script Date: 7/14/2022 4:54:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelPromotions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[discount] [float] NULL,
	[create] [varchar](20) NULL,
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
/****** Object:  Table [dbo].[HotelRating]    Script Date: 7/14/2022 4:54:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelRating](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[score] [float] NULL,
	[feedback] [nvarchar](max) NULL,
	[reservationId] [int] NULL,
	[rateAt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelReport]    Script Date: 7/14/2022 4:54:01 PM ******/
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
/****** Object:  Table [dbo].[Hotels]    Script Date: 7/14/2022 4:54:01 PM ******/
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
	[image] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelServices]    Script Date: 7/14/2022 4:54:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelServices](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[service] [nvarchar](255) NULL,
	[price] [float] NULL,
	[unit] [nvarchar](50) NULL,
	[create] [varchar](20) NULL,
	[from] [date] NULL,
	[to] [date] NULL,
	[hotelId] [int] NULL,
	[serviceCategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelSuggestPlaces]    Script Date: 7/14/2022 4:54:01 PM ******/
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
/****** Object:  Table [dbo].[Manages]    Script Date: 7/14/2022 4:54:01 PM ******/
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
/****** Object:  Table [dbo].[Promotion]    Script Date: 7/14/2022 4:54:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[promotion] [nvarchar](255) NULL,
	[create] [varchar](20) NULL,
	[from] [date] NULL,
	[to] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReservationRoom]    Script Date: 7/14/2022 4:54:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservationRoom](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
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
/****** Object:  Table [dbo].[Reservations]    Script Date: 7/14/2022 4:54:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[noOfAdults] [int] NULL,
	[noOfChild] [int] NULL,
	[noOfRoom] [int] NULL,
	[bookDate] [varchar](20) NULL,
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
/****** Object:  Table [dbo].[ReservationService]    Script Date: 7/14/2022 4:54:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservationService](
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
/****** Object:  Table [dbo].[RoomPromotion]    Script Date: 7/14/2022 4:54:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomPromotion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomid] [int] NULL,
	[promotionid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomTypes]    Script Date: 7/14/2022 4:54:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomTypes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomType] [nvarchar](255) NULL,
	[image] [varchar](max) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[maxAdults] [int] NULL,
	[maxChild] [int] NULL,
	[bed] [nvarchar](255) NULL,
	[area] [varchar](25) NULL,
	[description] [nvarchar](255) NULL,
	[hotelId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceCategories]    Script Date: 7/14/2022 4:54:01 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuggestPlaceCategories]    Script Date: 7/14/2022 4:54:01 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/14/2022 4:54:01 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([id], [city], [image]) VALUES (1, N'Hà Nội', N'https://tse3.mm.bing.net/th?id=OIP.MKZ7oK_kImjZGNUBkzvTFQHaEc&pid=Api&P=0&w=274&h=164')
INSERT [dbo].[Cities] ([id], [city], [image]) VALUES (2, N'Sơn La', N'https://media-cdn.laodong.vn/Storage/NewsPortal/2020/10/11/843979/Thuy-Dien-Lai-Chau.jpg')
INSERT [dbo].[Cities] ([id], [city], [image]) VALUES (3, N'Quảng Ninh', N'https://tse2.mm.bing.net/th?id=OIP.FIe54iYXpambyWxus_Y5AAHaD8&pid=Api&P=0&w=338&h=180')
INSERT [dbo].[Cities] ([id], [city], [image]) VALUES (4, N'Nghệ An', N'https://dulichkhatvongviet.com/wp-content/uploads/2014/06/mai-nha-tranh-noi-bac-o.jpg')
INSERT [dbo].[Cities] ([id], [city], [image]) VALUES (5, N'Huế', N'https://media.truyenhinhdulich.vn/upload/news/154_hue.jpg')
INSERT [dbo].[Cities] ([id], [city], [image]) VALUES (6, N'Đà Nẵng', N'https://hdq.vn/wp-content/uploads/2020/12/top-10-dia-diem-du-lich-tai-thanh-pho-dang-song-da-nang-ba-na-mo-cua-tro-lai-10-16005678342571877068250.jpg')
INSERT [dbo].[Cities] ([id], [city], [image]) VALUES (7, N'Đà Lạt', N'https://dalatreview.vn/wp-content/uploads/2020/05/0.jpg')
INSERT [dbo].[Cities] ([id], [city], [image]) VALUES (8, N'Quảng Bình', N'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Son_Doong_Cave_1.jpg/280px-Son_Doong_Cave_1.jpg')
INSERT [dbo].[Cities] ([id], [city], [image]) VALUES (9, N'Nha Trang', N'https://tse2.mm.bing.net/th?id=OIP.wE1yC6q22s9KULN9ZQNReAHaEK&pid=Api&P=0&w=283&h=159')
INSERT [dbo].[Cities] ([id], [city], [image]) VALUES (10, N'Hồ Chí Minh', N'https://tse1.mm.bing.net/th?id=OIP.-auaEm6wpRIEWbxdmBtBlAHaEl&pid=Api&P=0&w=287&h=178')
INSERT [dbo].[Cities] ([id], [city], [image]) VALUES (11, N'Phú Quốc', N'https://phuquocxanh.com/vi/wp-content/uploads/2015/07/b%C3%A3i-sao-Ph%C3%BA-Qu%E1%BB%91c-1.jpg')
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[CityRate] ON 

INSERT [dbo].[CityRate] ([id], [cityid], [cityrate]) VALUES (1, 1, 1)
INSERT [dbo].[CityRate] ([id], [cityid], [cityrate]) VALUES (2, 2, 5)
INSERT [dbo].[CityRate] ([id], [cityid], [cityrate]) VALUES (3, 7, 2)
INSERT [dbo].[CityRate] ([id], [cityid], [cityrate]) VALUES (4, 11, 3)
INSERT [dbo].[CityRate] ([id], [cityid], [cityrate]) VALUES (5, 10, 4)
SET IDENTITY_INSERT [dbo].[CityRate] OFF
GO
SET IDENTITY_INSERT [dbo].[ConvenientCategories] ON 

INSERT [dbo].[ConvenientCategories] ([id], [convenientCategory]) VALUES (1, N'An ninh')
INSERT [dbo].[ConvenientCategories] ([id], [convenientCategory]) VALUES (4, N'Gia đình')
INSERT [dbo].[ConvenientCategories] ([id], [convenientCategory]) VALUES (3, N'Giải Trí')
INSERT [dbo].[ConvenientCategories] ([id], [convenientCategory]) VALUES (5, N'Khác')
INSERT [dbo].[ConvenientCategories] ([id], [convenientCategory]) VALUES (2, N'Phục vụ')
INSERT [dbo].[ConvenientCategories] ([id], [convenientCategory]) VALUES (6, N'Tiện ích phòng')
SET IDENTITY_INSERT [dbo].[ConvenientCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[ConvenientRate] ON 

INSERT [dbo].[ConvenientRate] ([id], [convenientId], [convenientRate], [hotelId]) VALUES (1, 10, 1, 2)
INSERT [dbo].[ConvenientRate] ([id], [convenientId], [convenientRate], [hotelId]) VALUES (2, 5, 3, 2)
INSERT [dbo].[ConvenientRate] ([id], [convenientId], [convenientRate], [hotelId]) VALUES (3, 8, 2, 2)
INSERT [dbo].[ConvenientRate] ([id], [convenientId], [convenientRate], [hotelId]) VALUES (4, 7, 5, 2)
INSERT [dbo].[ConvenientRate] ([id], [convenientId], [convenientRate], [hotelId]) VALUES (5, 1, 4, 2)
INSERT [dbo].[ConvenientRate] ([id], [convenientId], [convenientRate], [hotelId]) VALUES (6, 9, 6, 2)
SET IDENTITY_INSERT [dbo].[ConvenientRate] OFF
GO
SET IDENTITY_INSERT [dbo].[HotelCategories] ON 

INSERT [dbo].[HotelCategories] ([id], [category], [image]) VALUES (1, N'Khách sạn tiêu chuẩn', N'http://datphonghalong.com/wp-content/uploads/2017/11/72638319.jpg')
INSERT [dbo].[HotelCategories] ([id], [category], [image]) VALUES (2, N'Khách sạn con nhộng', N'https://www.ansapbinhduong.com/wp-content/uploads/2020/06/khach-san-con-nhong-la-gi.jpg.webp')
INSERT [dbo].[HotelCategories] ([id], [category], [image]) VALUES (3, N'Homestay', N'https://localvietnam.com/wp-content/uploads/2019/07/vietnam-homestay-1024x569.jpg')
INSERT [dbo].[HotelCategories] ([id], [category], [image]) VALUES (4, N'Khách sạn nghỉ dướng', N'https://picenza.vn/sites/default/files/my_files/info_0.jpg')
SET IDENTITY_INSERT [dbo].[HotelCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[HotelConveniences] ON 

INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (1, N'Có chỗ đỗ xe miễn phí', 2, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (2, N'Bảo vệ trực 24/7', 2, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (4, N'Phòng dọn dẹp hàng ngày', 2, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (5, N'Lễ tân trực 24/7', 2, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (6, N'Có wifi miễn phí', 2, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (7, N'Nhiều địa điểm du lịch', 2, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (8, N'Khu vui chơi cho trẻ', 2, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (9, N'Phòng tắm rộng', 2, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (10, N'Có phòng view phố', 2, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (11, N'Có chỗ đỗ xe miễn phí', 3, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (12, N'Bảo vệ trực 24/7', 3, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (13, N'Phòng dọn dẹp hàng ngày', 3, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (14, N'Lễ tân trực 24/7', 3, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (15, N'Có wifi miễn phí', 3, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (16, N'Nhiều địa điểm du lịch', 3, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (17, N'Khu vui chơi cho trẻ', 3, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (18, N'Phòng tắm rộng', 3, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (19, N'Có phòng view phố', 3, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (20, N'Có chỗ đỗ xe miễn phí', 4, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (21, N'Bảo vệ trực 24/7', 4, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (22, N'Phòng dọn dẹp hàng ngày', 4, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (23, N'Lễ tân trực 24/7', 4, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (24, N'Có wifi miễn phí', 4, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (25, N'Nhiều địa điểm du lịch', 4, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (26, N'Khu vui chơi cho trẻ', 4, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (27, N'Phòng tắm rộng', 4, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (28, N'Có phòng view phố', 4, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (29, N'Có chỗ đỗ xe miễn phí', 5, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (30, N'Bảo vệ trực 24/7', 5, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (31, N'Phòng dọn dẹp hàng ngày', 5, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (32, N'Lễ tân trực 24/7', 5, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (33, N'Có wifi miễn phí', 5, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (34, N'Nhiều địa điểm du lịch', 5, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (35, N'Khu vui chơi cho trẻ', 5, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (36, N'Phòng tắm rộng', 5, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (37, N'Có phòng view phố', 5, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (38, N'Có chỗ đỗ xe miễn phí', 6, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (39, N'Bảo vệ trực 24/7', 6, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (40, N'Phòng dọn dẹp hàng ngày', 6, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (41, N'Lễ tân trực 24/7', 6, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (42, N'Có wifi miễn phí', 6, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (43, N'Nhiều địa điểm du lịch', 6, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (44, N'Khu vui chơi cho trẻ', 6, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (45, N'Phòng tắm rộng', 6, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (46, N'Có phòng view phố', 6, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (47, N'Có chỗ đỗ xe miễn phí', 7, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (48, N'Bảo vệ trực 24/7', 7, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (49, N'Phòng dọn dẹp hàng ngày', 7, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (50, N'Lễ tân trực 24/7', 7, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (51, N'Có wifi miễn phí', 7, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (52, N'Nhiều địa điểm du lịch', 7, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (53, N'Khu vui chơi cho trẻ', 7, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (54, N'Phòng tắm rộng', 7, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (55, N'Có phòng view phố', 7, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (56, N'Có chỗ đỗ xe miễn phí', 8, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (57, N'Bảo vệ trực 24/7', 8, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (58, N'Phòng dọn dẹp hàng ngày', 8, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (59, N'Lễ tân trực 24/7', 8, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (60, N'Có wifi miễn phí', 8, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (61, N'Nhiều địa điểm du lịch', 8, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (62, N'Khu vui chơi cho trẻ', 8, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (63, N'Phòng tắm rộng', 8, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (64, N'Có phòng view phố', 8, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (65, N'Có chỗ đỗ xe miễn phí', 9, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (66, N'Bảo vệ trực 24/7', 9, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (67, N'Phòng dọn dẹp hàng ngày', 9, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (68, N'Lễ tân trực 24/7', 9, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (69, N'Có wifi miễn phí', 9, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (70, N'Nhiều địa điểm du lịch', 9, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (71, N'Khu vui chơi cho trẻ', 9, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (72, N'Phòng tắm rộng', 9, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (73, N'Có phòng view phố', 9, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (74, N'Có chỗ đỗ xe miễn phí', 10, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (75, N'Bảo vệ trực 24/7', 10, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (76, N'Phòng dọn dẹp hàng ngày', 10, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (77, N'Lễ tân trực 24/7', 10, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (78, N'Có wifi miễn phí', 10, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (79, N'Nhiều địa điểm du lịch', 10, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (80, N'Khu vui chơi cho trẻ', 10, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (81, N'Phòng tắm rộng', 10, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (82, N'Có phòng view phố', 10, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (83, N'Có chỗ đỗ xe miễn phí', 11, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (84, N'Bảo vệ trực 24/7', 11, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (85, N'Phòng dọn dẹp hàng ngày', 11, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (86, N'Lễ tân trực 24/7', 11, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (87, N'Có wifi miễn phí', 11, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (88, N'Nhiều địa điểm du lịch', 11, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (89, N'Khu vui chơi cho trẻ', 11, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (90, N'Phòng tắm rộng', 11, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (91, N'Có phòng view phố', 11, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (92, N'Có chỗ đỗ xe miễn phí', 12, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (93, N'Bảo vệ trực 24/7', 12, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (94, N'Phòng dọn dẹp hàng ngày', 12, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (95, N'Lễ tân trực 24/7', 12, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (96, N'Có wifi miễn phí', 12, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (97, N'Nhiều địa điểm du lịch', 12, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (98, N'Khu vui chơi cho trẻ', 12, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (99, N'Phòng tắm rộng', 12, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (100, N'Có phòng view phố', 12, 6)
GO
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (101, N'Có chỗ đỗ xe miễn phí', 13, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (102, N'Bảo vệ trực 24/7', 13, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (103, N'Phòng dọn dẹp hàng ngày', 13, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (104, N'Lễ tân trực 24/7', 13, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (105, N'Có wifi miễn phí', 13, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (106, N'Nhiều địa điểm du lịch', 13, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (107, N'Khu vui chơi cho trẻ', 13, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (108, N'Phòng tắm rộng', 13, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (109, N'Có phòng view phố', 13, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (110, N'Có chỗ đỗ xe miễn phí', 14, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (111, N'Bảo vệ trực 24/7', 14, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (112, N'Phòng dọn dẹp hàng ngày', 14, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (113, N'Lễ tân trực 24/7', 14, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (114, N'Có wifi miễn phí', 14, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (115, N'Nhiều địa điểm du lịch', 14, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (116, N'Khu vui chơi cho trẻ', 14, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (117, N'Phòng tắm rộng', 14, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (118, N'Có phòng view phố', 14, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (119, N'Có chỗ đỗ xe miễn phí', 15, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (120, N'Bảo vệ trực 24/7', 15, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (121, N'Phòng dọn dẹp hàng ngày', 15, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (122, N'Lễ tân trực 24/7', 15, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (123, N'Có wifi miễn phí', 15, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (124, N'Nhiều địa điểm du lịch', 15, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (125, N'Khu vui chơi cho trẻ', 15, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (126, N'Phòng tắm rộng', 15, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (127, N'Có phòng view phố', 15, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (128, N'Có chỗ đỗ xe miễn phí', 16, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (129, N'Bảo vệ trực 24/7', 16, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (130, N'Phòng dọn dẹp hàng ngày', 16, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (131, N'Lễ tân trực 24/7', 16, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (132, N'Có wifi miễn phí', 16, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (133, N'Nhiều địa điểm du lịch', 16, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (134, N'Khu vui chơi cho trẻ', 16, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (135, N'Phòng tắm rộng', 16, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (136, N'Có phòng view phố', 16, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (137, N'Có chỗ đỗ xe miễn phí', 17, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (138, N'Bảo vệ trực 24/7', 17, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (139, N'Phòng dọn dẹp hàng ngày', 17, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (140, N'Lễ tân trực 24/7', 17, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (141, N'Có wifi miễn phí', 17, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (142, N'Nhiều địa điểm du lịch', 17, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (143, N'Khu vui chơi cho trẻ', 17, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (144, N'Phòng tắm rộng', 17, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (145, N'Có phòng view phố', 17, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (146, N'Có chỗ đỗ xe miễn phí', 18, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (147, N'Bảo vệ trực 24/7', 18, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (148, N'Phòng dọn dẹp hàng ngày', 18, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (149, N'Lễ tân trực 24/7', 18, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (150, N'Có wifi miễn phí', 18, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (151, N'Nhiều địa điểm du lịch', 18, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (152, N'Khu vui chơi cho trẻ', 18, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (153, N'Phòng tắm rộng', 18, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (154, N'Có phòng view phố', 18, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (155, N'Có chỗ đỗ xe miễn phí', 19, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (156, N'Bảo vệ trực 24/7', 19, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (157, N'Phòng dọn dẹp hàng ngày', 19, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (158, N'Lễ tân trực 24/7', 19, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (159, N'Có wifi miễn phí', 19, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (160, N'Nhiều địa điểm du lịch', 19, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (161, N'Khu vui chơi cho trẻ', 19, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (162, N'Phòng tắm rộng', 19, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (163, N'Có phòng view phố', 19, 6)
SET IDENTITY_INSERT [dbo].[HotelConveniences] OFF
GO
SET IDENTITY_INSERT [dbo].[HotelGallery] ON 

INSERT [dbo].[HotelGallery] ([id], [title], [image], [hotelId]) VALUES (1, N'Quanh khách sạn', N'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/303652167.jpg?k=f13320239c7afc8bd8e8a04ec2eb0d064dbae84eb41101c9e0ea0c1d42a14bc6&o=&hp=1', 2)
INSERT [dbo].[HotelGallery] ([id], [title], [image], [hotelId]) VALUES (2, N'Sảnh chính khách sạn', N'https://sayhi.vn/blog/wp-content/uploads/2019/11/khach-san-2-sao-nha-trang-duong-tran-phu-4.jpg', 2)
INSERT [dbo].[HotelGallery] ([id], [title], [image], [hotelId]) VALUES (3, N'Phòng đôi tiêu chuẩn', N'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/303651466.jpg?k=c51595789c3fc5d12dc52b2248cd19db16c41b52cd951511548ab3ddb55beb76&o=&hp=1', 2)
INSERT [dbo].[HotelGallery] ([id], [title], [image], [hotelId]) VALUES (4, N'Bể bơi 4 mùa', N'https://image.baophapluat.vn/w800/Uploaded/2020/carwqwrwq/2019_06_25/0000_ahry.jpg', 2)
INSERT [dbo].[HotelGallery] ([id], [title], [image], [hotelId]) VALUES (5, N'Sảnh sự kiện', N'http://phoenixhotel.vn/wp-content/uploads/2019/07/66614799_452698575552452_6024558606148435968_n-768x768.jpg', 2)
INSERT [dbo].[HotelGallery] ([id], [title], [image], [hotelId]) VALUES (6, N'Phòng bếp của khách sạn', N'https://www.noithatanhvu.com.vn/wp-content/uploads/2017/11/noi-that-phong-an-khach-san1-min-9.jpg	', 2)
INSERT [dbo].[HotelGallery] ([id], [title], [image], [hotelId]) VALUES (7, N'View khách sạn', N'https://www.vietfuntravel.com.vn/image/data/Hinh-da-nang/1079.top-8-khach-san-ven-bien-da-nang-view-dep/top-8-khach-san-ven-bien-da-nang-view-dep-h4.jpg', 2)
INSERT [dbo].[HotelGallery] ([id], [title], [image], [hotelId]) VALUES (8, N'View từ phòng ngủ', N'https://blog.bookto.vn/wp-content/uploads/2020/05/khach-san-trong-dong-sam-son-1-768x512.jpg', 2)
INSERT [dbo].[HotelGallery] ([id], [title], [image], [hotelId]) VALUES (9, N'View từ phòng ngủ', N'https://halotravel.vn/wp-content/uploads/2021/05/khach-san-da-nang-gan-bien-my-khe-8-1536x1024.jpg', 2)
INSERT [dbo].[HotelGallery] ([id], [title], [image], [hotelId]) VALUES (10, N'Ngoài khách sạn', N'http://gotrip.vn/uploads/hotels/697/28385656.jpg', 2)
INSERT [dbo].[HotelGallery] ([id], [title], [image], [hotelId]) VALUES (11, N'Ngoài khách sạn', N'https://media.doisongphapluat.com/688/2020/3/23/ha-noi-thanh-lap-co-so-cach-ly-tap-trung-cho-nguoi-nuoc-ngoai-tu-chi-tra-chi-phi-tai-khach-san-hoa-binh.jpg', 2)
SET IDENTITY_INSERT [dbo].[HotelGallery] OFF
GO
SET IDENTITY_INSERT [dbo].[HotelLikeLog] ON 

INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (1, 1, 2, 2)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (2, 1, 2, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (3, 1, 2, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (4, 1, 2, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (5, 1, 2, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (6, 1, 2, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (7, 1, 2, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (8, 1, 2, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (9, 1, 2, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (10, 1, 2, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (11, 1, 2, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (12, 1, 2, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (13, 1, 2, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (14, 1, 2, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (15, 1, 2, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (16, 1, 2, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (17, 1, 2, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (18, 1, 2, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (19, 1, 2, 67)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (20, 1, 2, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (21, 1, 2, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (22, 1, 2, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (23, 1, 2, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (24, 1, 2, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (25, 1, 2, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (26, 1, 2, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (27, 1, 2, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (28, 1, 2, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (29, 1, 2, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (30, 1, 2, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (31, 1, 2, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (32, 1, 2, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (33, 1, 2, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (34, 1, 2, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (35, 1, 2, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (36, 1, 2, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (37, 1, 2, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (38, 1, 2, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (39, 1, 2, 87)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (40, 1, 2, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (41, 1, 2, 89)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (43, 1, 3, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (44, 1, 3, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (45, 1, 3, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (46, 1, 3, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (47, 1, 3, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (48, 1, 3, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (49, 1, 3, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (50, 1, 3, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (51, 1, 3, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (52, 1, 3, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (53, 1, 3, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (54, 1, 3, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (55, 1, 3, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (56, 1, 3, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (57, 1, 3, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (58, 1, 3, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (59, 1, 3, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (60, 1, 3, 67)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (61, 1, 3, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (62, 1, 3, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (63, 1, 3, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (64, 1, 3, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (65, 1, 3, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (66, 1, 3, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (67, 1, 3, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (68, 1, 3, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (69, 1, 3, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (70, 1, 3, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (71, 1, 3, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (72, 1, 3, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (73, 1, 3, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (74, 1, 3, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (75, 1, 3, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (76, 1, 3, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (77, 1, 3, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (78, 1, 3, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (79, 1, 3, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (80, 1, 3, 87)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (81, 1, 3, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (82, 1, 3, 89)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (84, 1, 4, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (85, 1, 4, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (86, 1, 4, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (87, 1, 4, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (88, 1, 4, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (89, 1, 4, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (90, 1, 4, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (91, 1, 4, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (92, 1, 4, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (93, 1, 4, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (94, 1, 4, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (95, 1, 4, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (96, 1, 4, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (97, 1, 4, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (98, 1, 4, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (99, 1, 4, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (100, 1, 4, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (101, 1, 4, 67)
GO
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (102, 1, 4, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (103, 1, 4, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (104, 1, 4, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (105, 1, 4, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (106, 1, 4, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (107, 1, 4, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (108, 1, 4, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (109, 1, 4, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (110, 1, 4, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (111, 1, 4, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (112, 1, 4, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (113, 1, 4, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (114, 1, 4, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (115, 1, 4, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (116, 1, 4, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (117, 1, 4, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (118, 1, 4, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (119, 1, 4, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (120, 1, 4, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (121, 1, 4, 87)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (122, 1, 4, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (123, 1, 4, 89)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (125, 1, 5, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (126, 1, 5, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (127, 1, 5, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (128, 1, 5, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (129, 1, 5, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (130, 1, 5, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (131, 1, 5, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (132, 1, 5, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (133, 1, 5, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (134, 1, 5, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (135, 1, 5, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (136, 1, 5, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (137, 1, 5, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (138, 1, 5, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (139, 1, 5, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (140, 1, 5, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (141, 1, 5, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (142, 1, 5, 67)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (143, 1, 5, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (144, 1, 5, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (145, 1, 5, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (146, 1, 5, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (147, 1, 5, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (148, 1, 5, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (149, 1, 5, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (150, 1, 5, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (151, 1, 5, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (152, 1, 5, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (153, 1, 5, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (154, 1, 5, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (155, 1, 5, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (156, 1, 5, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (157, 1, 5, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (158, 1, 5, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (159, 1, 5, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (160, 1, 5, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (161, 1, 5, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (162, 1, 5, 87)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (163, 1, 5, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (164, 1, 5, 89)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (166, 1, 6, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (167, 1, 6, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (168, 1, 6, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (169, 1, 6, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (170, 1, 6, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (171, 1, 6, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (172, 1, 6, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (173, 1, 6, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (174, 1, 6, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (175, 1, 6, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (176, 1, 6, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (177, 1, 6, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (178, 1, 6, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (179, 1, 6, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (180, 1, 6, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (181, 1, 6, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (182, 1, 6, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (183, 1, 6, 67)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (184, 1, 6, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (185, 1, 6, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (186, 1, 6, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (187, 1, 6, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (188, 1, 6, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (189, 1, 6, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (190, 1, 6, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (191, 1, 6, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (192, 1, 6, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (193, 1, 6, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (194, 1, 6, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (195, 1, 6, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (196, 1, 6, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (197, 1, 6, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (198, 1, 6, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (199, 1, 6, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (200, 1, 6, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (201, 1, 6, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (202, 1, 6, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (203, 1, 6, 87)
GO
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (204, 1, 6, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (205, 1, 6, 89)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (207, 1, 7, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (208, 1, 7, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (209, 1, 7, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (210, 1, 7, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (211, 1, 7, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (212, 1, 7, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (213, 1, 7, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (214, 1, 7, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (215, 1, 7, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (216, 1, 7, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (217, 1, 7, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (218, 1, 7, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (219, 1, 7, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (220, 1, 7, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (221, 1, 7, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (222, 1, 7, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (223, 1, 7, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (224, 1, 7, 67)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (225, 1, 7, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (226, 1, 7, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (227, 1, 7, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (228, 1, 7, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (229, 1, 7, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (230, 1, 7, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (231, 1, 7, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (232, 1, 7, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (233, 1, 7, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (234, 1, 7, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (235, 1, 7, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (236, 1, 7, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (237, 1, 7, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (238, 1, 7, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (239, 1, 7, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (240, 1, 7, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (241, 1, 7, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (242, 1, 7, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (243, 1, 7, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (244, 1, 7, 87)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (245, 1, 7, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (246, 1, 7, 89)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (248, 1, 8, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (249, 1, 8, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (250, 1, 8, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (251, 1, 8, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (252, 1, 8, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (253, 1, 8, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (254, 1, 8, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (255, 1, 8, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (256, 1, 8, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (257, 1, 8, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (258, 1, 8, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (259, 1, 8, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (260, 1, 8, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (261, 1, 8, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (262, 1, 8, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (263, 1, 8, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (264, 1, 8, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (265, 1, 8, 67)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (266, 1, 8, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (267, 1, 8, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (268, 1, 8, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (269, 1, 8, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (270, 1, 8, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (271, 1, 8, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (272, 1, 8, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (273, 1, 8, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (274, 1, 8, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (275, 1, 8, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (276, 1, 8, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (277, 1, 8, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (278, 1, 8, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (279, 1, 8, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (280, 1, 8, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (281, 1, 8, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (282, 1, 8, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (283, 1, 8, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (284, 1, 8, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (285, 1, 8, 87)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (286, 1, 8, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (287, 1, 8, 89)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (289, 1, 9, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (290, 1, 9, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (291, 1, 9, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (292, 1, 9, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (293, 1, 9, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (294, 1, 9, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (295, 1, 9, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (296, 1, 9, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (297, 1, 9, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (298, 1, 9, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (299, 1, 9, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (300, 1, 9, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (301, 1, 9, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (302, 1, 9, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (303, 1, 9, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (304, 1, 9, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (305, 1, 9, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (306, 1, 9, 67)
GO
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (307, 1, 9, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (308, 1, 9, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (309, 1, 9, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (310, 1, 9, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (311, 1, 9, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (312, 1, 9, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (313, 1, 9, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (314, 1, 9, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (315, 1, 9, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (316, 1, 9, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (317, 1, 9, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (318, 1, 9, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (319, 1, 9, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (320, 1, 9, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (321, 1, 9, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (322, 1, 9, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (323, 1, 9, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (324, 1, 9, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (325, 1, 9, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (326, 1, 9, 87)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (327, 1, 9, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (328, 1, 9, 89)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (330, 1, 10, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (331, 1, 10, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (332, 1, 10, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (333, 1, 10, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (334, 1, 10, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (335, 1, 10, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (336, 1, 10, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (337, 1, 10, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (338, 1, 10, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (339, 1, 10, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (340, 1, 10, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (341, 1, 10, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (342, 1, 10, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (343, 1, 10, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (344, 1, 10, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (345, 1, 10, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (346, 1, 10, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (347, 1, 10, 67)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (348, 1, 10, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (349, 1, 10, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (350, 1, 10, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (351, 1, 10, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (352, 1, 10, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (353, 1, 10, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (354, 1, 10, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (355, 1, 10, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (356, 1, 10, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (357, 1, 10, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (358, 1, 10, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (359, 1, 10, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (360, 1, 10, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (361, 1, 10, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (362, 1, 10, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (363, 1, 10, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (364, 1, 10, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (365, 1, 10, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (366, 1, 10, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (367, 1, 10, 87)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (368, 1, 10, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (369, 1, 10, 89)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (371, 1, 11, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (372, 1, 11, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (373, 1, 11, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (374, 1, 11, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (375, 1, 11, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (376, 1, 11, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (377, 1, 11, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (378, 1, 11, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (379, 1, 11, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (380, 1, 11, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (381, 1, 11, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (382, 1, 11, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (383, 1, 11, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (384, 1, 11, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (385, 1, 11, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (386, 1, 11, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (387, 1, 11, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (388, 1, 11, 67)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (389, 1, 11, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (390, 1, 11, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (391, 1, 11, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (392, 1, 11, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (393, 1, 11, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (394, 1, 11, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (395, 1, 11, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (396, 1, 11, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (397, 1, 11, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (398, 1, 11, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (399, 1, 11, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (400, 1, 11, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (401, 1, 11, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (402, 1, 11, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (403, 1, 11, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (404, 1, 11, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (405, 1, 11, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (406, 1, 11, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (407, 1, 11, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (408, 1, 11, 87)
GO
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (409, 1, 11, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (410, 1, 11, 89)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (412, 1, 12, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (413, 1, 12, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (414, 1, 12, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (415, 1, 12, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (416, 1, 12, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (417, 1, 12, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (418, 1, 12, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (419, 1, 12, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (420, 1, 12, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (421, 1, 12, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (422, 1, 12, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (423, 1, 12, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (424, 1, 12, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (425, 1, 12, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (426, 1, 12, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (427, 1, 12, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (428, 1, 12, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (429, 1, 12, 67)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (430, 1, 12, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (431, 1, 12, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (432, 1, 12, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (433, 1, 12, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (434, 1, 12, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (435, 1, 12, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (436, 1, 12, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (437, 1, 12, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (438, 1, 12, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (439, 1, 12, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (440, 1, 12, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (441, 1, 12, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (442, 1, 12, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (443, 1, 12, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (444, 1, 12, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (445, 1, 12, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (446, 1, 12, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (447, 1, 12, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (448, 1, 12, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (449, 1, 12, 87)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (450, 1, 12, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (451, 1, 12, 89)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (453, 1, 13, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (454, 1, 13, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (455, 1, 13, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (456, 1, 13, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (457, 1, 13, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (458, 1, 13, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (459, 1, 13, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (460, 1, 13, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (461, 1, 13, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (462, 1, 13, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (463, 1, 13, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (464, 1, 13, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (465, 1, 13, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (466, 1, 13, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (467, 1, 13, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (468, 1, 13, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (469, 1, 13, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (470, 1, 13, 67)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (471, 1, 13, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (472, 1, 13, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (473, 1, 13, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (474, 1, 13, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (475, 1, 13, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (476, 1, 13, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (477, 1, 13, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (478, 1, 13, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (479, 1, 13, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (480, 1, 13, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (481, 1, 13, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (482, 1, 13, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (483, 1, 13, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (484, 1, 13, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (485, 1, 13, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (486, 1, 13, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (487, 1, 13, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (488, 1, 13, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (489, 1, 13, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (490, 1, 13, 87)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (491, 1, 13, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (492, 1, 13, 89)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (494, 1, 14, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (495, 1, 14, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (496, 1, 14, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (497, 1, 14, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (498, 1, 14, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (499, 1, 14, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (500, 1, 14, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (501, 1, 14, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (502, 1, 14, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (503, 1, 14, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (504, 1, 14, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (505, 1, 14, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (506, 1, 14, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (507, 1, 14, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (508, 1, 14, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (509, 1, 14, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (510, 1, 14, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (511, 1, 14, 67)
GO
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (512, 1, 14, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (513, 1, 14, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (514, 1, 14, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (515, 1, 14, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (516, 1, 14, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (517, 1, 14, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (518, 1, 14, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (519, 1, 14, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (520, 1, 14, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (521, 1, 14, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (522, 1, 14, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (523, 1, 14, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (524, 1, 14, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (525, 1, 14, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (526, 1, 14, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (527, 1, 14, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (528, 1, 14, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (529, 1, 14, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (530, 1, 14, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (531, 1, 14, 87)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (532, 1, 14, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (533, 1, 14, 89)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (535, 1, 15, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (536, 1, 15, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (537, 1, 15, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (538, 1, 15, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (539, 1, 15, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (540, 1, 15, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (541, 1, 15, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (542, 1, 15, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (543, 1, 15, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (544, 1, 15, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (545, 1, 15, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (546, 1, 15, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (547, 1, 15, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (548, 1, 15, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (549, 1, 15, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (550, 1, 15, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (551, 1, 15, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (552, 1, 15, 67)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (553, 1, 15, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (554, 1, 15, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (555, 1, 15, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (556, 1, 15, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (557, 1, 15, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (558, 1, 15, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (559, 1, 15, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (560, 1, 15, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (561, 1, 15, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (562, 1, 15, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (563, 1, 15, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (564, 1, 15, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (565, 1, 15, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (566, 1, 15, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (567, 1, 15, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (568, 1, 15, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (569, 1, 15, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (570, 1, 15, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (571, 1, 15, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (572, 1, 15, 87)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (573, 1, 15, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (574, 1, 15, 89)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (576, 1, 16, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (577, 1, 16, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (578, 1, 16, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (579, 1, 16, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (580, 1, 16, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (581, 1, 16, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (582, 1, 16, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (583, 1, 16, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (584, 1, 16, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (585, 1, 16, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (586, 1, 16, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (587, 1, 16, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (588, 1, 16, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (589, 1, 16, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (590, 1, 16, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (591, 1, 16, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (592, 1, 16, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (593, 1, 16, 67)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (594, 1, 16, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (595, 1, 16, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (596, 1, 16, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (597, 1, 16, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (598, 1, 16, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (599, 1, 16, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (600, 1, 16, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (601, 1, 16, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (602, 1, 16, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (603, 1, 16, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (604, 1, 16, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (605, 1, 16, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (606, 1, 16, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (607, 1, 16, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (608, 1, 16, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (609, 1, 16, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (610, 1, 16, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (611, 1, 16, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (612, 1, 16, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (613, 1, 16, 87)
GO
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (614, 1, 16, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (615, 1, 16, 89)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (617, 1, 17, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (618, 1, 17, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (619, 1, 17, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (620, 1, 17, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (621, 1, 17, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (622, 1, 17, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (623, 1, 17, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (624, 1, 17, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (625, 1, 17, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (626, 1, 17, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (627, 1, 17, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (628, 1, 17, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (629, 1, 17, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (630, 1, 17, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (631, 1, 17, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (632, 1, 17, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (633, 1, 17, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (634, 1, 17, 67)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (635, 1, 17, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (636, 1, 17, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (637, 1, 17, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (638, 1, 17, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (639, 1, 17, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (640, 1, 17, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (641, 1, 17, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (642, 1, 17, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (643, 1, 17, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (644, 1, 17, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (645, 1, 17, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (646, 1, 17, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (647, 1, 17, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (648, 1, 17, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (649, 1, 17, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (650, 1, 17, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (651, 1, 17, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (652, 1, 17, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (653, 1, 17, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (654, 1, 17, 87)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (655, 1, 17, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (656, 1, 17, 89)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (658, 1, 18, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (659, 1, 18, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (660, 1, 18, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (661, 1, 18, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (662, 1, 18, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (663, 1, 18, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (664, 1, 18, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (665, 1, 18, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (666, 1, 18, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (667, 1, 18, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (668, 1, 18, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (669, 1, 18, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (670, 1, 18, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (671, 1, 18, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (672, 1, 18, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (673, 1, 18, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (674, 1, 18, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (675, 1, 18, 67)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (676, 1, 18, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (677, 1, 18, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (678, 1, 18, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (679, 1, 18, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (680, 1, 18, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (681, 1, 18, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (682, 1, 18, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (683, 1, 18, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (684, 1, 18, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (685, 1, 18, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (686, 1, 18, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (687, 1, 18, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (688, 1, 18, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (689, 1, 18, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (690, 1, 18, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (691, 1, 18, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (692, 1, 18, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (693, 1, 18, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (694, 1, 18, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (695, 1, 18, 87)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (696, 1, 18, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (697, 1, 18, 89)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (699, 1, 19, 3)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (700, 1, 19, 4)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (701, 1, 19, 5)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (702, 1, 19, 6)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (703, 1, 19, 54)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (704, 1, 19, 55)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (705, 1, 19, 56)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (706, 1, 19, 57)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (707, 1, 19, 58)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (708, 1, 19, 59)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (709, 1, 19, 60)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (710, 1, 19, 61)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (711, 1, 19, 62)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (712, 1, 19, 63)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (713, 1, 19, 64)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (714, 1, 19, 65)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (715, 1, 19, 66)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (716, 1, 19, 67)
GO
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (717, 1, 19, 68)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (718, 1, 19, 69)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (719, 1, 19, 70)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (720, 1, 19, 71)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (721, 1, 19, 72)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (722, 1, 19, 73)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (723, 1, 19, 74)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (724, 1, 19, 75)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (725, 1, 19, 76)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (726, 1, 19, 77)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (727, 1, 19, 78)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (728, 1, 19, 79)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (729, 1, 19, 80)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (730, 1, 19, 81)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (731, 1, 19, 82)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (732, 1, 19, 83)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (733, 1, 19, 84)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (734, 1, 19, 85)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (735, 1, 19, 86)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (736, 1, 19, 87)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (737, 1, 19, 88)
INSERT [dbo].[HotelLikeLog] ([id], [status], [hotelId], [userId]) VALUES (738, 1, 19, 89)
SET IDENTITY_INSERT [dbo].[HotelLikeLog] OFF
GO
SET IDENTITY_INSERT [dbo].[HotelPromotions] ON 

INSERT [dbo].[HotelPromotions] ([id], [discount], [create], [from], [to], [hotelId], [promotionId]) VALUES (1, 0.2, N'2022-06-03 07:00:00', CAST(N'2022-06-10' AS Date), CAST(N'2022-08-31' AS Date), 2, 1)
SET IDENTITY_INSERT [dbo].[HotelPromotions] OFF
GO
SET IDENTITY_INSERT [dbo].[Hotels] ON 

INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (2, N'Ngân Hàn Hotel', 3, N'Có vị trí thuận tiện ở Đống Đa, Ngan Ha Hotel cung cấp các phòng nghỉ trang nhã và thoải mái', N'Ngay trung tâm thành phố', N'Nhận phòng từ 12:00 và hạn trả phòng lúc 12:00 giờ sáng', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d248.37010618788605!2d105.84705598899981!3d21.03681217512315!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbead8848d3%3A0xe9e52918fbfab33d!2zS2jDoWNoIFPhuqFuIEhhbm9pIEJsdWUgU2t5!5e0!3m2!1svi!2s!4v1655971979302!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'nganhanhotel@gmail.com', N'0242123456', N'Active', N'Số 2, Ngõ 538, Vũ Tông Phan, Thanh Xuân, Hà Nội', 1, 1, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (3, N'Mun Hotel', 3, N'Có vị trí thuận tiện ở Quận 1, Mun Hotel cung cấp các phòng nghỉ trang nhã và thoải mái', N'Ngay trung tâm thành phố', N'Nhận phòng từ 12:00 và hạn trả phòng lúc 12:00 giờ sáng', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d248.37010618788605!2d105.84705598899981!3d21.03681217512315!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbead8848d3%3A0xe9e52918fbfab33d!2zS2jDoWNoIFPhuqFuIEhhbm9pIEJsdWUgU2t5!5e0!3m2!1svi!2s!4v1655971979302!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'munhotel@gmail.com', N'0282123456', N'Active', N'Số 2, Ngõ 538, Vũ Tông Phan, Thanh Xuân, Hà Nội', 10, 1, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (4, N'Mặt Trời Hotel', 3, N'Có vị trí thuận tiện, Mặt Trời Hotel cung cấp các phòng nghỉ trang nhã và thoải mái', N'Có nhiều cảnh đẹp', N'Nhận phòng từ 12:00 và hạn trả phòng lúc 12:00 giờ sáng', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d248.37010618788605!2d105.84705598899981!3d21.03681217512315!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbead8848d3%3A0xe9e52918fbfab33d!2zS2jDoWNoIFPhuqFuIEhhbm9pIEJsdWUgU2t5!5e0!3m2!1svi!2s!4v1655971979302!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'mattroihotel@gmail.com', N'0231123456', N'Active', N'Số 2, Ngõ 538, Vũ Tông Phan, Thanh Xuân, Hà Nội', 1, 3, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (5, N'Lữ Hành Hotel', 3, N'Có vị trí thuận tiện, Lữ Hành Hotel cung cấp các phòng nghỉ trang nhã và thoải mái', N'Ngay trung tâm thành phố', N'Khách sạn chỉ cung cấp cho những người >18 tuổi, trẻ em phải đi cùng người giám hộ', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d248.37010618788605!2d105.84705598899981!3d21.03681217512315!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbead8848d3%3A0xe9e52918fbfab33d!2zS2jDoWNoIFPhuqFuIEhhbm9pIEJsdWUgU2t5!5e0!3m2!1svi!2s!4v1655971979302!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'luhanhhotel@gmail.com', N'0251123456', N'Banned', N'Số 2, Ngõ 538, Vũ Tông Phan, Thanh Xuân, Hà Nội', 1, 3, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (6, N'Mayflower Hotel Hanoi', 3, N'Khách sạn cao cấp có phòng ốc tinh tế, nhà hàng sang trọng và phục vụ bữa sáng miễn phí.', N'Nằm ở Khu vực trung tâm ghi dấu ấn riêng với các cửa hàng đồ thủ công và ẩm thực đường phố trong khu phố cổ, cùng Nhà thờ Lớn Hà Nội.', N'Bạn có thể hủy yêu cầu đặt phòng mà không mất phí cho đến 48h', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d733.598083883515!2d105.84779339529666!3d21.036978529020885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abb94a5b2a45%3A0x4580edf60fc1ec09!2sMayflower%20Hotel%20Hanoi!5e0!3m2!1svi!2s!4v1655971511710!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'Mayflower@gmail.com', N'024 3533 1111', N'Active', N'11 P. Hàng Rươi, Hàng Mã, Hoàn Kiếm, Hà Nội', 1, 1, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (7, N'Khách Sạn Rising Dragon Villa', 2, N'Khách sạn bình dân có nhà hàng, khu spa, quầy bar trên tầng thượng, phòng ốc bài trí đơn giản có ban công.', N'Khu vực trung tâm ghi dấu ấn riêng với các cửa hàng đồ thủ công và ẩm thực đường phố trong khu phố cổ, cùng Nhà thờ Lớn Hà Nội.', N'Bạn có thể hủy yêu cầu đặt phòng mà không mất phí cho đến 24h', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d232.7469240584107!2d105.84733669460034!3d21.034655131094027!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbe9067dde7%3A0x2000f3cec844ebeb!2zNTItMjYgUC4gQsOhdCBT4bupLCBIw6BuZyBC4buTLCBIb8OgbiBLaeG6v20sIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1655973081131!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'RisingDragon@gmail.com', N'024 3923 2683
', N'Active', N'43 P. Bát Sứ, Hàng Bồ, Hoàn Kiếm, Hà Nội', 1, 1, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (8, N'Hanoi L'' Heritage Hotel', 4, N'Khách sạn thư thái bên trong Khu Phố Cổ có một phòng tập, một phòng xông hơi & có phục vụ bữa sáng miễn phí.', N'Khu vực trung tâm ghi dấu ấn riêng với các cửa hàng đồ thủ công và ẩm thực đường phố trong khu phố cổ, cùng Nhà thờ Lớn Hà Nội.', N'Bạn có thể hủy yêu cầu đặt phòng mà không mất phí cho đến 24h', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d256.28220732908056!2d105.84713036312996!3d21.03540997445906!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbea207b703%3A0x9bb7fe181f1ee894!2sHanoi%20L&#39;%20Heritage%20Hotel!5e1!3m2!1svi!2s!4v1655973996340!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'Heritage@gmail.com', N'024 6299 5666', N'Active', N'41 P. Hàng Gà, Hàng Bồ, Hoàn Kiếm, Hà Nội', 1, 1, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (9, N'Serene Boutique Hotel', 3, N'Khách sạn hiện đại có spa, nhà hàng và phòng ở trang nhã, một số phòng có ban công.', N'Khu vực trung tâm ghi dấu ấn riêng với các cửa hàng đồ thủ công và ẩm thực đường phố trong khu phố cổ, cùng Nhà thờ Lớn Hà Nội.', N'Bạn có thể hủy yêu cầu đặt phòng mà không mất phí cho đến 48h', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d232.7461755337618!2d105.84732934708362!3d21.035134288303198!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbe962a8b35%3A0x3f41e66d6737136!2zMi0yNiBQLiBCw6F0IFPhu6ksIEjDoG5nIELhu5MsIEhvw6BuIEtp4bq_bSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1655975021604!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'SereneBoutique@gmail.com', N'024 3923 4278', N'Active', N'Old Quarter, 16-18 P. Bát Sứ, Hàng Bồ, Hoàn Kiếm, Hà Nội', 1, 4, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (10, N'Lucky Star Hotel 266 Đề Thám', 2, N'Giờ nhận phòng: 14:00', N'Đường Bùi viện có nhiều cửa hàng ăn uống và trung tâm giải trí về đêm sôi động cùng công viên 23/9 và nhà thờ Công giáo.', N'Bạn có thể hủy yêu cầu đặt phòng mà không mất phí cho đến 24h', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d244.97251869581888!2d106.69335328484681!3d10.768331022071887!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f32bf7c6bd9%3A0xae4b0bda253ae23a!2zTHVja3kgU3RhciBIb3RlbCAyNjYgxJDhu4EgVGjDoW0!5e0!3m2!1svi!2s!4v1655976000883!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'LuckyStarHotel@gmail.com', N'028 3920 9605', N'Active', N'Vòng xoay, 266 Đề Thám, Phường Phạm Ngũ Lão, Quận 1, Thành phố Hồ Chí Minh', 10, 4, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (11, N'Khách sạn Park Hyatt Sài Gòn', 5, N'Khách sạn cao cấp với phòng ở tinh tế, một số phòng có sân hiên, có nhà hàng, bể bơi ngoài trời và spa.', N'Khu trung tâm thành phố mang nét đặc trưng riêng với các căn phòng thời chiến tại Dinh Độc Lập, bảo tàng lịch sử và nghệ thuật hay các quán bar trên Đường Phạm Ngũ Lão.', N'Bạn có thể hủy yêu cầu đặt phòng mà không mất phí cho đến 48h', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d244.9651081714524!2d106.7030549324397!3d10.777440446302617!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f462f8cac37%3A0x3d4cc4e3c1887abb!2zS2jDoWNoIHPhuqFuIFBhcmsgSHlhdHQgU8OgaSBHw7Ju!5e0!3m2!1svi!2s!4v1655976429718!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'ParkHyatt@gmail.com', N'028 3824 1234', N'Active', N'2 Lam Son Square, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh', 10, 4, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (12, N'Sunflowers Hotel', 5, N'KS bình dân phục vụ bữa sáng, có phòng chờ ở sảnh và phòng ở có thiết kế đơn giản. Một số phòng có ban công.', N'Khách sạn có lối thiết kế đơn giản này nằm trên một con phố nhỏ ở khu vực có nhiều quán cà phê và quán ăn bình dân, cách Sân bay Quốc tế Tân Sơn Nhất 1 km. Ngoài ra, nơi đây cách chùa Giác Lâm 6 km, một quần thể kiến trúc Phật giáo có niên đại từ thế kỷ 18.', NULL, N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d244.9394929404197!2d106.66677071268019!3d10.808869663828599!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529187c913e5b%3A0x9ed3285adbd53df7!2sSunflowers%20Hotel!5e0!3m2!1svi!2s!4v1655976985493!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'SunflowersHotel', N'028 3848 5587', N'Active', N'18 Đ. Lam Sơn, Phường 2, Tân Bình, Thành phố Hồ Chí Minh', 10, 1, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (13, N'Mường Thanh Grand Đà Nẵng Hotel', 4, N'Khách sạn cao tầng trang nhã có phòng ở thoáng mát, 1 spa & 1 bể bơi ngoài trời, cùng 2 nhà hàng & 2 quán bar.', N'Khu vực rộng lớn bao trọn các bãi biển và đồi núi, mang nét đặc trưng riêng với các quán ăn hải sản thư thái, quán bia và điểm biểu diễn nhạc jazz sang trọng.', N'Bạn có thể hủy yêu cầu đặt phòng mà không mất phí cho đến 24h', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d239.62602519245118!2d108.23306874153899!3d16.064638578177526!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219f5540b195d%3A0x4476dc3ffe0f3386!2zTcaw4budbmcgVGhhbmggR3JhbmQgxJDDoCBO4bq1bmcgSG90ZWw!5e0!3m2!1svi!2s!4v1655977554043!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'MuongThanhGrand@gmail.com', N'0236 3929 929', N'Active', N'962 Ng. Quyền, An Hải Bắc, Sơn Trà, Đà Nẵng', 6, 4, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (14, N'D&C Danang Hotel', 2, N'Khách sạn bình dân có phòng ở bài trí đơn giản, nhà hàng tầng thượng, cảnh sông và bữa sáng miễn phí.', N'Khu vực rộng lớn bao trọn các bãi biển và đồi núi, mang nét đặc trưng riêng với các quán ăn hải sản thư thái, quán bia và điểm biểu diễn nhạc jazz sang trọng.', NULL, N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d561.7554084135937!2d108.23097114055422!3d16.065937642370148!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142182c18e343a3%3A0x24b27f0906d4118!2sD%26C%20Danang%20Hotel!5e0!3m2!1svi!2s!4v1655978532368!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'DCDanang@gmail.com', N'090 512 55 55', N'Active', N'01 Mai Hắc Đế, An Hải Trung, Sơn Trà, Đà Nẵng', 6, 1, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (15, N'Forever Hotel', 3, N'Khách sạn cao tầng trang nhã có phòng ở thoáng mát, 1 spa & 1 bể bơi ngoài trời, cùng 2 nhà hàng & 2 quán bar.', N'Khu vực rộng lớn bao trọn các bãi biển và đồi núi, mang nét đặc trưng riêng với các quán ăn hải sản thư thái, quán bia và điểm biểu diễn nhạc jazz sang trọng.', N'Bạn có thể hủy yêu cầu đặt phòng mà không mất phí cho đến 24h', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d239.62819392558325!2d108.233407776251!3d16.06283773374136!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219d5b3e9b751%3A0xf4b267c48c39993d!2sForever%20Hotel!5e0!3m2!1svi!2s!4v1655978912193!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'ForeverHotel@gmail.com', N'094 188 11 99', N'Active', N'1040 Ngô Quyền, An Hải Bắc, Sơn Trà, Đà Nẵng ', 6, 1, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (16, N'New Century Hotel Đà Lạt', 2, N'KS bình dân phục vụ bữa sáng, có phòng chờ ở sảnh và phòng ở có thiết kế đơn giản. Một số phòng có ban công.', N'Vị trí tiện lợi để ngắm cảnh, giải trí, ăn uống và di chuyển xung quanh tốt', NULL, N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d243.98315781757728!2d108.4430349642573!3d11.923832411849272!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317113dea8118d6d%3A0xa6c8df9c3567e01c!2zTmV3IENlbnR1cnkgSG90ZWwgxJDDoCBM4bqhdA!5e0!3m2!1svi!2s!4v1655979509035!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'NewCentury@gmail.com', N'0263 3838 485', N'Active', N'14b Đường Đống Đa, Phường 3, Thành phố Đà Lạt, Lâm Đồng', 7, 1, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (17, N'An Garden Đà Lạt', 3, N'Khách sạn bình dân có phòng ở bài trí đơn giản, nhà hàng tầng thượng, cảnh sông và bữa sáng miễn phí.', N'Vị trí tiện lợi để ngắm cảnh, giải trí, ăn uống và di chuyển xung quanh: Tốt', NULL, N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d260.3620139358666!2d108.43983905951114!3d11.92626030676346!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3171135ffe70bb81%3A0x69c21e4eb37f0d64!2zQW4gR2FyZGVuIMSQw6AgTOG6oXQ!5e0!3m2!1svi!2s!4v1655979842608!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'AnGarden@gmail.com', N'093 299 76 88', N'Active', N'26A Đường Đống Đa, Phường 3, Thành phố Đà Lạt, Lâm Đồng', 7, 4, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (18, N'Khách sạn Mường Thanh Holiday Đà Lạt', 4, N'Khách sạn thoáng đãng nhìn ra hồ và có nhà hàng Việt Nam/châu Âu, cùng phòng tập, spa và bể bơi trong nhà.', N'Khu vực sầm uất có Hồ Xuân Hương rộng lớn và chợ Đà Lạt họp ngày lẫn đêm có quầy mua sắm, quầy đồ ăn đường phố.', NULL, N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d243.96517019432892!2d108.43993564762879!3d11.943819562760572!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31711328aac15563%3A0x8b0efe1bf2a961be!2zMTQ1LTEwNyBQaGFuIELhu5lpIENow6J1LCBQaMaw4budbmcgMiwgVGjDoG5oIHBo4buRIMSQw6AgTOG6oXQsIEzDom0gxJDhu5NuZywgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1656396043792!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'MuongThanhHoliday@gmail.com', N'0263 3578 888
', N'Active', N'42 Phan Bội Châu, Phường 2, Thành phố Đà Lạt, Lâm Đồng', 7, 1, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (19, N'Lake View Hotel', 2, N'KS bình dân phục vụ bữa sáng, có phòng chờ ở sảnh và phòng ở có thiết kế đơn giản. Một số phòng có ban công.', N'Khu vực sầm uất có Hồ Xuân Hương rộng lớn và chợ Đà Lạt họp ngày lẫn đêm có quầy mua sắm, quầy đồ ăn đường phố.', N'Bạn có thể hủy yêu cầu đặt phòng mà không mất phí cho đến 48h', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d243.96541878782116!2d108.43929731078391!3d11.943543559920593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31711328aac5b993%3A0x278855578d0cd26b!2sLake%20View%20Hotel!5e0!3m2!1svi!2s!4v1656401595897!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'LakeView@gmail.com', N'0263 3522 278', N'Active', N'121 Phan Bội Châu, Phường 2, Thành phố Đà Lạt, Lâm Đồng', 7, 1, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
SET IDENTITY_INSERT [dbo].[Hotels] OFF
GO
SET IDENTITY_INSERT [dbo].[HotelServices] ON 

INSERT [dbo].[HotelServices] ([id], [service], [price], [unit], [create], [from], [to], [hotelId], [serviceCategoryId]) VALUES (1, N'Đón tại sân bay', 10000, N'VNĐ/giờ', N'2022-06-13 17:15:00', CAST(N'2022-06-13' AS Date), CAST(N'2023-06-13' AS Date), 2, 1)
INSERT [dbo].[HotelServices] ([id], [service], [price], [unit], [create], [from], [to], [hotelId], [serviceCategoryId]) VALUES (2, N'Thuê xe điện thăm quan', 20000, N'VNĐ/giờ', N'2022-06-13 17:15:00', CAST(N'2022-06-13' AS Date), CAST(N'2023-06-13' AS Date), 2, 1)
INSERT [dbo].[HotelServices] ([id], [service], [price], [unit], [create], [from], [to], [hotelId], [serviceCategoryId]) VALUES (3, N'Xấy đồ', 20000, N'VNĐ/kg', N'2022-06-13 17:15:00', CAST(N'2022-06-13' AS Date), CAST(N'2023-06-13' AS Date), 2, 5)
INSERT [dbo].[HotelServices] ([id], [service], [price], [unit], [create], [from], [to], [hotelId], [serviceCategoryId]) VALUES (4, N'Giặt quần áo', 10000, N'VNĐ/kg', N'2022-06-13 17:15:00', CAST(N'2022-06-13' AS Date), CAST(N'2023-06-13' AS Date), 2, 1)
INSERT [dbo].[HotelServices] ([id], [service], [price], [unit], [create], [from], [to], [hotelId], [serviceCategoryId]) VALUES (5, N'Bể bơi chung', 10000, N'VNĐ/giờ', N'2022-06-13 17:15:00', CAST(N'2022-06-13' AS Date), CAST(N'2023-06-13' AS Date), 2, 2)
INSERT [dbo].[HotelServices] ([id], [service], [price], [unit], [create], [from], [to], [hotelId], [serviceCategoryId]) VALUES (6, N'Thuê địa điểm tổ chức sự kiện', 1000000, N'VNĐ/buổi', N'2022-06-13 17:15:00', CAST(N'2022-06-13' AS Date), CAST(N'2023-06-13' AS Date), 2, 5)
SET IDENTITY_INSERT [dbo].[HotelServices] OFF
GO
SET IDENTITY_INSERT [dbo].[HotelSuggestPlaces] ON 

INSERT [dbo].[HotelSuggestPlaces] ([id], [place], [distance], [hotelId], [categoryId]) VALUES (2, N'Hồ Gươm', 4.5, 2, 5)
INSERT [dbo].[HotelSuggestPlaces] ([id], [place], [distance], [hotelId], [categoryId]) VALUES (3, N'Chợ Đồng Xuân', 5, 2, 1)
INSERT [dbo].[HotelSuggestPlaces] ([id], [place], [distance], [hotelId], [categoryId]) VALUES (4, N'Phố Hàng Mã ', 2.5, 2, 2)
INSERT [dbo].[HotelSuggestPlaces] ([id], [place], [distance], [hotelId], [categoryId]) VALUES (5, N'Nhà cổ Mã Mây', 0.5, 2, 2)
INSERT [dbo].[HotelSuggestPlaces] ([id], [place], [distance], [hotelId], [categoryId]) VALUES (6, N'Phố Tạ Hiện', 1.5, 2, 3)
SET IDENTITY_INSERT [dbo].[HotelSuggestPlaces] OFF
GO
SET IDENTITY_INSERT [dbo].[Manages] ON 

INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (1, 4, 2)
INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (2, 54, 3)
INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (3, 55, 4)
INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (4, 56, 5)
INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (5, 57, 6)
INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (6, 58, 7)
INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (7, 59, 8)
INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (8, 60, 9)
INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (9, 61, 10)
INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (10, 62, 11)
INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (11, 63, 12)
INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (12, 64, 13)
INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (13, 65, 14)
INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (14, 66, 15)
INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (15, 67, 16)
INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (16, 68, 17)
INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (17, 69, 18)
INSERT [dbo].[Manages] ([id], [userId], [hotelId]) VALUES (18, 70, 19)
SET IDENTITY_INSERT [dbo].[Manages] OFF
GO
SET IDENTITY_INSERT [dbo].[Promotion] ON 

INSERT [dbo].[Promotion] ([id], [promotion], [create], [from], [to]) VALUES (1, N'Khuyến mãi ngày hè', N'2022-04-03 06:09:54', CAST(N'2022-06-01' AS Date), CAST(N'2022-09-30' AS Date))
SET IDENTITY_INSERT [dbo].[Promotion] OFF
GO
SET IDENTITY_INSERT [dbo].[ReservationRoom] ON 

INSERT [dbo].[ReservationRoom] ([id], [quantity], [unitprice], [roomId], [reservationId], [discount]) VALUES (1, 1, 1.5, 1, 1, 0)
INSERT [dbo].[ReservationRoom] ([id], [quantity], [unitprice], [roomId], [reservationId], [discount]) VALUES (2, 1, 1.5, 1, 2, 0)
SET IDENTITY_INSERT [dbo].[ReservationRoom] OFF
GO
SET IDENTITY_INSERT [dbo].[Reservations] ON 

INSERT [dbo].[Reservations] ([id], [noOfAdults], [noOfChild], [noOfRoom], [bookDate], [arrival], [department], [status], [userId], [hotelId]) VALUES (1, 1, 0, 0, N'2022-07-25 16:59:51', CAST(N'2022-08-01' AS Date), CAST(N'2022-08-03' AS Date), N'Accept', 5, 2)
INSERT [dbo].[Reservations] ([id], [noOfAdults], [noOfChild], [noOfRoom], [bookDate], [arrival], [department], [status], [userId], [hotelId]) VALUES (2, 1, 0, 1, N'2022-07-29 17:08:07', CAST(N'2022-08-04' AS Date), CAST(N'2022-08-06' AS Date), N'Accept', 5, 2)
SET IDENTITY_INSERT [dbo].[Reservations] OFF
GO
SET IDENTITY_INSERT [dbo].[RoomPromotion] ON 

INSERT [dbo].[RoomPromotion] ([id], [roomid], [promotionid]) VALUES (1, 2, 1)
INSERT [dbo].[RoomPromotion] ([id], [roomid], [promotionid]) VALUES (2, 4, 1)
INSERT [dbo].[RoomPromotion] ([id], [roomid], [promotionid]) VALUES (3, 5, 1)
SET IDENTITY_INSERT [dbo].[RoomPromotion] OFF
GO
SET IDENTITY_INSERT [dbo].[RoomTypes] ON 

INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (1, N'Phòng đơn tiêu chuẩn', N'http://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/21/2016/06/21042553/Executive-Room-Shoot-in3.jpg', 3, 1.5, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 2)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (2, N'Phòng phong cách cổ điển', N'data:image/jpeg;base64,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', 3, 2.5, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 2)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (3, N'Phòng Deluxe', N'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFRgVFBUYGBgYGRgYGBgYGBgYGRgYGBgaGRgYGRgcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDszPy40NTUBDAwMEA8QHhISHjQrJCs0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ9NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDE0NP/AABEIALcBEwMBIgACEQEDEQH/xAAcAAAABwEBAAAAAAAAAAAAAAAAAgMEBQYHAQj/xABNEAACAQIDBAUIBgYHBgcBAAABAhEAAwQSIQUiMUEGMlFxsQcTYXKBkaHBQlJistHwIySCkqLCFCUzQ2Nz4RY1k7PD0hc0RFNU4vEV/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAECAwQF/8QAJBEBAQACAgICAgIDAAAAAAAAAAECERIxAyFBUTJhBBMiM0L/2gAMAwEAAhEDEQA/AMgrtcrtJoFCgK6KDCuxQrtBivwqzdA1/WW9Q/eWq0/CrV5P1/WW/wAs/eWi9FU90xXW13P/AC1WwlWnpmN613P4rUDgwM6yJ1mO7Wsbfbr8X4R3zD24aWB+w0Ed7cqkMNt26n94T6LiBh+8pzUhdxCTu5o1V11ykdqgsYP+lNLtnKxU8jH+tLZ8Zl2tOG6Rz17c+m2wb+BoIp8m0sNdGVmTX6Nxcv3hBqjBaO6aL3fzNT5Iy8OKc6UdGcMuHuXkQIyIWXISFP7PCKzcCte28kbNf/IT7q1koWtcb6c8goFdAo4SjqlNWh8LjLtsg27jp6rED2jgasez+mWJSA4S4PSMje9dPhVbKgR+eVdL1Ng00nA9N7DwLma2ftDMuv2l+YFWy3tJXRWQhlKghgZBHbPOsHY1q/Rcfqlj1FqcpoXGJm7dZuJpq604y0VwBxqSMylFKUe5eA4a+FNLl4nn7qNHspcdV4n2c6Y3sUfoj2n8KNkJ4LS2HwOYwxjnpT9EibhZuJJ/PZR7WAduAPgPfU5ltJwgnlzJ7v8ASmuM2oqdYqnrne9iCW+FLa5sjb2SB1j7vxNHz2k0GWfeahMXt9TIUM/fuL7hLH3iohsc8FUy21PFbahJ7z1j7TS2uY1ZMdtJlOmRBza4xU/spBY+4VE4rbqfRzufRuL79WPwqFKczqa4Vo2qYnLbXc/Qt/usfiTrQprFCns+KBoUBQrZyO10Vyuig3a7XK7Qbj8Ktnk7X9Yf1P51qqNVw8nC/rD+oPvii9Jqd6aDeteq/itQOF0ce3wNWLpoN+16r+K1X8PbJaBxIYAdpKmBWGXbs8X+uCMsE958ac4uCV0ghFB56xxnuii30h27z8TR7KkBiNNANPSR8ganbT9kks6S0gctOPd+edddZ5QAIA9FLJbLHmacphY40bJY+kSf1a/+QngtZN5uti6Sr/Vzj/BT+Wshmt50458iha4TRjRIoWK3L88qEV1uVcL0E7Fat0XuqMJZ1BIQSBqRqePZWSmTSlhnQyjMh7VYqfhRZtNbO14nqiPiaSNlm4yaqvQfad647JccuoEjMBI9sSfbV5NRfRWGSYKTHOnCbL7Y8f8ASl8ON8e3wNOMfiBaRnYEhRJA48QOffStBoMEo4yfz2CjG0ANAB3VHJtl3IyoFUkasZME+iKmWWgM9x9x1sAoxWWAJUwSMo0JHKq6VqcxOKV8MSJGV1BnSN3/APKjWxVs2wotrnmTdzsWI+rknKB7J0rO7268ejUCuEV0PRS1KVVcJojGjGk2NXE0JoUWhVEgxQoChWzkdrorldFAdrtcrtBugajvHjVx8mg/T3PUH3qqOH1dB9pfEVcfJgP01z1F+9Rek1PdNuva9VvEVXbZIII4jUd4qy9NEm5b9RvvVBpbUcda5sr7dvh/CFf6OzsxEGSTOYayZ7acWrACnMew/H/Wk8Pc3lA+sPGhaMg+lfAhvlU7aapQ3QOqKSZieNdPporXBy1pbGlx6Sj+rn/yU/lrHga2TpT/ALtuf5Sfy1jIX8+mumdOLH5dLUSjaUUvTW4yfn2UMlGDcO/5UeaC0bq2tKgUko1pyBQUWnyfL+mf1fka0YrWfeTxf07+qPBq0crWeXaaTwy769/yrvSBJw9z1fmKVsLvr30bbq/q9z1fmKE/Kr7OSFXvFWkrVb2f1F9lWkrQGV47Z4XC3ACTmuKdAJGhGnbwqoeYKndf2MCp+YrQ9op+rv648blVfEpunuPhSlsdEm0dhnLLPpI9xijEmubPG4e9vGlitKybXjbcYRmumlRbFOntookwAOZOlMGEL6fhQp15+12p4/KhTLcVYGu1yu1s5IFdFcoCgxqk+j1tXxWGR1DK1+yrKwBDKbiggg8QQSIqLpxg8S1t0uJGZHV1nUZlYMsjmJAoNaNvYNEO7YVSt1RmXTg8ERMdn54G8mmKRLtzO6pKKBmYLJzcBNQeL27cuCGCdcPIBBJBzamTzqICGlJ6KvQnmrN2MwR+wkK0dxpJ+juGbjaA9UsvgawNcw1HHt0p/h9r4lereur6txx8A1K4yiXKdWtnbopY+iXXuYHxFNrnRD6l4jvSfiGFZla6ZY9OGIc+tDfeBqQs+UjGrxKN6yD+WKm+OfSp5M58ro/Q67ydG7yy/I03u9GcQvC2G9VlPiRUTg/KbiCN6zabuLp8zT+x5UlmHwxHpW4D8Cg8an+uLnmzn0svS5Y2deBERaWfRBWaxcnj3mtB2308w+Jw12wlu4ruhVcwQrMg8Q3o7Kh9mbOtPs+/ca1Loz5bktK5VQxA0jXn2nsrTqIx9dqg5ooIoz0ShoVWlEFEtCnCpQDVBrToCkbdsltBPdT5cM/1T+fRQUWXydj9O3cPBq0krWZdB8QtrEHzrKmaAuchJMNoM3E6itNZxWd7Rl27ZG+vfTrG4YXEZCSAwgkcR3U1sNvr3inO03ZbTsphgpIPYfbQkxw+xraAAZmjtP4RT0iq7h1uuil3ckxO8QOBPAaVZSKCUHFJ+jcf4i/fuCofGKAjQAN1uHcanMYNy56Lg/5lyoTGDcbuPhUOnFV9n9VvWb71LkUjs7qt67eNLmnl2vHqCUtjuqPWT760iaWxvUHrJ99ac7LLqnLGu1xl9I99CgKYFq47I6OYZsEcViHuCGYHIV0VSFEAgyZNVFBWg4Zf6kc/af76Vrl8OaT1tBjBbKPDEYhe9J8Ero2Ps5urjnX17LfgKr6LpXctPX7JPjo5hD1dp2v2rZX+aunopZPV2lhT3uF/mNQAFdijV+wsA6FXD1cVhH7r3/1NG/2Dxf0TYb1bo+YFV3IOYHuowRfqj3Uav2aefoLjxwsZvVuWz/NSL9D8eOOFf2ZG8GqMVyOqzDuYjwNObePvDq3ro7rrjwalqnsa50fxi9bC3/Zac/EA0i+zb69axdHfaceK0+t7cxS8MTf/AOK58TTpOlOOHDFXfaVbxU0ez2gnsleshHrKR40TKh+r8KtKdMseP/Use9LJ/kpUdNMWes1p/Xs2z4AUez3PpVrWHXiND6DT+1tG8lt7S3HCPOdJ3WmJkewe6plullw9bD4NvWww+TCuDpEh6+AwR9W0yeDml7Pc+lUcUnFWx9r4Vuts2z+xevJ4UQYnAHjgGX1MXcP3lo9nyiCwtrMeMUribBH0j8Pwq5dHNl4DFObaW8RaYIzybqON3lqs8/hVJuO7zAGlEpWtZ8kmzrLYU3GtI1zzrqXZFLwMpAzESAJrQHWBpp3VgnRjbeLsI1u2mIZMxciyIALACWYW2YdX6wHoqcTbty4rs64lMlt3h8TeXOUE5BBGXnrBqtsLjbWk7QSQQRI7DrVJt7cLOFC+81Xtl7YOJcqEuJEa/wBKxLHWdeuOyp3DbMAdTJNZZdrxx1Paf2biGZ1B7R41N7TH6J/UbwqHwFkK6n0jxqa2h/Zv6jeFEKobBHcX2fdNTJFVzAXIQZtYHyqxzTTFFx43L3of/qvUFiGBU9sGQeI05irBjhuX/wDM/wCsfxqtXWzXX7ETL7TqfCs66carGz5l+zO3hTxhTfZ69c/bPgKdNTy7aY9Eqc4jLkOYSsCRxmmppfF/2berTgvRDzC//H+Fv/uoVKUKe08VLT8K0bDD+on77n/MWs6t/MVpGFH9RP33fvrWt+HPfxUC2NBQIo1oboo2WqSRNdZCIzAidRIIkdonjV28mYw7Yo2MTZt3FvplQ3EVstxJYAZhpmGb2qtbZtDZFi+uS9aR1+q6hgO6eHspUrlp5dFdmtxxHk52fmJFgjnAu3v++mp8nWAP0HHddf5k0DlGS4DZt69m81bZ8gBbLGk8OPcaNc2beTr2nH7DR7wK2LZPRezgnJsl8t3cZXYMAVDMpGk8iPbRMfh4bQUrT5Ri5NdzVqlzDKeKg94BoW9n2v8A20/cX8KnkrcZamugkn0a0o6FTDAqexgQfca1+xZRBuoq+qoHhTfDWLb3nS4iPmUOMyq3DdbiPVo5CZRk2ahmrY7vRnCNxsJ7FjwqPu9C8IT1CO53/GnyHKMtDUZXrTV6IYRf7onvdz8JqV2LsLCEOj4a2wVlYZkB4qRxPHhwNHIXKaUvycP+uAdqXB/DVSS4VJjTiK27F4G3bv4Z7dtEAN1NxFQQ9skA5R2rWHMN5u8+NL5PG79rr0J6Rph1fzj6uchXOFMEEBzJghfnVc24yviLrIwZS7FWBkEEzI9FQwO9TsHSmcnvaf6FJ+mbuX51pNu0NNKzjoSf0zeqPE1pVs6VFnssqcWVAK948aeYtwUcA8FYHQ8ctMUbUd48af4s7j+q3gaNM9qrsxjkHPTnVqHAd1VPZR3BVrQ6DuFBfKhY3Fa4pIG5L9/6zcWPcgPtqsWrzgOcinOxac66aREVbto2FjFNGpLgn0C4Gj3ux9tUC/hLY1yj90fhWds3p14TcJ4FYzjmHI/hFKMaldmbDFzDvfR0VUZQyQ2cliFUwBGvfyNJ39mqgBLZp7ARy7aLZteM9aRJpxidbTR9Q+FIYXEEkW2VcrHNIDZtFYgTOgqdbBoEQiZPp04kfhT5aFnwjP6cna37j/hQp5/RF+1+8aFG4ON+1KT51pOD/wBxXO+799azNa0jZzTsK96C/wB9a3sclv8Aio1kaClVWk7HAUstWkrh3KMrr1kZXX1kIYfEV6bwWJW7bS6nVdFdZEHKwDCR3GvMYFeiuiF7PgcKx4mxbB71QKfClkmnuIGtNGSnmIGvvpuwpIMMfooPY9v4uq+DGo/aFvjUltBdw+hkb2K6sfCmWNpVUQNy3RVeNSad3VphiU3SPQfCo0uUkNuWDoLi+05fGKb2tpW/6RbbziRDqTmEagESe9RVaGHlfSND3jQ/EUydYNY8/bun8XHW5WrrtazH9rb/AH1/Gk7m2MOON5PY6k+4GaywCuxRfLfoT+Jj9tNw21rN4lbbyRxEEaHmJFOtmvlukfWX4qfwJrPei75b/ejD4qflV8w7DziN6Y/eBX51pjlv25vN45hdRK7REqh+q6H3nIfgxrAcTcCs5P1m8a9CXUlSPb7jPyrzTtC6c7ifpv8AeNXJ7RjlqJrYu1lsF2IaWyABSoPXJPWBkQCD63KlMVhDbCbwYOgZWWYIPf7PfUPhLCsJaSQJGtTOHDuioXQW0BALsgZTpouYgxw1qqqX5S/Qtv0zer860a2+lZVsDEeavashlTJRsw46a1fdn7RV1medT8llLfadt3NR3jxqUxLbjeq3gar9q+JHePGpu8+63qnwoZqrsp9yrZbbdHcPCqTs26MtXGw+4vqjwoHyrG0jpiu9z/FbNZu+3sOwg2Wj0Ej+etF2kf8AzQ9f+SsSFTMZlfbbnljJpaP9obQQotu4FMSM5GqmVM5p0mk06QjgFcgfXfN41WppSxxqv68UzzZbT9jEaq6WXJ1CkF2+yeXpipqxibhT9KAscBKkgHnpxqm7P/trY5ecUewsJFXTGIA+WIhDp3En5VOWEk9NcPJcr7H876a5TTB3dxdeVCs+LVU0StB2Uf6kxI7Gf4slQmP6KXLaZ0bPlnMoG9HaO3uqa6N2nvbLxNm2Mzu5CrIE6qeJ05GumuLcs9KXZOlOFNTuE6B49v7tF9a4v8s1J2PJnjm6z2E/bc/yVSblFSDVvHk0vFtnWSfo+cX2LccD4VRsN5KnP9pi0HoS0W/iLjwrR+jWzreCwyYdXL5cxLkAFmdizGBw46DsAopXKJG8absaNeuAnjSDXPRRpGyeMSUcDmrR3wYqMxbzqOHH31Ivc7/YCagrxcogCOSESYVjrlEjhU2KhJ+2ml8aH207XC3iNLbnvGX70UV9j4lhpbjvdPxpaVKpLEK1xexp9jAEfGfdUXcMmrfjOiGOYsVRDmIPXUfRA+VN8N5Psa532tWx6zO37qiP4q58vHlcrqPSw8+Ewm6q1DNV+seTVf7zEuT9i2qfeLU9Tya4X6V3En9q2PBKP6civ8vx/bPNm3wl1G7GAPc2786vAxOUT2EH3GpNegOAXibne12PACnY2ZgLfWup+3fUfMVePiyjn83mxzss2fq47apS9CbbMxaxaYlmMjSZJPMemrg20cKg3XDAabiPc+KA9o99NG6RJMJYcjjmY20WAYJ1fNHsrXi5uVnSGTyfYUjW3lP2W/Ch/wCHuGHBZ7yfxqX/ANoP8NBrH9rr9zX2TPLlIfbp1hBoJ65II14SoEaHWeVHGDlkjbPQ6yhlLYkc90fKaef/AMfLwtg+0fhSF7bV4yEyDSV4ySOspkmDpzHMdhpvc2riNYuRoAIVOseRkafQ/fpcYfLKubVw7oilLTE51nKpMLrJ0nThU0bsCTpFQF3aN1tPOPx5ELInjIA3YIqPvW1YhnGY8i+p1CjQn26UaCwLtjDNwvWz3svzp6t4EAgggjQjhHKPRVNLaaQI7AdOZg6CASJ5bporXW5M8ehgNOXA6cCNPT2U9DR3tB97E9zeFusWmtZZ2MzOshpMz3jnwn2Ad0U+xbB/u1HqyB8DSxml27kZ0aVtaVdr2wLJ4F1/aUj4iajcTsa2mpvKPQywfGnspjPtA4IHzqH7an+IVdMeD50ekOP4GqvMttdPOIfSA3Lnwpxib+cAtc15EnLr6OFGXtpjJOqVw16FA7J8TQoW8OsD8aFZ6bbaZh7p0BWJ5wnLurNbWHe5jr1tXdLYvOz5GZdMx0AHM8K0hG1X2/Kq3sXBFsTcVRvPeuMfa5j2RFb15+Py0vo3hUCAIoVR7ST6SdSfSanSBTfA2RbRUXkPeeZpVqVvspHGohSlAaOBTGiHm64bdODABJ0A1JOgAHEk1UdpdOLQc28IjYq4OLIctlD9q4eP7IPZM0DSyG1SGJvpaGa5cRB2u6oPexFULE7Qxt7W/iTaQgnzeGBQBRrrcIL8O7xppa2daDByuY6ku2V2P7dxi08PbIoPiuj9LcGOrfDnstI937imur0stHq277cY/R5Jjjo7KeY99VqzcAChY+kYDBgSOPAgEagekRXUutumZ4xvA9oUkBoPOTPI8JAJs9RPt0taNzCuNJBuOiT7ELt8KaXekeKYwq20EcFS5cb07zZQI04qePviDcI7CSzLxdtIAPODEnSZ0ExM0BcjSeZDT2ESORH1tZ1g6GDlWxqHdzFXnJ85fuESAd/JoTxAs5BAGus6GTzhDzSwCyBjoJcT3E5zPf8AjoeZoniANDlyGROpkazmgH08+NdUgmS2gJHDNILxmzKByIkzHHhvFgDQkhNyNM2VQY1MzrBBKxGvVcDgQDpidZhlHCMqggwC3DMCeA5yUYQ0ikA+7mysd0dYsu7kMceYEcgAdSAAYM9yN0QZjqiMwhu1eO4dCeqGnTRjRuhyydTrdpVjDQGAABnKG1E6kASc00Z8xcSgB+1I3iVjX2ty+kBxBgrkkiQw0nVpGkR9Exq7f8NJ0YTxQC5OWeRBImTqfojWV92Q81ARih90gMoHKMqmDBXgdNGX0AwRugV0vqDvNP2SZJBJEkLEhOfDKo50X+k20VySCBzWG0KI3GANVdTBgAOsgKcojMT0mw6rlksVYiV1kKzLmkyDORWEnmpPCKehKlN6CNTlM6yzHLB4CFJKHLy1J7qJnIOkFpVTBAmLmQGBxEM7CY4L21WcV0xJIKWgCAJzEkSCDoNdINxe3fB4io5ukGLuEi2SCeK2kniEHVAP1BHPVu2jQ1VzN3KASQE3W1gZQPOXT6Yyog/OjDFbRtpIe4gaIkcyEynMBGuctOnBNfRXrPR/aN6B5q9lMddsi6AASHI5ADhyFTWA8mt1oN66iD6qAu3vMAfGjQ3IbYnpFhwTBLanQKTz0gmBwL+jejQUwu9J0J3UJJiJ4k9wOugX48tKvGE8n+DSC4e6R9dyB+6kD3zU5hdmWLQi1aRPVRR8YmjQ5Rla7RxdzSzhng8Dkc6evAH50inVvYe07urZbYP1mUdvAKGI4nsrUHpBjRouSgJ0Hut/aYs+kIreJbXh2cqcWeg2GUy7XHP2myj+EA/Grk9N3NMuVReG2XYtCEtIvpCifaeJo11B2U6uNTV3pCIy5s2ySf0SfuLQp3noUlbprsbb1i++S25ZlUt1WAiQDxA7RU90G2fv38Qw61x0TuDHMffp7DWWdAbmW+5/w/5lrcdjqEtoi9kn0liST7zVybjLK8fX2nA1dBpBm0FHtmp0eywWo3bu3bGDTPebU6Ii6vcb6qLz4jXgJGtF6SbeTBWDefUzlRAYLuQSFHYNCSeQBrLVa7duNiMUS15g0DMAttNIVFk5YzHgDHHUzJFSJHam0cTjmPnybNjXLhlJ3uQa6wideR000g60FARcqAIACApyqMzHN1QDGoInxMCk1jUaT1QEGYkkAk5uHET3xxozvEct9oCqjcIK7swQSyrEjVlgiaZjG7q+TVt3QBAYiVgMOE669kzDDOqoaT1yFXLqAigjqyJ01MRB1YSAQqhs6ypDs7ksApyKTxzIc7CR3nQldIAyss69YZQBKwco4aLlOpylSeY0DEGADIV/ZW2+qnUbmbKCDqNNYUjkeZ5g6AGu5hCyNcxIzB3gTyGXlroeUAxINJlpbUsBG7uKM2g4hvpZd6dYySw0K0naeMpAYlWA0zKQCf0e6QYGYZRmEAB2Mw5IDvPqwHHMp4LwPVI0k847uxgSZ31I+sJ1JgHiTw4E8TwEHXkGptxnzKzDqlS7hWBYBpzSIaOZLsWjTMxCN7ELaVXfOsdZiwVmZhlVtJRnLHgVhVTgFVQQHovpxEcgxjWdGGrQc2UIdddZIggkxI6qqN3dgZcpCNlAEHQjJqOIAjQyKreJ6TW1zKhuvqRObKDB4h5z6x1jLEHWGMiHxPSLEOCMygMCGhQcwMz1pgQYyjQARHGTR6q/KQSBKwIII5TkZZ07N73EDQMWNzbWHRgGeAAJXSVLqGgKuvVAmdBmAkmQtHsYXE4ptxLl4lmYkKzLmaMxnqrMDs4Dsqy7O8m+MeDcKWR2Mc7/ALqafxUHqTui3+laKcyKWO7OXcU8WeWYZiMxjhqWdj1gBC4vpFdaQpCiABmh2gLDAlhBzEux3RJfsAAv2C8mNhf7W9cf0LCD4SfjVn2Z0YwdiDbw6Zh9Nhnf95pNMuWMY7gti43FmUtXHkzncZUkgSczwOAHDsFWnZ3kwcwcRfVPs2lzH99oH8JrUGaiM9BcqrGA6CYG1qbXnD23WLj9zRfhU/Zw6IuVEVFHJFCj3Cjs1EZ6Sd2g5pMmgzUi70EDtSbPXC8zTW5eoBR3pB7lIXL9Nbt+g9HFy9FIPd0nlJHuppiL+g9tNGxW4RzkEfxE0j0d3L1M7l+m13EU0e7Sq8cT3z1cqO87QoVxVboc0XHP2R94VrfQ/bK31gHVJRhzDKY93OsswL4bDklbhYkQdc3PkFFF6K9I1wmJe6wZlckGDEAtMledXjdMc8dzfy35H5ekmndo6d9QmBxiXEW4jSjgFT2g60h0x2scNg7rqYcqEQ8w9zdBHcCzfs08ojGqV0g2mcdjiVzGxhzkt5eDOGUM3tb4KvbQ+jHVGUxGUszMdInn1e32zvReybKpYUaNIVojdUsQwLR2AAGQQIM8IMpMZgQoIJkFpOhJM5ucQTJ4Azuyxhuca8CHPXIyoIYZQdFU9jnd9HpBCdlQMgVDpL5hc4ZZVmDDQrBglg0GczAIprjqMwTV3Yvr1QWLZVVgQR1wgkg63BEESQGmCc5kaZpkkEqsk8XCJHE5sjKchJpl+iqAgqIYnM6gI8cNRpxSWZToGADiZCghMouWBbDByVG8CGERlUHgwBcFJbKoKwM+hFUSiC1OsgEhiWXMGVSRJYAssDeVg+ZiutdyArvZmVnKFwzXLbDMeLSQyddiudWCqs9QQF0dJbcsQQwzKocAyM4G7ntxK5ic+8o0S3I1daa4nHIEUtcZUjg5JjOM5VN1jmysjE5FgNbGhLAx20toWrZlgzuRIRlEhXEtmO75tnDNnUK0ecZQVjSBtrfxNwIoe5cdmKoNdXbM5jgok6nhTEh7tPbzM36HdEOMxG8SwyBl5rlTdHPfduLGGOA2diMS8Wbb3G4EjVV73Oi++tL6N+TJEAfGnO/HzSmEX0MeL+FXy3ZS2gREVFGgVQFA7gKByk6ZbsryX3GhsReCfYt7zd2ZtPhVy2Z0IwFiCLKuw+ld3zPaA2g9gqfL1zNQm5WjKoUQoAA4ACAPZQZ6TZ6SZ6CKl6MrU1W5XTcoA7vrST3KbX8RE02OK50gfNc40k12o65ipB9NJviNR3jwoUkHvUyxOJ4e2kHvammWLu8PbRSnaQe9uA9p+dM8RiJk9hj4Ck797dQd1Rf9IJZgTpxHtP8ApRTk+Tu5iNfz201uX/z7KbPd1pF7mnt/CpacS+JvaAd3hUfcv6gUMRd1P54Uxd6FTH0cvdmiG5SBem7XqFaOvOV2mfnKFAU5e3soyrMUKFUyjavJ/jQ+FtqONslD7DI+BFN/KPicz4XDgTNx7zTwi2MoHtDPXaFX/wAxjPzqINyDBcgndgCN7KG0I6uqcucGTAAVLCQmVWl3zZhulQFeIHEQGOvPLocssKFQ1+yzOwJJyrlN0GZMlVYtBg5T5vPqBMKADqQeXVKZQzMLhQ8dQ4ILhSAdTuOQCwUK4Bz6rXaFBfAqahybm7bt/pWAZUFsKYzqsE5rI0RVKqxLaHRovbN5rSQ4JuX7c5myyytC58ozBV83nRVzExeaQsAUKFMRC7Pwl3FXxbTeuXWJljGpO8ST763Xor0Vs4C3C7114z3SNWPYPqr6KFClkKmnaKa321oUKcRTdrkR6aIbusfnT8ihQpgjexGv5/PbTd8Rr7p+fgaFCkBRdgn8/nnXbuIihQphGYnFGaZnEUKFT8qnQec6o7TXHub5H55UKFMCPd3m74ppi7u/HYB4UKFKidksRf08Kixe3/zyoUKV7Xj0I9zWkmu6D20KFJpDW5cpC61doUGaYjERTYXG46D4mhQoq4IaFChUm//Z', 3, 4.3, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 2)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (4, N'Phòng Suite Cao cấp', N'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgVFhYZGRgaGhoYHBoaHBwaGBkYHBocHBoYGBocIS4lHB4rHxoYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHzQrJCs0NDQ0NDQ0NDQ0NDQ0NDE0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIALcBEwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAEAQIDBQYABwj/xABEEAACAQIDBAcFBQQJBAMAAAABAhEAAwQSIQUxQVEGImFxgZGhEzKxwdFCUnLh8AcUkqIVIyQzYoKy0vFTk6PCFhdD/8QAGQEAAwEBAQAAAAAAAAAAAAAAAQIDAAQF/8QAKBEAAgICAgICAgICAwAAAAAAAAECEQMhEjEiQQRRYYETkTKhUsHw/9oADAMBAAIRAxEAPwDyJgN43cuVIFqa3hmbUTU9+31tVjuGh7Y3Cam5LouoNgxTSuZN3d86mZdKRuH4fmaWwuJZ7AtZmYf4SavsPcO47xv+tVfRNJusP8B+VXF+wQ2YcN/aK5pvyaOiK8UyQNTHNTW0kSKV7NKOV1wUM61ZXbNCvbpkTYFidtNqhO4AelVVzHFid26nbUwzFyRxA+lAHDMOHxqkMUEtCSySfYrOeyk17POmi23I0XhbUnVSfKqtpKyaVsYmb7vqKcEb7p9D8DWy2Lsa2wGa057o+TVe2OjViWzJcVTEaMd2s6Sd5NcM/mxg2qf/AL9nVH4zauzy9xzVh/lNRlhFem4zo7hQCczL2lWHxFY/amGsoYR579PiKfF8uGR0kxZ4JRVtooUYcxU1m3mMCorhXgfhTsK4DSd3Dtrqd1aIxq6ZqdlbHLEaeHOtViNm2cPbNy6dOA4s3BVHOspsbbKIfcBPduqHauOe+2ZjoNFWSQo5CfWvLniy5MtN0ju5QjC49gWKvG45YgAcFG4DgO3vpsU7LXRXcqSpHI7bs4V1JRmC2azjOSEtgwXfRe5eLN2Dxig2ktjRi26QKiFiFUEk6AASSeQA30e2ESyJukM//TB0H42H+keJG6n4raNu0pTDgzENcb33HED7i9g8ZrPX8TO+lXKfWl/srUYbe3/oK2htFnOsQNABoqjkAN1Vr3ajZ6ZNdMYKKpEJ5HJ2czU0mkNdVESbONSIaaUME0oNZg9kk11MmupaDZfNhSBIIE6jfT8HaDHK6mNPHXhzonEOMiiDIJEwY3njXbI1fNwQM/iBA9a5b1Z0+wHaex2QtkGdZ4e8O8cfCqkbx3fM1s2eCk/bCT/FB9KixOy0uhmIyuGKZhvkc/vac/OmhkrUhZQt6BOhS/1x/A1ap7Ems50VwzW8Tlb7jEEbiI0IrYIvW8ahmflZfGvEEOD9mQSOoxifut9D8e+iDhhWlfAq+HZSN6mvO1xGIVioykAkagzp41OMnILpGrwvR03kLKRmG8GBp2c6zeJwuUkU5MbiRuUeGYfOgsRiL28p6mqRsRogxGFUmSOyhHwa9tLdxb8U9fyoZsc3FTVkiTFbBjmfSo2wQ5mkO0D90+lINoDkfL86amJYRhcI8gI7SdwWQfQ0S+IxKGPb3VI4Z3Hzpmy9uCzcW4ACVMgMsjxFP2vtxb9xrjBVLbwoIXloAKWre0MnrsU7WxcQb7nvYt/qFV+I9o+rHN5Uv74nOl/ek5jzoqCXSNbfsF/cua+oqZMOsar6Cpf3lOY8xXe3XnWdsCpDbVoAaCJp8U03xTTdFagj4pbdoswVQWY6AASSeQA30uFVXcKzhBvJIJMdijeezTvFWt3atqypSwCJEM5ILv2Ej3V/wjTnO+pzk1pK2Vhj5bbpDHwSWFzXiHfhbU9VfxsN5/wr58KpcZtBn95joIA4KOSjcBUGMxpczNAO1Pjxt7l2GeSMdR6HXb5NQlqSlRCdwrpSSOVybGUoBO6jLeCJ30Xbw6gafDTtoSyJGUGyut4Un9aedEewVVn9fnRD3hqN0Rvoa85YEzx3chScmxqSG4ppUaRoflQgoi77n65ioBVF0TfZ011Oy11E1GvvJ1Y5Mabs1YW4ewDz1onGpBYdpqGzbb2RZRvefBYE9vGuJdHU9Mlx+hQfdK/KjVjLd7LhPmsVV4vEEsJH2gPI1ZunWuLzZPXMKDVIEXbDcLhf6204+yrIe5kkHzB86tVHWofAe6D3fP60SCMwE793b3VCVtnQujU7Pb+rI7KzgwQzExxNXWAuQlYnpTtm9ZdBbfKCpJGVDJzkfaB4UkYuTpGTq2aZcCOVDYnALyrHJ0wxI3sD/kT8qdd6W4iNy+Kj5OKp/FNG5IssbgByqlv4IcqHu9K7x3qn8J/30K/SJzvRPJh8zVo45IlKUQn9y7Kmt7OB4VXDb5+4PX6VPb6Skf8A5j+Jh/607hMRSgWY2QvKh7+ygOFIvSkcbQ/iP+yo7vSZDvQj/MPmBSqOT6GbhQFewAHChXwtF3NuIfst/L9aGbaiH7Lfy/7qrFT+iUnEhOHqJ8Pp50T/AEgnb5fnTxDKGG45vjFHyXYtJ9FDlpQDzPnT8tIBrXRZCiYPlI5xSm5Ub7xTgKRpF1J9HGpLWGZ9wpqirTD3CEHYB8ZMduvpSyk0tBUb7BWwaqJY66wO6pLLaaLGkk/WPGnFJJExxE8zM0xmA6u+dTSXZqoY7kzrujdxk/lTneQF3RI+QpiRrIG4gd/6PpXBZ0A+g+lEwxhv5k+H631Hlo5cEYljAjhr3VMmEQAMRmBiPHjGmlbkkbi2VV73D4fGo1WrDaA6hIECTEcswoREp1LxFcfIZFdU/s66hYeJsdq8G5rRWFt5UUfdST3tqaDxfXRBxzZP5vpRONvasi8Tr3DQD0muL0kdXtsrcQmdh2kAedWmHIa4/wCEHxWfyqk2ntIWoVYLgeCyN7dvZRWwbjFSzGSyTMc40Hr5VWUXxskpLlRpdnnqxUuzbmbFW/aKuULf6re64UrEciVk9hneKG2a2la7ZWBtYmz7NiFdDcymAYDrlJE/jPbugikxryGyt8CvG0FR/ZMesWydzZEbf9oEsYPZFZzbOES7iFVxIGHvvvI6yBmUyOR1ozaVsrikTey3YZp0YoNWEiZyNbWOc7wJoS9c/taDnYxS/wDjatxSyaBGTeN2Y7AYZSVDFjLRqx3dXl3mvSsN0NwSor4hGAdQVVXubo1JOc6wC0bo7jHm+zX6yfjHh7leq3trZbLIXUxakZkBIhRNs6iYYiDyK1sjaa2Syfgxlro3ZuYx7SK/s0LfaJaF0JLHdx37t3Ctfgf2c4G4CStxdY0uE+Gq+Z8udZ/ZeOe3ndAZcZXPVJAKhiltCZJAA1+zm3GtRsXpDbxF5bC53Bm47OzFdNAhGYruyyJgxHA1oc+Vt/ohUkrsY37LcC0ZXvqN0hl6x5iUOnb/AM0n/wBR4OSPbYkf5rUR/wBqt07MYgroeIIGnKDUlhmOpyz2E/Sutdi3JLs84ufslw0HLfvzBifZkAxxAQTrpFeY9FNm2cReyYm4bdvIWlSqtmBWFBYEbieE6V9F4x3AJRUIg6l2BnwU8a+euiGHzvc/wWs8HTMVuJlXjvMetBtpMdNtM1exf2aJda5ne4qi4gT3Za2ZaW6ujZMjDdvOnKbaf7L7Volnv3MmYgFQpIESpcEeFXnRrpXl0K5/aFMondrlgdWSZZSSai/aFtktbS2qZbhfTXMzQIAiBrqPMc6RzvHp7JvlVlfiP2R2yFK4m5qNAyKYMgAGCOdZfa2wxhXbDhs+QkZ4jNm624Exvjfwr1nZ+MvOiI9oBUXLcOfUlYBBXLvMCNdQZrA9KFZrrlwAxiQN27TxiKm8jklZfCnezzPL8R8qaF18anya+NNVdfGumwURsutSolcy6ip0SllIrCIxUq0VBkUDVoGgBJ560Jkq3s3ytvLMaDdv91ifgPKoykWUSoNsxOsTE93/ABTvYyMx7tOPCaNvAMYHEAT2ie/iZoe+0wBAAA+Z+ZFblYtUKyBI0Gu/QbuyedQlcpYDcQfWNPlSljMnXWY4UpcADQTBHhM/MiiahpYkxEyMp0003Rp41yOBAZfdM+u7spGnnHdp+taVU7JPOsZIixkm0eyIHeZqNVojHKRZafvD4MflTUFMn4/sFeX6I8tJRGXsrqXkHiXeFv8AVRjzzCeeVQDUzglTl94jeeGmhqHZdkZgiknIAWVog93wirN7YB0AgiZ+M1GTpjpNowBQgtm96TM6meOvGtV0fM2Z7Qv8Mn5iqfblnLdJ4MJ8RoflTthY5wfZhgAJYaA7/erql5Rs51UZUbXAGKm2hjL1pA9iM05Tr9k6yO2QKq8JjnQEOqkb5mBz1PCq87UIcsigDXeM099RhjblfoplyRUa9lhY2g73bdxoDm42cDWSXyHU9hB7dOVPxjxjcP2reXzUj51X7OcNfR2gEtmA3CS5BgcicniKJx5/tuG/G48yo+dM15/2LF+DM1gLgzW5j31581rTY3Hl79xShC22MyfeGRiNPCayWBWSnYy7u9fOthtW4tu665SfaMQYYKylhlnVCI6p4/WtNK+iWWT4lDZ2nezdUETJOsDUTLcwGK751E1oOim2blovFt3zBGlQJAIMSJ1ma7o3s+w7urucrWyyHqlzlAZ1AUtJCa8yV3A6VcYDLYdgFDjIijUrooiQInWNxpkldIhGb6LdenWQy9i8skkDKOQHPXdUaftEXqhbV0nXTJEg8N/Co7+JDqITLE8S0+Y7KqrWICMGK5o+zuHnGlUURuX4LfBdNvaP+7+zuA6luruBJMwY3Zl8pryfYV9VLltwtnUGCDnWCDz4cd9ej4faKKb9zKVd0yoAAQp0kloE7hwrz3oqB7Uzu9mT/MtZRW0FSbtssdlbUVOuzHIrdogZlI3EHgOe4Voj0pw9xkcpm9mVYyN0cQeG74UNhjbFxGcdUkgjd9kkHd2Hzq+x9u2io9sGc6gBo1zdThw63pU3jjb0KptKvRK/7QsOq5QGaWVm6p6zAAx3SF8oqp2xihdb2gGjw2u+MtGf0naV3iwCHt5CGbNDkGHQkSsEEnfpxqvxaQqDki/6Klljxo6MMuTejAganvpcnx+ZriOs34qRzqO/5muhmQ5064Hf8aLSzNDk9cT2/EVpsBggRJGlc+afFI68EOVlULNSECATERpJA1iJ31Y4+0EXdv0EDSqJ0qcXy2UyR46JGZR9sacpJ9BUBuIPvHuEfE0wrTHFVSRztsc2IUblJ7yB8JqM4o8FUd8t9KQ0mWqKhXYpvvzA7lHzmmm453s3nHwpYpQKNr6NX5IbymDJJ0O8k/GjLTCh73umifZ0sna2aKqWgmBSUzWkqNF7Rc4B8l124BAx8xVxiLYAPLeKpEtFnaOCDt38DVul4ugJiSYMaCTu9YpZd2LHqig6RW5RW5EjwI/IVm8PcKuGXeuvZ41rtq2S1t14jXyM1kLYEmurE/FkMi8kHWrjvcBYlzqAPkorR461bChbFt3yy73OswVSqwpgQIkkntFZjCPldDoYM6wR4g6GtBsvrXVIWBJlkBUg6kdZdxmKLdbITg5NUC4RXYqAjEF/umMochhPKYJpl/a6rjVLg5LV05cu9RInQ71kTGkeleg2cGEFtvve0WSSSWYq8knUk5HNZfbGEQYrDOFXM14BtPehkieHGpwyRctr7LPHJR0zN4W3DIpO8qezeK13TTYz2i152XKwlMpJ0hEgyBEAzOvvDtjI4U5ntg7wQB/EN441veke3LiNdyEI1s2bQbKpbK1t3IGYHSU5caZ3yVE8vX7MtsO77O5ZfflKue4tJH8JrT4y7nZXA0ZZ7DDOvHtWdaozma687xlHDUBQATG6Rr41cZzkQckI/wDI7f8AtVKXZzhC4ggRHjNC3nkgCSeAAk+AFNN7Qwe/s7dKXZ+1lW5bs/vFxWuPDlERbdu2ZBDsyF7rETqCAs7zFFujFji8Jbeyj2BcZ/de2RJUqgLsREqJZeyGHOvPei1rPdYTr7NiO0hlIA7a1V7bllDcS1btt1mUXHv2mV7YXKHW2xORzCxBmBw3HFbJxBR8wyzlI6xAG8aidJ40seVO+xop0zT4lSFUsCMrSQdD2jykeNXeGRnss+9bem/cR1hpv4b+ys8MeLiEPctzpoSqsYI3ZdN074rQbN23hktZS6TcQLc0IYNMMNCUZdzAgA6DTks8jjFtK39Ap10QWUOdydyrp2knQ+AJ86I2kI/hH+moExVgxF9JMZzrA3zAEk8OAorbYgnuP+kVHLLlR0/HW2eek9c/jPxpjnd3/WlPvn8bfGom3jv+RroRglvfHcflW+6MOhSH38OMjw40RsroDYuWrd0vdzOiMQGSAWVSY6kxQnSTYqYfItsGSGJcs2cwRHusF4/drz8+SGTxTO747cWwPpCy5iF0UbvrWdcUTiLR3lie8k/Gidm7Ce8jOjoGBgITqeJJ4qPDWnxxSj2DJkuVFO0UwrVpe2LdDZAFd4LFUdWYAECSszvIptrYd9myZCpgnr9XQR8yKqmvsn2VDLXRVje2NfBINp9OIGYfyzQ4wVyY9m88srT5RTJr7EoFikIo5tnXQpZrbKqiSW6vkG1PhQgophIrk5TRaE8aFuoY8viKkkjlRkrQqdMLrqGztXUnEpzRpcD/AHrj/Ag/l/Op7a+8nOY7xrQ2GaL7dy+giir/AFXDcJ1qTCuiVrYdc3EjXv4+tYDEWijsp+ySPp8q3+Fb3l5GfA/nNZLpLZy35H2kB8fd+AFWwOm0JlWkwLCibiDmwHnpWzwzoi6kCsVhT10P+JfjRu14Z9eGnrVJRtpErpWa3a/SwIltEX3evJ+9JEQAd6lhvHvVQW9sLdv2neQVuBpAOVQCpgzwldfyrPYbCBp60AMRvA0HGpBhV9oqlzlNxVLSNFOWWndpJ17KaOGMdCPNJ+i7S1YRg/tJytOhk79Io3am3BiHLBFUM6OeuDJVSgzSQBodw5cazeCwQZ3AY9Ruru63WIB+G7nWl2K6ApmVCvsUBLSMrFmkqY0IA3jnSSXHa2wTnatokt9ICjq5tI5RFSGBcELoCwVt8n5VXY/pPcYZUQK0GCqt1VksSoYn1FaPHbStsSTcRSNA8KS2mgMOMsFmPHw0rN4u3ba7YCOxDFkYIACA0QoOY5t51MCI03mtjbq5KiKmm6o0OAxmIu2ntq2CRWjOzC6rBU1EsBqC0bpJJHbVHs03mxI9i2Ha4FuZT1wjKLbB2BeCOoGgGO6rHCqbMQiPlLgpeAgpIEsDMaL5E661ncVEtkGRs5CwTmVSSCoYe8Auk8ZpsclK6AmmyrVzHDdUSNUy7hrRlnZojV/IfM1RFW6A1c1PaZjpmjwBor9wX7x9KcmEA+0fSg0zKaIDmAMN6Ct1tK9mk9h+ArJ28KJBLE8dwq4fGEiMvPjzj6VGeOUqpFYZYrtmWc9c/if40xxqO/5VZts4ZietqSeHEzVjg8NhhHtbTtHFXgk9qwPQiqtNeiakn7NZ0c6V3DbS2mFd8iZcysDJRNAFidSAPGpekdi5iLaXpCMoOa2wOYSRx01EboqvwuyNn3NFdlYiIZira8IfQ+taDZ+xks2mtL1lYky+XMsz7pCiBrNebkxxUriqZ34pLs88JMnN+v1pVZjsVwFafbmw7qOxS07W4EFYcnTXQdbfPCsni7LZ8pBBJiCIIkxJBr0sPHgjyPkubytvr0P2dbbW5JBPumYIAMzPeB5VZjbF5JIuN4w09+YGoM4VYG4CB4VX4liao4qXaIRnJdNosrfSPEM6B7jZcwzZQo6s67hyra2cfnHVEDma852XZzXBO4a/SvQMMgVBXF8lRTSSPW+G5STcmZ/phiYthZ1Zh6a/Ksvh6t+l1yWQd58o+pqrw66ingqxoaTvIyTEbvEfEV7Hsy0yogWAAq/ZU8BzFeOYrd4j/UK9xwsZR3VyfKnKMY8XXf8A0WxpNu1fR2ZuQ/7dr/bXUZFJXH/Pk+3/AGNxh/xX9HkAeL/YRVniFlTVHefrqf1uq9tMGUHsr0Zeicd2iGy/XB+8seI/4qg6VNLIexh5EfWrpxlifst6GqvpMnUVuTkeDKT/AOoqmPU0JP8AxM9bOoitLhtiJdUOzQQksRGXvJYHzPKs1ZOo8PlVlisezLkGiKJCA6RO9uZkjz0q7u9ENVbG38LaDZbZZo3sYg9iiJ8f+aUYZVGZhA5aSaG2ZiIZmbgp03cRp2caJxRLHU+W7uHZ8d9B2nTCmqtAwxeVg0aDcAY4g7/ChWxDTqeEeHKrDDYJbjBWMCJmp9i7FW777QMisNebOI/lp00kJJ7KY3OMa+FPw97KysB7pmOB74rW/wDxrDje5/i/Oo8b0fsradlMsqMw1nUCY9KHOPQKIm6YtOYYXDTGUz7YyIywwF0A9XTUVX4nb+dcq4XDJqpzW0cP1TIEs5rR7L6NWLlpHbRmRSRB94gT61NiOjFlRIUHwoc4rVGUF6Mem010UYfDjcMwVy3KQWc68Zrkvweyrp9npDhVUFOEb1YEqfMMPCs0zVSMuROcaLdL4O4U8P2VTLcinPiY/U0wpch+XyqVXNUC401INomhTDovcxrsxqkG0DSnaJ5Cjs2i7g8/WicFj7tr3LjKOUyvip09Kzf9IHlThtE0rjapoZOujfYbpe4/vLat2qSh8jIPpVgm38LeEPCnlcUEfxCR5xXmJx5pP341F/Gi9rRRZ2tPZ6Zd6P4S4Myosc7bkDyUx6VVYvodbb3Ljr2MA49MprG4Pa9y22ZHKns3HsYbiO+vSdlbR9taS5EFhJA3BgYMdkg1z5FlxbTtF8ccOXTSszmF6K3UYnOp14T84Iq9sYW4ogwR3GfOrdCKJRByJrnlllLs6o44wVRPPtv7AvXHDoFKgRl1BnjzHKqf+i7yHrW3HaFzDzWa9nsYIH7J8qnbZwjcJ7qeOeXGqJuMeVnhGJ3j8S6eImvQ8L0ysbnDoe7MPDLr6VWftG2OUa1eG5yEaPvKZXxIzD/LWfsXkQj2lnPPawj+Bh86pOEckFYIycZOvweif/L8N/1f5X/211ZW3tLAwP7L/wCW79KSuX+GP0yvJ/gorbywYiIfXu6uvqa0KWGHbyNZDZW0wikOpad3zmaNO2AB1EYGZEvoBG6ANRXfPHK6RywnGrNK6nTxmeyqLpGVW3lLakqVERMGDHgTQFzbF4zLRJnqgCOziYoO6z3D1mJ7SSYowg4u2ac01SArJMip8CxIYc2k8zyE8qICACF3cTzNC7POrd/1roTtM5ppqh+BbrtPHNPmDRd15OlA4f328flU91oJ8KSa8h4vxJMNchxHIx6Cr/YdsKoU6QoHjJJ+NU2zLJ98+HfVqhOndFJKVaQVBNWyzdVnfU8ILbTr1SO8nSKp5NGYFC7qvMgetJbNwijWbHw6JZtqxlgiA9pCgGinQFT1Z08KOOzoA36aVE2HbcD8qWVgi0eeYjFBL4mBM22/Cx0J7mg+dZnbGFNu4w4T61o+mGEyXJ5iaq8efa2lcnWMrfiX7XiIPjVsboWasoGbfUKmnPxB31EtdKIMkmumkmumiAcDSzTJpQaxiSaUNUU0s1gks1wao81JmrGsmDV6F0Pvf2dRyLj+Yn515v7Stj0Qx6IjBmAGcx3FV+c1z/JjcDo+M6mb+xqV7dfKPrV3ZZU31jX6R2QVAYEjNMcJj6Vy9LEJMq5U6aKQfUV5rjL6PStM3DYkiqy50hs9YC4pYEqQJJUgwZjdGtZp+kFs+6zgcis/EiKwGKxJa47BjJZjOg49m491PjxOV2Tk1E3fTjbFu7ZRFYlhcRx1WA0JB1I5E1i8S2Y6UK+NdioY5gGB113a799GtcRveBU8xV1BxSQjkpN0RgsP+fzrqf7AcLg/iFdQ0GmUWHHVFEg0JYbqjxohNdBXXPs449IeqyaJVdIG79fqaGd/sry1PZ2VOlyRpU5WUVC3XgQOOlAYL3m7/maNcedBYH328fjTw/xZLI9o5f7xh+uFEohZ4HP9Ch7gi6Y/WlW+zLMa/qTWyOlZoK9BtpIAA4aVY4fCMw0UmhbYEir7Z+JyjT5VzFmAXMEy6lY76I2OVS6jESAaJxmKnf4UIjiZrWKeg3MVmCkKADyGh0pbbgcR3ACfhvqoweJBRR1ur5ct0USLizIUk9sCg3Yq0zN9OrKugdRqN9YLAPDMh3MPUbvSR4ivSekN5XRlykGOz615ZiAVbTeD8Kpj2qCwfHWddN/yoI2iOFGnEkmSRJ36UgcdldKk0I4RYGEPKnC0aKV+6pPa/rSs5syxR+wNcMT/AMVIMG3b5Gplv8yPOn/vC8x8aDlMZY8fsgGCPGfQU4YHt9RUn7yn6Bpwxqjcp8hStzCo4l9DVwA5jzNPOFA4D9d9N/pAfdJ76jfHknQAdm/5UKmw3iXQUlodnhRNu4F+zNVbY5iIgAdx+tMOLf70frtoPE32Ms0Y9F3+/EfYX1pTtNxuVR4fWqE3XP2jTWLnezHxNZYI+6M/kv1ZYX9oXCdWjugfChgeO+hWtmkViu6qKCrRB5W3sMV9V7/kaLzfr8qrku9YTw19DReYGknEpCV2S5uwev1rqimupaCQWknuokDTs+P5Ug07vj31HcbzNM3bAkookdp+FOnKI41GpjU+H1pbbTr5fWhRrJWMDvoPBf3p7j8qnu3AATQuGP8AW/rlTwWmTm+gh0m7p2T4j6EVf2LeUAVU4ESxY8TI7v18BVsDUsjt0UgqVhCEVcYK2Dy8qo0arKzchaSgsMvOYAjhPnrQ9smd1JcckbqZbZppaMaXBN1QI1o20+Xex8ND3TWft3Y94ndRJxYGub6UKFF2pcBmPWvPtq24c9uta7G40NxFZ3aVvNrTw0M1Zlr6QfhUevbVtewo7ajXCjtrpWRUScHZXBDSi1VmuGXlU6YcfdFB5UZYim9lT1s1dLZ7PSpVtUrzDrCUq4U8j5VKmAY8PWrlbdSKlI8zGWFFQuy27B41KuyDzFWypFTKBSvLIdYolUmyBxPkKnTZCdp8qslAqUEUjyS+x1jiVy7MT7vrTH2cvBQPUVag0ppecg8I/RQthANIFD3sCDWie2DQlzC8vKnjkYksaMzdwZVh2yPQmomQg9tXWJTrIO1t/wCE027hwassvVkHj26Kj2p7K6jv3Sup+UQVIHLUyZakrqyGZ1wljHD5DhUyiBFdXVn0ZAmJuSY4D4062ktPYPUa11dTvSJrb2W2E30cCaSurll2WXRKhoyzdG4k+VJXVkZkz3Rzb0+lIHHI+f0pK6sYmZ1I0XgeJ+tLOnDyFdXUGBEdx6Bvma6uoDoAdaZlrq6iEcKchpa6gEeDTga6uoDCg04GurqxhQ9OBpa6gYerU9Gpa6gxkPDU4NXV1AI8Gurq6gErMevXt/5/gPrUZtcq6uqnpEPbG5a6urqwp//Z', 3, 1.5, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 2)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (5, N'Phòng Suite', N'data:image/jpeg;base64,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', 3, 1.5, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 2)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (6, N'Phòng đơn tiêu chuẩn', N'data:image/jpeg;base64,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', 3, 4.518, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 3)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (7, N'Phòng phong cách cổ điển', N'data:image/jpeg;base64,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', 3, 4.379, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 3)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (8, N'Phòng Deluxe', N'data:image/jpeg;base64,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', 3, 4.732, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 3)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (9, N'Phòng Suite Cao cấp', N'data:image/jpeg;base64,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', 3, 4.612, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 3)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (10, N'Phòng Suite', N'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgWFRUYGBgaGBgaGhoaGhwaHBoZGBgaGhgYHBkcIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDs0Py40NTQBDAwMEA8QHhISHzQrJSs2NjQ0NDY0NDQ0NDQ0NzQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDE0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAJ8BPAMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAADBAUGAQIHAP/EAEoQAAIBAgMEBQYKBwcDBQAAAAECAAMRBCExBRJBUQYiYXGREzKBobHRQlJTYnKSssHh8BQVI1STwtIHJHOCouLxFkOzMzREY6P/xAAaAQADAQEBAQAAAAAAAAAAAAABAgMABAUG/8QAKhEAAgIBBAICAQMFAQAAAAAAAAECEQMSITFRE0EEImEUcZFCobHR8DL/2gAMAwEAAhEDEQA/AKNSpZRhEtDVNnVUOVnHZ1W+qcj4zFKoCbG4PIixHoM0sc4bSRaGSE1cWbolx+fbMij+fwhlp8oRRwIifsV/cX3Lfn74zSfnn7fx/Os3FHkZhafo/PqiunyMrXBmvhEdbMoZT6u0HgZC4zZzU7sCWXi1rsByqJ8JfnDMSwU7js+/3xlLHsMk04lk1L9yh4jABs1Gdr7gN7jiyN8JezURnZ+07kJWaxGSVuVtFqfGX52o43Glg2hsUG7U7Kb3KnJWPxgRmjfOHpkBisMGJDgq41LC3dvgep1yPGHUpKmI4NPVHZ/5LpsfaxB3KuTC1jqCDoQRkQeyWLevmJybB400f2dUMUGhGbU7/CU6Mp13b2OosczddkbXsFV2DK3mOPNYfceYOYnJmxOO64LwmpbPZ9FhYXgaiQhe+YmCxPKcrLIWKzTcMO6zwEAQO5NGXKNWmpSEBHOvqmAkYenrNCsAxhEg3EZRIJ0jCg1WaFYW0wZjAxTzm7iZU8YJ3g5CavF3EMxg7XjoALcMx5O0MxtMIt49isGKczuw+5PbkKEYuUgXHKNssE6xkhGImnNCkeNOa+TubAXP50EYRoQZILyBY2AJMnqGyGJu/VFtB53uEdXDqgsot+eJ4ysYN8k5SRAUtlcX8B95jAoAZAC0knSC3JVRSJscqIDmPDl2QFbBK46yg9+o7jqPRGhTmygz6N01TPnVadohH2cy+Y3+VvuYZj1zAYjJ1I7eH1hlJ4iD8jfKc2T4uOW62Z2Y/mZIbPdEclMHSb7vMQr4ADzer3aeGk8gcZEb3aNfD3TiyfGnHflfg78Xy8U9rp/kH5LlmJ40/wDiMJunQ2PI5TLLzHpnKzsRpTrFcjmO3URDaOyBUO/SazjPdJNr/NOZQ93VPEGSLJ6RzgyhGan3yTXRSLKhXoWujoRb4JspW/FTooPLNTwIMUo1Xw5Nhv02PWU3AuOXFHA/LCXjEU0qgLUXMeawyI7jw9h4iVjG4Y03KG9rZEgAMo7L2Kjlew5pNGXpjSinv/cndj7YXdB3t+mTYMfORviOPgt6jwJllpuGFxrOXLTamd+kbHRkOaldSpB84dhsw15NLFsbbQI6txu5spN2TtB+Gnbw48CefNg/qiPDJ/TLnvsuJa/fNCIClig4BBzht8GchU8T2zDme35o75QmNKh4wBM3Li1iYIiKMMUNIJpvRawmjjOPWwns1ImKgmw1mXNs5q2NYFxYRW2d5tWe80L8JkhjxN552AEzvWgC14yQrMa5xigILeh8PCBsLaakQrCeFPnHSJMWZbzApSZw2y3fMjcXmdT3CStDAog6oufjHM/h6JWMJMnKaRX8NshnAZuquvzvDh6fCSNPCKmSi3bxPeZJssC6S8YJEZSbEHSLukfdYu6xqFEHWB3I46wO7CYc3J7yUb8hPeTnvajwtIpuTBSOCnMmhym1G0iBSCdI+1OCenGUhXEjalO+s1UsuV7jkY69ODanJzxQycorjy5Mb+r/ANAlccQV79PGeKcpIYLFhLg+aRYi1xBVaNO91cKOwW/0jScM/htP6v8Ak9LH85NfdfwJFJpUoq67rqGXkeB5gjNT2iS7YBgN5WV1yzXI581OfheaCiD+fbOOWNrZo7Y5Iy3Tso+1dmFD1DvKQTY5EWubXGR0yOXj1pGV6DoQ4O46kkMpzuPeD6c79t32xhcx9FvYZX9q0OoPpW9Ug5OMqLNKUQeyNsXIU9VvijzW7U5HmvhyFnw2ODC4M59jMEUF9R4Z639Uu2zdnaXZjlqbXPacte3jxks2KL3RseR1UiT8teYZ7xqjs5ebeP4RtNlJx3vH8JJYWM8sUQxW8yiSwrspPneMyNlJ2+P4Q/p2DzIgFynrywDZacj4zU7Gpcm+tG8EgeZECJispIyljGxKXzvrfhCDZNO+h8ZvBIHmiU79FMx+j2l1OyKfI+M0qbHpkaN4zeBh88SjtSmppmXFtg0uTfWg22DR5N9YzeGQPMippRzjlOjLDh9jUgR1TrzMeVUB3FKggX3QRe2lyNbdsMcL9iyyr0QWG2c72sLD4x+7nJfC7ORM7bzcz9w4R9007hPBZeONIlKbkDKzVlhysBiqgRGcgkKCbDU275SidgysDVsLk2AGpOkiq+1KrZKFQdnXbvuQAPAyNqUGc3clyOLneAPMDQegCOoP2Lq6Jeli6bswR1cqBfdN7XvbMZTLrIbYC/3it9Cn/NJx1itU6GTtCVQRciOVFi+7AYm1Wb2hVSbhJ7NnjoX8iOE1NI8o7uT24RNqDRHlJo9OSDJ2TQ0ptQKIx6UXelJdqUC9GMpG0kO9KAenJd6MXejHUgOJGb7LoxHcTMJiWDXYse29zblnHWoxepQjfWSpi/aLtMM7ioDbQA2va/mHW0hukFGyL9M/Zk3s+n1XH0vsNE+lFO1Nfpn7E8H5UVHM0j3vjScsScuSp7WTq+PsMvGzk6o7hKbtZOqfT7DLzsxOqvcJzvkdP6kjQSY2qG8i245RiUAcarvOouPGM0kgdtD9g55bh8HWOlsJe5Rdr18Vh6rUqmKqgq1id4WK8HGWhGcHU2y9ssdW+sv9Mmuk9MVbsxG8Mt48Bfj2CQP6nTjiKHp8oP5okX2NZc+hWJepQdnqPU/aEBnNzbdXLxvJivjEQlWaxHCzHXPgJF9BsMEouoZXAqHrJfdPVXS5v2RvF0V8s+8L3Cn1W+6O21Gxdm9xxNoUmIAfMkAdVhnyzEiunGKqUsKz0nZHDpZl1sTmIx+jrv07Lu9cHwtBf2g074J/pp7YYtuNmpKSo5iOleN/eH8R7oP/AKvxn7w/iPdF0o8JHFMz3/fNFp2UlaqiYPS3F/vL+M0PSzF/vD+MijT7JgpmI1REtliw+2sUx62JqW7Gt6xnLV0EzrVCdTTuTxJ31zJ4mU/DJp6Jc+gQ/bv/AIX86SCdyRaSSiy9OuncPZNQIV107hNQJ0UclmhES2sP2FT6D/ZMkCIltVf2NX/Df7BhAVd8TZWKohCeezPfMLcndXIZc+F4u+JdiRv2yLWUAG2mYABtmBe/LugBTUPU30quHZborhEYAecTcG4zyvaSvlEUWsDoMlOiiyg7xzsBrL0TsV2Av7et9Cn7Wk26yI2CP29X6CfaaTVSSfLKR4EqixciN1YsYoxaBTm4pxwUpkUp6Wo8qhTyU95KO+SmfJQazUIeRmpoyS8lMeSm1moi2ozRqElzRmjUIdQaIV8PAvhpONhoJsNCpgaIB8NF3w0sb4WAfC9kopiuJC4Wlbe7j9lpGdLVtRB+efsrLIaO61uYP2WkD0yT+7j6Z+wpnkfId5Wev8bbEipbZHUb0+wy9bLXqr3CUfbQ6h9PsMveyvMXuHska3HcvqS1JYvt0f3ap9EfaEboxfpAP7tV+j/MJWtiae6KolYeUpAkHfqKCptmN4Z215DlnLm2ET4q+AlBWp1kcKCyMCt8tGBtfgDYSQxHTF1IDUkBOnXY8QOCdolfjTglTZHPCTaaLdshAGrAab4+wkVx9vLNc2sF9l5nolijVR3IALOcgbgbqhdfRM7Qwweq4N8t3Tj1RlJZKdtdstj2pfhC+HrBqiLvbxDrn2Ei0z/aCl8E9+adnHmZjB4QpUQkWu6cs8+JGsa6dqP0N942F0ueWesWK+rHb+yOKjeV0AI3TyKsPSQcouEzPefbJ3DUQ2/ulG3c7jiOAHC+RyvfMSFvme8+2K1RRO/ZqywNRdO+MtA1/gwJ7hZNYZZcegg/vD/4J+3TlPwxlk6L1yj1mU2YYZyDkbEPTINjlJRdSsrJXBo6TUGndNLSnfruvkfKFtMt1M/BQZaMFiLopcgNYXGmfdOmMkzjlBxDtAYqlvoyXtvKy35bwIv64Y1F5wFTEqDa8a0LTIf9QX86s/8AlVB9oNPNsGnxZ273I+xaSpxKxfGY5ERnc2UWubE2GQvlwh1X7Mo/gVw+Ap0ySi2JABJLMSBoLsTPYqpuqzWvYE20vYXtBY/adJF3mcDe8y5FmOthY537PvimJ2gjI1nUkqQBvC/m9+ufqithSIWv0m5UvF7fyyMr9LXViDSU6HziNQD6e+JVjmZEbR889y/ZEkptlXFI7+Ns4b95ofxU/qhF2vhv3mj/ABE/qlSo4nezDm3O43ctetpN1rE6FjyIVmB7iFs3onrOK7PI1Potq7Vw/wC8Uf4ie+bDamH/AHij/ET3yg458Wd8Ud0Cy7hZTctcbytfLS5yF9J7E3/SsNcNfcrDO1yd1dOt6pN12Mm+joH6yofL0v4i++Z/WFD5al9dPfKsUPzvFf64GuSAb740F+1iALEE85tuw79Fsq7VwyC7YikP86ey8SfpRhMwKoY/NBPrIsPSZxnpczGud8Pfd+HbetY2PVytCbN2jurTUJe1NAesSbboFwm9axtraSlKXopGMfZ1fHdLqCGyI9TIG67oXO+RLNe+XLjIXGf2gopt5MKbX6zXy9H5ynP8djGanUDJu6Wy0FgTqecBthiafWRUa4uBYXv8KwP5tBqmUUIF4p9OjUdUXIsbC1vdf1yQqYtz5zP6WtID+zPZwbfrm10Z0TPQsW3jzGRFiDxMse2tl1Kjq1LdDX6zVKj23etkFs2dyPXJ5MmRf+WWxQx+0E2e9zqT3m/wTEelovhl+mf/ABSQwuCekVV2ViTe63t5rZZgcoh0nH7BP8Q/+EzkcpN3Lk61FLaPBAvgVqoL3s19Db4TL915YdnOVC3OVrW7e/0GL7C2ZVq0lemoO6TdmZQAQ7EX3jn53IiTtVK6U2ZmogqARuBSbllXrAJa2Z09cbdbkdmtILZtNqburPvg7jDK1t5Ax53Oet+Ea2jZ6bow6pBBsbHqnPPvt64rhFd1d2YNuhjcEL5qdUWWxI0F4Cqm4jOSxGfWZr5EnmbDUDThKRm5coVwUeGVbbpCMqJTv1AxG9nvH6XLKQtfajDJ6R7Osvujm228pUZw7eaguDa9kUHQ21BkFiMPn1mY20N9JlRnaOqf2bVA2GYqu6N9sr3455+uT2J2c7OXVwt7ZWPAW1B7JWf7Nan93cFif2hzJudBxlzDyiScdxHJp7CdLZbhlZqgIVg1t08Dfi2U36QYN6lHdRSxD02sLaK4J17JIB49RFhDpVUBzdpnP8Vh2TzlK9629olQ6am1JLfKD7DTuD6SubZ6PYbE2FWmLA7wKEob2Iz3SL68ZB4adplY501TRwIt7YvWbSdXfojg7keRORI/9SpwP04NuhuDP/Zb+JU/rmTSKPdFJwZylp6JLeq4PyDfbpSVodHMOmlMkcizH13v64/h8JSQ3SmqkjdJF7kEgkXJOV1HhJKL1WO5pxoap4Jd4ncW9zbqjg7lSPQw8I9QwJPYIgK4HFh6QfVaETajLowP0gR9kmWjXsi7JKoiIpYC5A48+EhRSJNzqZjE453FsiL3spvc8Mr3yi36xK5G3shlKLAk0SdDB31ie1qjpZaNNXY3uWfcAFtSbE+gCEwm2k0Y7vs9UV2ztBUpVKiMCQh3SCD1jkv+oiMqrYG6e5RduVBVJSy00Q2Cpmoe532FgAc+waE8ZvQoBtS3UGVjkSBfP0xJs7KBoBmTxMNQxnk+o4vvXUMLanIXA7wJnBtX6FUvsC2lS3FBW99xWzscza/CINgw53jrZfsKfvkttUgqv+EnsEVwjCx/y/YST2THbZ0RPJVFtuggZFTcMpGdiALg3g2Xc1QOvHLrjvGQf0WPYZ7GYLeO+jlHAyYXYMPisBqvsiNLGEko6bjra4tkb6FWsd4Hxnqs8hSHhiEcbyMOWVvAqbn0ZGIVKzfpeGy+BX824v1FvllbuHjA41VHXZ1pn45dVNhwO8RvDsIMhH22qYnDutRapXyoPklY+clha+ROWgJtYyctJWKkX9a4Oh42y9YAz9W8Z7fHhllw9GRB1za0qtfpJ5UlaeGd3AFrsN6/ANTQM9vVlpJXZdfFNZXw4BGjM4UBdLbh3ql+5QJJ0WUWyl9PP/ciwFvJp/MNZN7L2nh/0SijqrkUkBQhT8EX6rajXTjJnH9DlxFQVKrgdWxCKyA20G8zlhqfg59kfwXRfDUwFWkGFrWYs48HO43pWK5IfQyi7SSjVR0w+Hq75QhVQm1+G9TBtbuB9ElR0LeqgCpVXrKxNcom8oN2RUTrg24lRrrOgYehugKihV5CwUf5VsojKgDU29NvUNZtQdNEXszZYoJuUcOqKTcjIkk8SWYknvjy0anxF8FjTVQovkBzY29WpMRxO2lTIAu31V7PnGSkly2Vi2+EKbRVldN9QutrWHwX5SA6VPbDoeTk/wD4mSWMxD1yCwA3b23eqBfhe+fHxi+I2chTdcb4zyJYjNd06nllOSTWqzsxp0rKG/SPELhAaTmmDiHRggGa7iMl7347+lpYehOKxVYVfLX8n5JrFioJqKyOBuX3j1Qxva2WslKOBpJTemlJVSoAHAuL2YMDkdctY3s7CIhYKgW6uLjUbyFbjx4wvJF7UL4pLgR6MUsW1SstRGVAjAHd3d5mdFUg8ervGFr9GMY1EpUxVIJujeFmO7a2jHiLa2l1wdFUQKt+ZucybAEntyEJWpKw3WUMMsjmMjcZHtAnTDH9dzmlPfY5risPRDiluhd2wuoV1dcipv5wOZB3gDlYCwvCbV6MoaZdNwBVZiLMCbC9tMtDL9+gUtfJpcadUZeqRHS4hKHVFt5t09xVj90ZxaTsEWm0io/2a40nEikBu0yHcqQM2C2GfgfROoVbTmXQErSxClsgQy3PAkZe70zoruhJIPriwdxGyrTIKrjl6oUVSuua8+XvEVW0NvxyYxVqZQCad8Uxm8ApV90BluN0HeBIBXPQm+sbc5G3KGxaEBhB9/jnMPQWC2htEJuixN75LbQccz+bRP8AWd8xTe3cPfN9FyOtbGXww5xZ6A5zR9o/Mf6pitXG/Nf6pgbh2grWbVaXbFKqds0qYo/Ff6piFfFHk/1TJvR2MtXRvW74BV397moHuETr4h+TeBmdnYgqXuDmBbI8yTE+t8j/AGo9V2fdlFzmQNeeX3jwmH2OovZ3F7AhswbEEXta9iARMNixvoLm5dBoeLgR3EZgqSRcagkHXIgjTxkZypqmPCNp2QmJ2S583cbuJBkcmzHDXdGADXHwgPQt/ZLHTQi+85bTUAAW5anlqTpwmr24E+j8IY5pLblBeKL39kI4dBmynIAZEkWBtkM/G0id5hkG4AHIjMAA5eiTr48aMGB0sQG4X+BfK3GYegL+YvgJRTj7T/km4v00ZHSDFVbimFvbRVasyn6Kb9jrqBCnY2MqACozILDJ3WkrEZ3CLvNzsCgluSplbeZgNBcIo7N1LQ9IkaBUHG1h/wAzplnbOaPx0ir4HoMpO8/WvbzU0PHrV7g+hBLDS6N4ZbXpo/8AiFqngh6i+hI8gHE3jAdRxUSetsoscUEoUwo3UUBRw81R2bigL6oZA2gKgclyEXTEX8wFu3ID6xyPomz1CB13C9i6+JzPoEFhoORu5sVHf+M3DsdAO8ggevP02kd+mqPMUk/GOviTf1xLEY6/nMWztuiwAPInS/rjXQVBsmnxSjLeueSf1e4iJ4jae7kosbXPE25sx4do0kX5R2yA3R6fwY/6fTDUaC8czrnz520v26xdfRSOLsz5R3N7m3O9v9Wp7xkYanhQOR9nh77z28BPGqTxivfkqopcG1d7cfCLEFuwTdhzgmec03uWig6WHfNDid0E37h7opWxIXM+gc4k9e+ZP4Sa7Go6LSbqqeaqfECbFpzl+klVRYO5AFsigyGmvZFD0uq3/wC74pPRhmi0cEsMkzqG9Kp/aNX3MMpHyqDxV5Wv+sav/wBvinvkR0h2xWxKohZ9wEsVbdza1lPV5At4zSyRaoEcUlJMN0f2j+2oggWNWmPF1H3zsLU1JuVUnmQJwNEdRdTZgQVPIg3B8bS2V+kOOxG5TwjsKrNfMUgCqqzMLuLcL+iJCUY7dj5YSl9ujp/kE+IvhCCivAW7iR7JytaHSA/DPjhPdCDB9IPlD9bDe6VOen/zOm1cKjCzXIup85tVYMvHmBlDOJy39E6Q/KN9bCyY2Wu1lS1ZHd7sb+Uw4HzRk4t4QOWlcWGMb5aRzukzHHOoZtz9JcFd42sazXFr2nR02am6OqdBz5d8p+C6DbQWqKjU1Lb++xNROs29vE5NzvLcuC2ha3kaZ7nH3vIZItu6OiDSXJo+zE+KfX74Btlp8U+J98YbAY/5Kl9f/dBNgMf8lS+v/ukfHLofWuxN9mJ8U+J98WfZqfFPiffH32fj/kaf1/8AfAts7HfJUx3v/um8cug649kTW2cnI+J98isRs9eTeJ98sT7Kxx+BS+sffFKmw8afg0h/mP3QqEhXKLK7QwYWtSNjlUQ6ng6y1405r3fcZGJsDFK6uy0yFYMQrHeO6bgC4tqBHsTc2uCLDMEd+vLWLkUlVjY2twBrEXz/ADaDxNchhlkVv6Qees86kA/nhFa6Wc5+cGPd1FX+WJEdhnqHkfUfbnAGv+et74S+n55wW9HJl5QgchPJilOSgufm529Og9JkfSpog67Fz89i3+kZQ52hlZVFu33aToJU2SNMscyQo7OsfE9UeueNZF+eeZz8Cch6BIl67N5zEzXy6g21PIZnw4DtNhMpB0ks2NdtOr3a/W1galVVzY5nQak9wGZii77fMHZYsfToO7PvhKVILoMzqdWPeTnNqHUDUh3842HLTL6IP2ie6Hp0gNMzzOvo5DsGUyFmd/lBZRRSNxlrMmp4RctMXm45DVhw15srAaZmLh+Uze0WUgqIZnH4/hFMTiAvaeAmMTit0Za8BIarWzJJuTJuOodbBKlUk3JufZFnqZxetWgBVAFz6INIbHqzDzfGAKiKirxm/lMpVJJUTts3FMTWsggzUmlR5mZMwLXEnejLhMTRI+OF+v1P5pXg2ckNlV7VqbcnQ+DgwLZmlumjsVM5dxPtv7DDCATVh2g/d90Mk62tzzjYTM9PCagGLT1ptPCYwMrBssMZqRAEXImjJDOsG0wRd6cVqpHmgnEFBTIx6cSxNAN5wv7fGStVOUUqCK0OmV7E7MGqm3f7/wDmQmNwrAgsNAR+N+ct1ZZH1xzkniXodZH7Kq1Tgcu/85wRcyZxWFQ8LezwkVUwDXyOXfE0NDa0zVNsP83wPvhk2xUbJVU9wPrN7SGwyLxJb1D8ZKUnGQGQnZoiSUpDq4qofOZR2LceLXv4WklgXe3VAA7svxiGGKDMgt3geoXklTx6jQH1Scl6SLxpcslaSm2Z+6F3+Ui12iORhhjgdF9cTRLofVEaYzRm/wCIscbyX03/AAgnxJHD1/hC4voKaHC0wT4xL9LPxR4wJ2geAHriaJMa4olA9u+L1sVu9pkY+0jyHritXFHTjzgjid7mckNV8T48TEXqwNStFjUMaSSBdhiecWq1bns4TFarwgC8EY+wOXoOHmRVzi2/2XmrVuyZ8mTGlq3mGqRcVOyYd8pqM2HWpnCpUiAeGptFaCmdwwu0abqj+UTropzZQbkA5i+RGYhhtKiNa1L66e+cQRozSqW8ZR530RXxl2dlO2cONcRS/iJ7579d4b95o/xE985Ez5QJqRVnfQf0sezsX6/w37xS+us1bb+G/eaX1xOPeUmjPN530b9LHs7Iu3sNwxFL+Ivvmrbcw37xS/iL75xvfsbiEZ8r8DN530b9NHs62/SDDD/5FP64PsgH6SYX5dPE+6cqZ4BhbObzPoz+PFezqz9JcMP++nifdF36TYX5dPX7py4teKVsoVlfQrwLs6nU6U4X5dPB/wCmJV+luF+Vv3I/9E5kzXg2MbW+jeJHQavS3DcHP1H/AKYnX6U4c6OfqP7pRnMGTGTv0K4pFsr9I6R0v9Vom/SBL6H6plcYTW0bYmz/2Q==', 3, 14.286, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 3)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (11, N'Phòng đơn tiêu chuẩn', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWHbg4TW6iALnI4eWsaS3tYITuQENClGA4Uw6EyVfdxWdfIIKnb42Hg-a2NydCj-7tP9E&usqp=CAU', 3, 15.56, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 4)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (12, N'Phòng phong cách cổ điển', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa_a98jUSqnguQrLoUV36NBJnRyDdfLzUj-1QIh3iivTR45MFHILLvJA4ucN8DypsM-w8&usqp=CAU', 3, 0.832, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 4)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (13, N'Phòng Deluxe', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStJdt8NAXDs39JyTh0blSVykwZzvGaY9bNzh8d_Box2e491dkRX-kGHVLLOHnI6eizV8s&usqp=CAU', 3, 2.451, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 4)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (14, N'Phòng Suite Cao cấp', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTScbSczyksaKSMCckYnS2YWr7Q4dQe1a8NLiyULNdgGHaONSAIqkM17NGtIGTjLxloZjU&usqp=CAU', 3, 10.527, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 4)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (15, N'Phòng Suite', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlkf_5STjqNzut-u5YUiXbrcdMnBXlvKKLbIgzEtxmPPQwyj7of67_p-UMBoLkxqmj_0E&usqp=CAU', 3, 5.904, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 4)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (16, N'Phòng đơn tiêu chuẩn', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW1Z7cIao8poU-BMihB68EIPMqVgo8wF0buA&usqp=CAU', 3, 11.562, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 5)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (17, N'Phòng phong cách cổ điển', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoZSICO7S85zertO1Fooh99mc0Njeod5DBug&usqp=CAU', 3, 12.876, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 5)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (18, N'Phòng Deluxe', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoZSICO7S85zertO1Fooh99mc0Njeod5DBug&usqp=CAU', 3, 14.195, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 5)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (19, N'Phòng Suite Cao cấp', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRL92wKoZ2B8ywsEN4gd46bRUMH58rCPtuaQ&usqp=CAU', 3, 4.694, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 5)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (20, N'Phòng Suite', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAAloqKmdCCPtNC6LVtQaS0zOM239Q1jrf7Q&usqp=CAU', 3, 9.244, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 5)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (21, N'Phòng đơn tiêu chuẩn', N'http://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/21/2016/06/21042553/Executive-Room-Shoot-in3.jpg', 3, 0.602, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 6)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (22, N'Phòng phong cách cổ điển', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfbkqfVSb-o5Mrz9nGCTu62Rv9rLpjL9hYQQ&usqp=CAU', 3, 18.161, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 6)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (23, N'Phòng Deluxe', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm-CfWW2WDq9bK914-zyRInBgU3VJQahWoqw&usqp=CAU', 3, 4.57, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 6)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (24, N'Phòng Suite Cao cấp', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqdVhuMpxQFOS_7evoH7oIFxoLdXgs0_nPsw&usqp=CAU', 3, 2.98, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 6)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (25, N'Phòng Suite', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJHSrdkO0uEFjKE1Ek-E1hQ8JHWLVsBBB15g&usqp=CAU', 3, 15.332, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 6)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (26, N'Phòng đơn tiêu chuẩn', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvEy0phLvpT_7OnPZy0Wp9Qq0g1yoXgvW4CQ&usqp=CAU', 3, 7.6, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 7)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (27, N'Phòng phong cách cổ điển', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_aPxaTQpG6xIQrXm32E3gHAU16_rClxyzFg&usqp=CAU', 3, 5.767, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 7)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (28, N'Phòng Deluxe', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtn2ZxSZJyIzR-JI0MGiRtdGPUX5z46yOYKQ&usqp=CAU', 3, 3.68, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 7)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (29, N'Phòng Suite Cao cấp', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh6BXx-UJ_tInrHJTN52uUlFTFFKAC0tPGqA&usqp=CAU', 3, 5.612, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 7)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (30, N'Phòng Suite', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3V0VfLGsMLKv-nLo0BLI1wej-ZsWsBnC_hQ&usqp=CAU', 3, 6.759, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 7)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (31, N'Phòng đơn tiêu chuẩn', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3V0VfLGsMLKv-nLo0BLI1wej-ZsWsBnC_hQ&usqp=CAU', 3, 14.836, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 8)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (32, N'Phòng phong cách cổ điển', N'http://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/21/2016/06/21042553/Executive-Room-Shoot-in3.jpg', 3, 15.451, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 8)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (33, N'Phòng Deluxe', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFghnxpBgVDXqqvKz4nZy0YAfpboAjGlyTeA&usqp=CAU', 3, 12.984, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 8)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (34, N'Phòng Suite Cao cấp', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL8132NTyLLSwzPVXOt_FASin2MZsVtsNYXA&usqp=CAU', 3, 14.305, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 8)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (35, N'Phòng Suite', N'http://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/21/2016/06/21042553/Executive-Room-Shoot-in3.jpg', 3, 4.202, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 8)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (36, N'Phòng đơn tiêu chuẩn', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL8132NTyLLSwzPVXOt_FASin2MZsVtsNYXA&usqp=CAU', 3, 15.14, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 9)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (37, N'Phòng phong cách cổ điển', N'http://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/21/2016/06/21042553/Executive-Room-Shoot-in3.jpg', 3, 5.278, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 9)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (38, N'Phòng Deluxe', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL8132NTyLLSwzPVXOt_FASin2MZsVtsNYXA&usqp=CAU', 3, 7.641, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 9)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (39, N'Phòng Suite Cao cấp', N'http://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/21/2016/06/21042553/Executive-Room-Shoot-in3.jpg', 3, 1.645, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 9)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (40, N'Phòng Suite', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4rhCMTs-cBJKDM4pyJctG6Lx6byBJfgYGfg&usqp=CAU', 3, 12.467, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 9)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (41, N'Phòng đơn tiêu chuẩn', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL8132NTyLLSwzPVXOt_FASin2MZsVtsNYXA&usqp=CAU', 3, 11.281, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 10)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (42, N'Phòng phong cách cổ điển', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR65sV94HwOp0K7Gs-KRdHbicgy-x36yzICYQ&usqp=CAU', 3, 12.576, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 10)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (43, N'Phòng Deluxe', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwSBCCGCvk-NErAGalo55flMAHtMhz9IvYbA&usqp=CAU', 3, 19.241, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 10)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (44, N'Phòng Suite Cao cấp', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRstCip8hEWZ7n0Xtk5ntsTbn9xMyuoj9e_RQ&usqp=CAU', 3, 11.941, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 10)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (45, N'Phòng Suite', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ2OTixpnt5PUp6RWICEANIOEXkkxcdT5nzg&usqp=CAU', 3, 17.243, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 10)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (46, N'Phòng đơn tiêu chuẩn', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD3oPuCwWyW9dtm56ZnMSjVg2FV9RQAGkvQA&usqp=CAU', 3, 17.651, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 11)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (47, N'Phòng phong cách cổ điển', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuleVvGL_c5Uv7RGp7Lr7Ugb1WSrwjz5l9pQ&usqp=CAU', 3, 15.238, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 11)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (48, N'Phòng Deluxe', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeNmkbOadIb3qp-_mQ3ttYIkYfn7KbcIwTWw&usqp=CAU', 3, 2.451, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 11)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (49, N'Phòng Suite Cao cấp', N'http://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/21/2016/06/21042553/Executive-Room-Shoot-in3.jpg', 3, 2.25, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 11)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (50, N'Phòng Suite', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTbBG7iSq0Kb0WxsxQdjBsS1-04L4b9uPivQ&usqp=CAU', 3, 17.017, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 11)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (51, N'Phòng đơn tiêu chuẩn', N'http://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/21/2016/06/21042553/Executive-Room-Shoot-in3.jpg', 3, 8.171, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 12)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (52, N'Phòng phong cách cổ điển', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpYuk47ziHT3ofl30YDTYKaM2lWQFfuLinDA&usqp=CAU', 3, 3.753, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 12)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (53, N'Phòng Deluxe', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpYuk47ziHT3ofl30YDTYKaM2lWQFfuLinDA&usqp=CAU', 3, 1.437, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 12)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (54, N'Phòng Suite Cao cấp', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKo4CKwrvkszsVRgRFzHFGye3pDR1DX338HA&usqp=CAU', 3, 11.811, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 12)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (55, N'Phòng Suite', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEM5C7wZXtSGHBPvJB2CcbpfNeHYG178cRvA&usqp=CAU', 3, 17.238, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 12)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (56, N'Phòng đơn tiêu chuẩn', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbHNcmqD3xayYabRgy4hcscx0xP-eBJN0nJQ&usqp=CAU', 3, 8.539, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 13)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (57, N'Phòng phong cách cổ điển', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP8SSwljD94-mBCWgmYKWH219phjX-lA7x_Q&usqp=CAU', 3, 14.809, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 13)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (58, N'Phòng Deluxe', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCPKxuS5xwbtu_c2UlcNNNLcx4_LoKgzTm0g&usqp=CAU', 3, 14.906, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 13)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (59, N'Phòng Suite Cao cấp', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ3gu0MDFtvCOucs4mt3o57tWBP2wJrifODA&usqp=CAU', 3, 18.115, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 13)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (60, N'Phòng Suite', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVvITgFoX46SUoBYYPDV7PYsyBtZUcxFmA9A&usqp=CAU', 3, 17.247, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 13)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (61, N'Phòng đơn tiêu chuẩn', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVvITgFoX46SUoBYYPDV7PYsyBtZUcxFmA9A&usqp=CAU', 3, 13.879, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 14)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (62, N'Phòng phong cách cổ điển', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSecFGLDj7ykGQoeXcg0UQcrphW996bG--F4A&usqp=CAU', 3, 17.075, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 14)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (63, N'Phòng Deluxe', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2NsZzAaZBMGsxZId3yxxd5Q6UyYgmCz2toA&usqp=CAU', 3, 18.849, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 14)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (64, N'Phòng Suite Cao cấp', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFMBmRHw0AHJsKRBXarUCWPsRJ_Y0dByfMag&usqp=CAU', 3, 15.22, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 14)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (65, N'Phòng Suite', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrZEBuC4oxvAWmvqGgKrCK7YJ3fvm-1cegPg&usqp=CAU', 3, 11.726, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 14)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (66, N'Phòng đơn tiêu chuẩn', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAeu4m5Va4hicrK8jmVvXc-48gftc2jdm_OA&usqp=CAU', 3, 3.551, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 15)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (67, N'Phòng phong cách cổ điển', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvg_j_SzRiBcK9jJuBWDNY0IOntD1g9bXtRQ&usqp=CAU', 3, 16.126, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 15)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (68, N'Phòng Deluxe', N'http://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/21/2016/06/21042553/Executive-Room-Shoot-in3.jpg', 3, 8.218, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 15)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (69, N'Phòng Suite Cao cấp', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzKPuOGGAIAMaObezkpWKKKOEvBysxu4051Q&usqp=CAU', 3, 10.035, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 15)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (70, N'Phòng Suite', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8vqND8SGFh6pJ2o-YFsZcG8avIZd4jwzcRA&usqp=CAU', 3, 17.959, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 15)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (71, N'Phòng đơn tiêu chuẩn', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1N7sy4CWk2HvbSTkEZ8e0m2xkWuo_q7ZXCQ&usqp=CAU', 3, 14.405, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 16)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (72, N'Phòng phong cách cổ điển', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0vGwnvvKCtFhj6doYSyV-hcGVu6t9iQNY8g&usqp=CAU', 3, 5.605, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 16)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (73, N'Phòng Deluxe', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZG5k-HVLzvZ-M21vphDo4QEempHRdUxz0Sw&usqp=CAU', 3, 1.295, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 16)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (74, N'Phòng Suite Cao cấp', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRHdHQhlbg2XXTNhgI32fl2e1vKH4g-tnZwQ&usqp=CAU', 3, 19.833, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 16)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (75, N'Phòng Suite', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqU4F8KThpgh5Cg3jdoKk7-XuH6k8vhURbuw&usqp=CAU', 3, 16.707, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 16)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (76, N'Phòng đơn tiêu chuẩn', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCyHszQO61PjmPEuUfN9HCtg3M1eMsq0nyTw&usqp=CAU', 3, 2.501, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 17)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (77, N'Phòng phong cách cổ điển', N'http://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/21/2016/06/21042553/Executive-Room-Shoot-in3.jpg', 3, 11.944, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 17)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (78, N'Phòng Deluxe', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvysMxgi1lfHgLJDfLVv1H9eAtGmZa9xd-Yw&usqp=CAU', 3, 1.478, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 17)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (79, N'Phòng Suite Cao cấp', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR48i4633eNAvv2YaRMK6GIZkZL3LRGqLnw4g&usqp=CAU', 3, 7.602, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 17)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (80, N'Phòng Suite', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR48i4633eNAvv2YaRMK6GIZkZL3LRGqLnw4g&usqp=CAU', 3, 11.945, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 17)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (81, N'Phòng đơn tiêu chuẩn', N'http://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/21/2016/06/21042553/Executive-Room-Shoot-in3.jpg', 3, 1.296, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 18)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (82, N'Phòng phong cách cổ điển', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzXtPK6LYx2OMdgC-a4k5iur1HYiAFWOkfHQ&usqp=CAU', 3, 7.221, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 18)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (83, N'Phòng Deluxe', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyqoxFrzfC-toASTpEuNmXdZlxdMy-2plYUQ&usqp=CAU', 3, 1.054, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 18)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (84, N'Phòng Suite Cao cấp', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe9teRO4LhT4QpPhFv5-87BeNKeGSnK4R1KQ&usqp=CAU', 3, 2.671, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 18)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (85, N'Phòng Suite', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKjoBSSM-tZ0H1pl9Bx1O2KLlgSZIwmTwOHQ&usqp=CAU', 3, 2.822, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 18)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (86, N'Phòng đơn tiêu chuẩn', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_FaolzTu3zjzb2fvIYy_M7Zlbv_6w3TcSaQ&usqp=CAU', 3, 18.144, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 19)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (87, N'Phòng phong cách cổ điển', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrIQpHL1ORtx4kyrCgEAQjCPA3Y3siNKEWDg&usqp=CAU', 3, 17.31, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 19)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (88, N'Phòng Deluxe', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-HCyNJLto1NZd5MCAePghVSYZLP_a7-MgFA&usqp=CAU', 3, 19.637, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 19)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (89, N'Phòng Suite Cao cấp', N'http://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/21/2016/06/21042553/Executive-Room-Shoot-in3.jpg', 3, 15.51, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 19)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (90, N'Phòng Suite', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKyMZMdr-N5IngKDqj7VEDO6Wj_bn3mfGotw&usqp=CAU', 3, 15.546, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 19)
SET IDENTITY_INSERT [dbo].[RoomTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[ServiceCategories] ON 

INSERT [dbo].[ServiceCategories] ([id], [ServiceCategory]) VALUES (4, N'Ăn uống')
INSERT [dbo].[ServiceCategories] ([id], [ServiceCategory]) VALUES (3, N'Chăm sóc sức khoẻ')
INSERT [dbo].[ServiceCategories] ([id], [ServiceCategory]) VALUES (1, N'Đi lại')
INSERT [dbo].[ServiceCategories] ([id], [ServiceCategory]) VALUES (2, N'Giải Trí')
INSERT [dbo].[ServiceCategories] ([id], [ServiceCategory]) VALUES (5, N'Giặt là')
SET IDENTITY_INSERT [dbo].[ServiceCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[SuggestPlaceCategories] ON 

INSERT [dbo].[SuggestPlaceCategories] ([id], [suggestPlaceCategory]) VALUES (5, N'Địa điểm du lịch hàng đầu')
INSERT [dbo].[SuggestPlaceCategories] ([id], [suggestPlaceCategory]) VALUES (1, N'Mua sắm')
INSERT [dbo].[SuggestPlaceCategories] ([id], [suggestPlaceCategory]) VALUES (3, N'Quán ăn & Nhà hàng')
INSERT [dbo].[SuggestPlaceCategories] ([id], [suggestPlaceCategory]) VALUES (4, N'Sân bay gần nhất')
INSERT [dbo].[SuggestPlaceCategories] ([id], [suggestPlaceCategory]) VALUES (2, N'Vui chơi')
SET IDENTITY_INSERT [dbo].[SuggestPlaceCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (1, N'Hoàng Hiếu', 1, CAST(N'2001-01-13' AS Date), N'naruto123@gmail.com', N'Ứng Hoà, Hà Nội', N'', N'0912345678', N'abc123', N'Admin', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (2, N'Hoàng Văn Quản', 1, CAST(N'2001-03-11' AS Date), N'vuvanhau123@gmail.com', N'Mỹ Đình, Hà Nội', N'', N'0312456789', N'abc123', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (3, N'Nguyễn Thị Tiệp', 2, CAST(N'1991-01-03' AS Date), N'nami123@gmail.com', N'Nam Từ Liêm, Hà Nội', N'', N'0312478956', N'abc123', N'Customer', N'Banned')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (4, N'Phi Thiên Lý', 3, CAST(N'1999-01-31' AS Date), N'sanji123@gmail.com', N'Hai Bà Trưng, Hà Nội', N'', N'0312789456', N'abc123', N'Manager', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (5, N'Hoàng Trung', 1, CAST(N'2001-01-13' AS Date), N'nanhtrang013@gmail.com', N'Ứng Hoà,Hà Nội', N'http://3.bp.blogspot.com/-SvwiQ4XbNlU/UjXWNzMotCI/AAAAAAAACLY/MQHWXYabgFY/s1600/roronoa_zoro_by_animefanno1-d4mlidd.jpg', N'0324123456', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (6, N'Trung Hieu', 1, CAST(N'2001-01-13' AS Date), N'nanhbac013@gmail.com', N'Ứng Hoà,Hà Nội', N'https://avatarfiles.alphacoders.com/106/106710.png', N'', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (54, N'Chu Văn Lý', 1, CAST(N'1989-10-01' AS Date), N'lycv101@gmail.com', N'Quốc Oai, Hà Nội', N'https://avatarfiles.alphacoders.com/837/thumb-83722.jpg', N'0897654321', N'abc1234', N'Manage', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (55, N'Nguyễn Thị Quản', 2, CAST(N'1995-12-01' AS Date), N'quannt123@gmail.com', N'Lý Thái Tông, Hoà Nội', N'https://avatarfiles.alphacoders.com/477/thumb-47.jpg', N'0879654321', N'abc1234', N'Manage', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (56, N'Hà Văn Lý', 1, CAST(N'1985-11-12' AS Date), N'lyhv123@gmail.com', N'Hoàn Kiếm, Hà Nội', N'https://avatarfiles.alphacoders.com/872/87241.png', N'0876954321', N'abc1234', N'Manage', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (57, N'Hoàng Thanh Quản', 2, CAST(N'1978-04-12' AS Date), N'quanht123@gmail.com', N'Hoàn Kiếm,Hà Nội', N'https://avatarfiles.alphacoders.com/752/thumb-75205.png', N'0987654321', N'abc1234', N'Manage', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (58, N'Chu Văn Lý', 1, CAST(N'1989-10-01' AS Date), N'lycv11@gmail.com', N'Quốc Oai, Hà Nội', N'https://avatarfiles.alphacoders.com/837/thumb-83722.jpg', N'0897654321', N'abc1234', N'Manage', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (59, N'Nguyên Thị Lý', 2, CAST(N'1988-12-01' AS Date), N'quannt103@gmail.com', N'Hàng Bồ, Hoà Nội', N'https://avatarfiles.alphacoders.com/477/thumb-47.jpg', N'0879654321', N'abc1234', N'Manage', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (60, N'Hà Văn Lý', 1, CAST(N'1985-11-12' AS Date), N'lyhv193@gmail.com', N'Tân Bình, Hồ Chí Minh', N'https://avatarfiles.alphacoders.com/872/87241.png', N'0876954321', N'abc1234', N'Manage', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (61, N'Lý Văn Quán', 1, CAST(N'1978-03-12' AS Date), N'quanlv12@gmail.com', N'Tân Bình, Hồ Chí Minh', N'https://avatarfiles.alphacoders.com/752/thumb-75205.png', N'0896754321', N'abc1234', N'Manage', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (62, N'Man vân giờ', 1, CAST(N'1979-03-01' AS Date), N'giomv3@gmail.com', N'Tân Bình, Hồ Chí Minh', N'https://avatarfiles.alphacoders.com/106/106710.png', N'0817659432', N'abc1234', N'Manage', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (63, N'Đặng Thị Lý', 2, CAST(N'1989-10-01' AS Date), N'lydt101@gmail.com', N'Tân Bình, Hồ Chí Minh', N'https://avatarfiles.alphacoders.com/837/thumb-83722.jpg', N'0829765431', N'abc1234', N'Manage', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (64, N'Đăng Thị Quản', 2, CAST(N'1995-12-01' AS Date), N'quandt123@gmail.com', N'Sơn Trà, Đà Nẵng', N'https://avatarfiles.alphacoders.com/477/thumb-47.jpg', N'0879654321', N'abc1234', N'Manage', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (65, N'Quân Thị Lý', 2, CAST(N'1985-11-12' AS Date), N'lyqt14@gmail.com', N'Sơn Trà, Đà Nẵng', N'https://avatarfiles.alphacoders.com/872/87241.png', N'0876954321', N'abc1234', N'Manage', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (66, N'Ly Thị Quản Lý', 1, CAST(N'1978-03-12' AS Date), N'lyltq123@gmail.com', N'Sơn Trà, Đà Nẵng', N'https://avatarfiles.alphacoders.com/752/thumb-75205.png', N'0876543219', N'abc1234', N'Manage', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (67, N'Đặng Quán Ly', 2, CAST(N'1979-03-01' AS Date), N'lydt1011@gmail.com', N'Phường 3, Đà Lạt, Lâm Đồng', N'https://avatarfiles.alphacoders.com/106/106710.png', N'0876159432', N'abc1234', N'Manage', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (68, N'Hà Thị Quán', 2, CAST(N'1979-03-01' AS Date), N'quanht079@gmail.com', N'Phường 3, Đà Lạt, Lâm Đồng', N'https://avatarfiles.alphacoders.com/106/106710.png', N'0875659432', N'abc1234', N'Manage', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (69, N'Quản Lý Ly', 1, CAST(N'1979-03-01' AS Date), N'lyqq123@gmail.com', N'Phường 3, Đà Lạt, Lâm Đồng', N'https://avatarfiles.alphacoders.com/106/106710.png', N'0847659432', N'abc1234', N'Manage', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (70, N'Lý Quản', 1, CAST(N'1979-03-01' AS Date), N'lyq123@gmail.com', N'Phường 3, Đà Lạt, Lâm Đồng', N'https://avatarfiles.alphacoders.com/106/106710.png', N'0837659432', N'abc1234', N'Manage', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (71, N'Chu Văn Quán', 1, CAST(N'1999-10-01' AS Date), N'quancv181@gmail.com', N'Phường 3, Đà Lạt, Lâm Đồng', N'https://avatarfiles.alphacoders.com/837/thumb-83722.jpg', N'0913654321', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (72, N'Nguyễn Thị Trái', 2, CAST(N'1995-12-01' AS Date), N'traint123@gmail.com', N'Tây Hồ, Hoà Nội', N'https://avatarfiles.alphacoders.com/477/thumb-47.jpg', N'0987124321', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (73, N'Hà Văn Quán', 1, CAST(N'1998-11-12' AS Date), N'Quanhv123@gmail.com', N'Long Biên, Hà Nội', N'https://avatarfiles.alphacoders.com/872/87241.png', N'0987654342', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (74, N'Chu Văn Quy', 1, CAST(N'1989-03-12' AS Date), N'quycv123@gmail.com', N'Tràng An,Ninh Bình', N'https://avatarfiles.alphacoders.com/752/thumb-75205.png', N'0947654321', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (75, N'Chu Vân Chung', 1, CAST(N'1997-03-01' AS Date), N'chungnc123@gmail.com', N'Thạch Thất, Hà Nội', N'https://avatarfiles.alphacoders.com/106/106710.png', N'0984654321', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (76, N'Chu Văn Quán', 1, CAST(N'1999-10-01' AS Date), N'quancv101@gmail.com', N'Thanh Oai, Hà Nội', N'https://avatarfiles.alphacoders.com/837/thumb-83722.jpg', N'0937654321', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (77, N'Nguyễn Thị Trái', 2, CAST(N'1995-12-01' AS Date), N'traint124@gmail.com', N'Tây Hồ, Hoà Nội', N'https://avatarfiles.alphacoders.com/477/thumb-47.jpg', N'0985654321', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (78, N'Hà Văn Quán', 1, CAST(N'1998-11-12' AS Date), N'quanhv193@gmail.com', N'Long Biên, Hà Nội', N'https://avatarfiles.alphacoders.com/872/87241.png', N'0997654321', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (79, N'Chu Văn Quy', 1, CAST(N'1989-03-12' AS Date), N'Quycv183@gmail.com', N'Tràng An,Ninh Bình', N'https://avatarfiles.alphacoders.com/752/thumb-75205.png', N'0927654321', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (80, N'Chu Vân Chung', 1, CAST(N'1997-03-01' AS Date), N'chungnc193@gmail.com', N'Thạch Thất, Hà Nội', N'https://avatarfiles.alphacoders.com/106/106710.png', N'0937654321', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (81, N'Nguyễn Văn Trái', 2, CAST(N'1995-12-01' AS Date), N'trainv123@gmail.com', N'Tây Hồ, Hoà Nội', N'https://avatarfiles.alphacoders.com/477/thumb-47.jpg', N'0917654321', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (82, N'Hà A Quán', 1, CAST(N'1998-11-12' AS Date), N'Quanha123@gmail.com', N'Long Biên, Hà Nội', N'https://avatarfiles.alphacoders.com/872/87241.png', N'0987654311', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (83, N'Chu E Quy', 1, CAST(N'1989-03-12' AS Date), N'Quyce123@gmail.com', N'Tràng An,Ninh Bình', N'https://avatarfiles.alphacoders.com/752/thumb-75205.png', N'0987614321', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (84, N'Chu Â Chung', 1, CAST(N'1997-03-01' AS Date), N'chungna123@gmail.com', N'Thạch Thất, Hà Nội', N'https://avatarfiles.alphacoders.com/106/106710.png', N'0987656321', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (85, N'Chu A Quán', 1, CAST(N'1999-10-01' AS Date), N'quanca101@gmail.com', N'Thanh Oai, Hà Nội', N'https://avatarfiles.alphacoders.com/837/thumb-83722.jpg', N'0987655321', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (86, N'Nguyễn Ị Trái', 2, CAST(N'1995-12-01' AS Date), N'traini123@gmail.com', N'Tây Hồ, Hoà Nội', N'https://avatarfiles.alphacoders.com/477/thumb-47.jpg', N'0987652321', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (87, N'Hà ăn Quán', 1, CAST(N'1998-11-12' AS Date), N'quanha193@gmail.com', N'Long Biên, Hà Nội', N'https://avatarfiles.alphacoders.com/872/87241.png', N'0987654331', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (88, N'Chu Hôi Quy', 1, CAST(N'1989-03-12' AS Date), N'quych183@gmail.com', N'Tràng An,Ninh Bình', N'https://avatarfiles.alphacoders.com/752/thumb-75205.png', N'0987654221', N'abc1234', N'Customer', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (89, N'Chu Ân Chung', 1, CAST(N'1997-03-01' AS Date), N'chungna153@gmail.com', N'Thạch Thất, Hà Nội', N'https://avatarfiles.alphacoders.com/106/106710.png', N'0987654231', N'abc1234', N'Customer', N'Active')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Cities__23BEBA6A8C6C1302]    Script Date: 7/14/2022 4:54:01 PM ******/
ALTER TABLE [dbo].[Cities] ADD UNIQUE NONCLUSTERED 
(
	[city] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Convenie__7D3D0A0D16DE1E96]    Script Date: 7/14/2022 4:54:01 PM ******/
ALTER TABLE [dbo].[ConvenientCategories] ADD UNIQUE NONCLUSTERED 
(
	[convenientCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__HotelCat__F7F53CC2C1AB6C15]    Script Date: 7/14/2022 4:54:01 PM ******/
ALTER TABLE [dbo].[HotelCategories] ADD UNIQUE NONCLUSTERED 
(
	[category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ServiceC__F8AC43A2DA962BF9]    Script Date: 7/14/2022 4:54:01 PM ******/
ALTER TABLE [dbo].[ServiceCategories] ADD UNIQUE NONCLUSTERED 
(
	[ServiceCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SuggestP__F1582C4BB4A83375]    Script Date: 7/14/2022 4:54:01 PM ******/
ALTER TABLE [dbo].[SuggestPlaceCategories] ADD UNIQUE NONCLUSTERED 
(
	[suggestPlaceCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__AB6E61642E36BE9C]    Script Date: 7/14/2022 4:54:01 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
REFERENCES [dbo].[Reservations] ([id])
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
REFERENCES [dbo].[Reservations] ([id])
GO
ALTER TABLE [dbo].[ReservationRoom] CHECK CONSTRAINT [fk_reservation]
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [fk_reservationHotel] FOREIGN KEY([hotelId])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [fk_reservationHotel]
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [fk_reservationUser] FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [fk_reservationUser]
GO
ALTER TABLE [dbo].[ReservationService]  WITH CHECK ADD  CONSTRAINT [fk_bookedServices] FOREIGN KEY([serviceId])
REFERENCES [dbo].[HotelServices] ([id])
GO
ALTER TABLE [dbo].[ReservationService] CHECK CONSTRAINT [fk_bookedServices]
GO
ALTER TABLE [dbo].[ReservationService]  WITH CHECK ADD  CONSTRAINT [fk_bookServices] FOREIGN KEY([reservationId])
REFERENCES [dbo].[Reservations] ([id])
GO
ALTER TABLE [dbo].[ReservationService] CHECK CONSTRAINT [fk_bookServices]
GO
ALTER TABLE [dbo].[RoomPromotion]  WITH CHECK ADD  CONSTRAINT [fk_promotion_roompromotion] FOREIGN KEY([promotionid])
REFERENCES [dbo].[HotelPromotions] ([id])
GO
ALTER TABLE [dbo].[RoomPromotion] CHECK CONSTRAINT [fk_promotion_roompromotion]
GO
ALTER TABLE [dbo].[RoomPromotion]  WITH CHECK ADD  CONSTRAINT [fk_room_roompromotion] FOREIGN KEY([roomid])
REFERENCES [dbo].[RoomTypes] ([id])
GO
ALTER TABLE [dbo].[RoomPromotion] CHECK CONSTRAINT [fk_room_roompromotion]
GO
ALTER TABLE [dbo].[RoomTypes]  WITH CHECK ADD  CONSTRAINT [fk_hotelRoom] FOREIGN KEY([hotelId])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[RoomTypes] CHECK CONSTRAINT [fk_hotelRoom]
GO
ALTER TABLE [dbo].[Hotels]  WITH CHECK ADD CHECK  (([noOfstar]>(0) AND [noOfstar]<(6)))
GO
ALTER TABLE [dbo].[ReservationService]  WITH CHECK ADD CHECK  (([quantity]>(0)))
GO
