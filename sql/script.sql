USE [Hotel_Booking]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 6/24/2022 2:01:00 AM ******/
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
/****** Object:  Table [dbo].[CityRate]    Script Date: 6/24/2022 2:01:00 AM ******/
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
/****** Object:  Table [dbo].[ConvenientCategories]    Script Date: 6/24/2022 2:01:00 AM ******/
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
/****** Object:  Table [dbo].[ConvenientRate]    Script Date: 6/24/2022 2:01:00 AM ******/
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
/****** Object:  Table [dbo].[HotelCategories]    Script Date: 6/24/2022 2:01:00 AM ******/
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
/****** Object:  Table [dbo].[HotelConveniences]    Script Date: 6/24/2022 2:01:00 AM ******/
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
/****** Object:  Table [dbo].[HotelGallery]    Script Date: 6/24/2022 2:01:00 AM ******/
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
/****** Object:  Table [dbo].[HotelLikeLog]    Script Date: 6/24/2022 2:01:00 AM ******/
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
/****** Object:  Table [dbo].[HotelPromotions]    Script Date: 6/24/2022 2:01:00 AM ******/
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
/****** Object:  Table [dbo].[HotelRating]    Script Date: 6/24/2022 2:01:01 AM ******/
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
/****** Object:  Table [dbo].[HotelReport]    Script Date: 6/24/2022 2:01:01 AM ******/
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
/****** Object:  Table [dbo].[Hotels]    Script Date: 6/24/2022 2:01:01 AM ******/
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
/****** Object:  Table [dbo].[HotelServices]    Script Date: 6/24/2022 2:01:01 AM ******/
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
/****** Object:  Table [dbo].[HotelSuggestPlaces]    Script Date: 6/24/2022 2:01:01 AM ******/
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
/****** Object:  Table [dbo].[Manages]    Script Date: 6/24/2022 2:01:01 AM ******/
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
/****** Object:  Table [dbo].[Promotion]    Script Date: 6/24/2022 2:01:01 AM ******/
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
/****** Object:  Table [dbo].[ReservationRoom]    Script Date: 6/24/2022 2:01:01 AM ******/
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
/****** Object:  Table [dbo].[Reservations]    Script Date: 6/24/2022 2:01:01 AM ******/
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
/****** Object:  Table [dbo].[ReservationService]    Script Date: 6/24/2022 2:01:01 AM ******/
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
/****** Object:  Table [dbo].[RoomTypes]    Script Date: 6/24/2022 2:01:01 AM ******/
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
/****** Object:  Table [dbo].[ServiceCategories]    Script Date: 6/24/2022 2:01:01 AM ******/
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
/****** Object:  Table [dbo].[SuggestPlaceCategories]    Script Date: 6/24/2022 2:01:01 AM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 6/24/2022 2:01:01 AM ******/
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
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (3, N'CCTV ở hành lang các tầng', 2, 1)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (4, N'Phòng dọn dẹp hàng ngày', 2, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (5, N'Lễ tân trực 24/7', 2, 2)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (6, N'Có wifi miễn phí', 2, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (7, N'Nhiều địa điểm du lịch', 2, 3)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (8, N'Khu vui chơi cho trẻ', 2, 4)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (9, N'Phòng tắm rộng', 2, 6)
INSERT [dbo].[HotelConveniences] ([id], [convenient], [hotelId], [convenientCategoryId]) VALUES (10, N'Có phòng view phố', 2, 6)
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
SET IDENTITY_INSERT [dbo].[Hotels] ON 

INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId]) VALUES (2, N'Ngân Hàn Hotel', 3, N'Có vị trí thuận tiện ở Đống Đa, Ngan Ha Hotel cung cấp các phòng nghỉ trang nhã và thoải mái', N'Ngay trung tâm thành phố', N'Nhận phòng từ 12:00 và hạn trả phòng lúc 12:00 giờ sáng', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d248.37010618788605!2d105.84705598899981!3d21.03681217512315!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbead8848d3%3A0xe9e52918fbfab33d!2zS2jDoWNoIFPhuqFuIEhhbm9pIEJsdWUgU2t5!5e0!3m2!1svi!2s!4v1655971979302!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'nganhanhotel@gmail.com', N'0242123456', N'Active', N'Số 2, Ngõ 538, Vũ Tông Phan, Thanh Xuân', 1, 1)
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId]) VALUES (3, N'Mun Hotel', 3, N'Có vị trí thuận tiện ở Quận 1, Mun Hotel cung cấp các phòng nghỉ trang nhã và thoải mái', N'Ngay trung tâm thành phố', N'Nhận phòng từ 12:00 và hạn trả phòng lúc 12:00 giờ sáng', N'<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d244.9725082071062!2d106.69342436365447!3d10.768343920756054!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xae4b0bda253ae23a!2zTHVja3kgU3RhciBIb3RlbCAyNjYgxJDhu4EgVGjDoW0!5e0!3m2!1svi!2s!4v1655972284524!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'munhotel@gmail.com', N'0282123456', N'Active', N'Số 2, Ngõ 538, Vũ Tông Phan, Thanh Xuân', 10, 1)
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId]) VALUES (4, N'Mặt Trời Hotel', 3, N'Có vị trí thuận tiện, Mặt Trời Hotel cung cấp các phòng nghỉ trang nhã và thoải mái', N'Có nhiều cảnh đẹp', N'Nhận phòng từ 12:00 và hạn trả phòng lúc 12:00 giờ sáng', N'<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d244.9725082071062!2d106.69342436365447!3d10.768343920756054!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xae4b0bda253ae23a!2zTHVja3kgU3RhciBIb3RlbCAyNjYgxJDhu4EgVGjDoW0!5e0!3m2!1svi!2s!4v1655972409230!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'mattroihotel@gmail.com', N'0231123456', N'Active', N'Số 2, Ngõ 538, Vũ Tông Phan, Thanh Xuân', 1, 3)
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId]) VALUES (5, N'Lữ Hành Hotel', 3, N'Có vị trí thuận tiện, Lữ Hành Hotel cung cấp các phòng nghỉ trang nhã và thoải mái', N'Ngay trung tâm thành phố', N'Khách sạn chỉ cung cấp cho những người >18 tuổi, trẻ em phải đi cùng người giám hộ', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d232.7464117766609!2d105.84771051292206!3d21.03498306195943!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbe943043c1%3A0xf83c3df40b01d8a5!2sGolden%20Art%20Hotel!5e0!3m2!1svi!2s!4v1655972558157!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'luhanhhotel@gmail.com', N'0251123456', N'Active', N'Số 2, Ngõ 538, Vũ Tông Phan, Thanh Xuân', 1, 3)
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId]) VALUES (6, N'Mayflower Hotel Hanoi', 3, N'Khách sạn cao cấp có phòng ốc tinh tế, nhà hàng sang trọng và phục vụ bữa sáng miễn phí.', N'Nằm ở Khu vực trung tâm ghi dấu ấn riêng với các cửa hàng đồ thủ công và ẩm thực đường phố trong khu phố cổ, cùng Nhà thờ Lớn Hà Nội.', N'Bạn có thể hủy yêu cầu đặt phòng mà không mất phí cho đến 48h', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d733.598083883515!2d105.84779339529666!3d21.036978529020885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abb94a5b2a45%3A0x4580edf60fc1ec09!2sMayflower%20Hotel%20Hanoi!5e0!3m2!1svi!2s!4v1655971511710!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'Mayflower@gmail.com', N'024 3533 1111', N'Active', N'11 P. Hàng Rươi, Hàng Mã, Hoàn Kiếm, Hà Nội', 1, 1)
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId]) VALUES (7, N'Khách Sạn Rising Dragon Villa', 2, N'Khách sạn bình dân có nhà hàng, khu spa, quầy bar trên tầng thượng, phòng ốc bài trí đơn giản có ban công.', N'Khu vực trung tâm ghi dấu ấn riêng với các cửa hàng đồ thủ công và ẩm thực đường phố trong khu phố cổ, cùng Nhà thờ Lớn Hà Nội.', N'Bạn có thể hủy yêu cầu đặt phòng mà không mất phí cho đến 24h', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d232.7469240584107!2d105.84733669460034!3d21.034655131094027!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbe9067dde7%3A0x2000f3cec844ebeb!2zNTItMjYgUC4gQsOhdCBT4bupLCBIw6BuZyBC4buTLCBIb8OgbiBLaeG6v20sIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1655973081131!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'RisingDragon@gmail.com', N'024 3923 2683
', N'Active', N'43 P. Bát Sứ, Hàng Bồ, Hoàn Kiếm, Hà Nội', 1, 1)
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId]) VALUES (8, N'Hanoi L'' Heritage Hotel', 4, N'Khách sạn thư thái bên trong Khu Phố Cổ có một phòng tập, một phòng xông hơi & có phục vụ bữa sáng miễn phí.', N'Khu vực trung tâm ghi dấu ấn riêng với các cửa hàng đồ thủ công và ẩm thực đường phố trong khu phố cổ, cùng Nhà thờ Lớn Hà Nội.', N'Bạn có thể hủy yêu cầu đặt phòng mà không mất phí cho đến 24h', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d256.28220732908056!2d105.84713036312996!3d21.03540997445906!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbea207b703%3A0x9bb7fe181f1ee894!2sHanoi%20L&#39;%20Heritage%20Hotel!5e1!3m2!1svi!2s!4v1655973996340!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'Heritage@gmail.com', N'024 6299 5666', N'Active', N'41 P. Hàng Gà, Hàng Bồ, Hoàn Kiếm, Hà Nội', 1, 1)
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId]) VALUES (9, N'Serene Boutique Hotel', 3, N'Khách sạn hiện đại có spa, nhà hàng và phòng ở trang nhã, một số phòng có ban công.', N'Khu vực trung tâm ghi dấu ấn riêng với các cửa hàng đồ thủ công và ẩm thực đường phố trong khu phố cổ, cùng Nhà thờ Lớn Hà Nội.', N'Bạn có thể hủy yêu cầu đặt phòng mà không mất phí cho đến 48h', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d232.7461755337618!2d105.84732934708362!3d21.035134288303198!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbe962a8b35%3A0x3f41e66d6737136!2zMi0yNiBQLiBCw6F0IFPhu6ksIEjDoG5nIELhu5MsIEhvw6BuIEtp4bq_bSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1655975021604!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'SereneBoutique@gmail.com', N'024 3923 4278', N'Active', N'Old Quarter, 16-18 P. Bát Sứ, Hàng Bồ, Hoàn Kiếm, Hà Nội', 1, 4)
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId]) VALUES (10, N'Lucky Star Hotel 266 Đề Thám', 2, N'Giờ nhận phòng: 14:00', N'Đường Bùi viện có nhiều cửa hàng ăn uống và trung tâm giải trí về đêm sôi động cùng công viên 23/9 và nhà thờ Công giáo.', N'Bạn có thể hủy yêu cầu đặt phòng mà không mất phí cho đến 24h', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d244.97251869581888!2d106.69335328484681!3d10.768331022071887!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f32bf7c6bd9%3A0xae4b0bda253ae23a!2zTHVja3kgU3RhciBIb3RlbCAyNjYgxJDhu4EgVGjDoW0!5e0!3m2!1svi!2s!4v1655976000883!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'LuckyStarHotel@gmail.com', N'028 3920 9605', N'Active', N'Vòng xoay, 266 Đề Thám, Phường Phạm Ngũ Lão, Quận 1, Thành phố Hồ Chí Minh', 10, 4)
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId]) VALUES (11, N'Khách sạn Park Hyatt Sài Gòn', 5, N'Khách sạn cao cấp với phòng ở tinh tế, một số phòng có sân hiên, có nhà hàng, bể bơi ngoài trời và spa.', N'Khu trung tâm thành phố mang nét đặc trưng riêng với các căn phòng thời chiến tại Dinh Độc Lập, bảo tàng lịch sử và nghệ thuật hay các quán bar trên Đường Phạm Ngũ Lão.', N'Bạn có thể hủy yêu cầu đặt phòng mà không mất phí cho đến 48h', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d244.9651081714524!2d106.7030549324397!3d10.777440446302617!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f462f8cac37%3A0x3d4cc4e3c1887abb!2zS2jDoWNoIHPhuqFuIFBhcmsgSHlhdHQgU8OgaSBHw7Ju!5e0!3m2!1svi!2s!4v1655976429718!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'ParkHyatt@gmail.com', N'028 3824 1234', N'Active', N'2 Lam Son Square, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh', 10, 4)
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId]) VALUES (12, N'Sunflowers Hotel', 5, N'KS bình dân phục vụ bữa sáng, có phòng chờ ở sảnh và phòng ở có thiết kế đơn giản. Một số phòng có ban công.', N'Khách sạn có lối thiết kế đơn giản này nằm trên một con phố nhỏ ở khu vực có nhiều quán cà phê và quán ăn bình dân, cách Sân bay Quốc tế Tân Sơn Nhất 1 km. Ngoài ra, nơi đây cách chùa Giác Lâm 6 km, một quần thể kiến trúc Phật giáo có niên đại từ thế kỷ 18.', NULL, N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d244.9394929404197!2d106.66677071268019!3d10.808869663828599!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529187c913e5b%3A0x9ed3285adbd53df7!2sSunflowers%20Hotel!5e0!3m2!1svi!2s!4v1655976985493!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'SunflowersHotel', N'028 3848 5587', N'Active', N'18 Đ. Lam Sơn, Phường 2, Tân Bình, Thành phố Hồ Chí Minh', 10, 1)
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId]) VALUES (13, N'Mường Thanh Grand Đà Nẵng Hotel', 4, N'Khách sạn cao tầng trang nhã có phòng ở thoáng mát, 1 spa & 1 bể bơi ngoài trời, cùng 2 nhà hàng & 2 quán bar.', N'Khu vực rộng lớn bao trọn các bãi biển và đồi núi, mang nét đặc trưng riêng với các quán ăn hải sản thư thái, quán bia và điểm biểu diễn nhạc jazz sang trọng.', N'Bạn có thể hủy yêu cầu đặt phòng mà không mất phí cho đến 24h', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d239.62602519245118!2d108.23306874153899!3d16.064638578177526!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219f5540b195d%3A0x4476dc3ffe0f3386!2zTcaw4budbmcgVGhhbmggR3JhbmQgxJDDoCBO4bq1bmcgSG90ZWw!5e0!3m2!1svi!2s!4v1655977554043!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'MuongThanhGrand@gmail.com', N'0236 3929 929', N'Active', N'962 Ng. Quyền, An Hải Bắc, Sơn Trà, Đà Nẵng', 6, 4)
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId]) VALUES (14, N'D&C Danang Hotel', 2, N'Khách sạn bình dân có phòng ở bài trí đơn giản, nhà hàng tầng thượng, cảnh sông và bữa sáng miễn phí.', N'Khu vực rộng lớn bao trọn các bãi biển và đồi núi, mang nét đặc trưng riêng với các quán ăn hải sản thư thái, quán bia và điểm biểu diễn nhạc jazz sang trọng.', NULL, N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d561.7554084135937!2d108.23097114055422!3d16.065937642370148!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142182c18e343a3%3A0x24b27f0906d4118!2sD%26C%20Danang%20Hotel!5e0!3m2!1svi!2s!4v1655978532368!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'DCDanang@gmail.com', N'090 512 55 55', N'Active', N'01 Mai Hắc Đế, An Hải Trung, Sơn Trà, Đà Nẵng', 6, 1)
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId]) VALUES (15, N'Forever Hotel', 3, N'Khách sạn cao tầng trang nhã có phòng ở thoáng mát, 1 spa & 1 bể bơi ngoài trời, cùng 2 nhà hàng & 2 quán bar.', N'Khu vực rộng lớn bao trọn các bãi biển và đồi núi, mang nét đặc trưng riêng với các quán ăn hải sản thư thái, quán bia và điểm biểu diễn nhạc jazz sang trọng.', N'Bạn có thể hủy yêu cầu đặt phòng mà không mất phí cho đến 24h', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d239.62819392558325!2d108.233407776251!3d16.06283773374136!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219d5b3e9b751%3A0xf4b267c48c39993d!2sForever%20Hotel!5e0!3m2!1svi!2s!4v1655978912193!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'ForeverHotel@gmail.com', N'094 188 11 99', N'Active', N'1040 Ngô Quyền, An Hải Bắc, Sơn Trà, Đà Nẵng ', 6, 1)
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId]) VALUES (16, N'New Century Hotel Đà Lạt', 2, N'KS bình dân phục vụ bữa sáng, có phòng chờ ở sảnh và phòng ở có thiết kế đơn giản. Một số phòng có ban công.', N'Vị trí tiện lợi để ngắm cảnh, giải trí, ăn uống và di chuyển xung quanh tốt', NULL, N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d243.98315781757728!2d108.4430349642573!3d11.923832411849272!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317113dea8118d6d%3A0xa6c8df9c3567e01c!2zTmV3IENlbnR1cnkgSG90ZWwgxJDDoCBM4bqhdA!5e0!3m2!1svi!2s!4v1655979509035!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'NewCentury@gmail.com', N'0263 3838 485', N'Active', N'14b Đường Đống Đa, Phường 3, Thành phố Đà Lạt, Lâm Đồng', 7, 1)
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId]) VALUES (17, N'An Garden Đà Lạt', 3, N'Khách sạn bình dân có phòng ở bài trí đơn giản, nhà hàng tầng thượng, cảnh sông và bữa sáng miễn phí.', N'Vị trí tiện lợi để ngắm cảnh, giải trí, ăn uống và di chuyển xung quanh: Tốt', NULL, N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d260.3620139358666!2d108.43983905951114!3d11.92626030676346!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3171135ffe70bb81%3A0x69c21e4eb37f0d64!2zQW4gR2FyZGVuIMSQw6AgTOG6oXQ!5e0!3m2!1svi!2s!4v1655979842608!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'AnGarden@gmail.com', N'093 299 76 88', N'Active', N'26A Đường Đống Đa, Phường 3, Thành phố Đà Lạt, Lâm Đồng', 7, 4)
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
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Cities__23BEBA6AA7A61B8A]    Script Date: 6/24/2022 2:01:01 AM ******/
ALTER TABLE [dbo].[Cities] ADD UNIQUE NONCLUSTERED 
(
	[city] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Cities__23BEBA6ABF8D2ACF]    Script Date: 6/24/2022 2:01:01 AM ******/
ALTER TABLE [dbo].[Cities] ADD UNIQUE NONCLUSTERED 
(
	[city] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Convenie__7D3D0A0DECF654C6]    Script Date: 6/24/2022 2:01:01 AM ******/
ALTER TABLE [dbo].[ConvenientCategories] ADD UNIQUE NONCLUSTERED 
(
	[convenientCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Convenie__7D3D0A0DFD4523D5]    Script Date: 6/24/2022 2:01:01 AM ******/
ALTER TABLE [dbo].[ConvenientCategories] ADD UNIQUE NONCLUSTERED 
(
	[convenientCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__HotelCat__F7F53CC23191107F]    Script Date: 6/24/2022 2:01:01 AM ******/
ALTER TABLE [dbo].[HotelCategories] ADD UNIQUE NONCLUSTERED 
(
	[category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__HotelCat__F7F53CC29A212122]    Script Date: 6/24/2022 2:01:01 AM ******/
ALTER TABLE [dbo].[HotelCategories] ADD UNIQUE NONCLUSTERED 
(
	[category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ServiceC__F8AC43A20AF72928]    Script Date: 6/24/2022 2:01:01 AM ******/
ALTER TABLE [dbo].[ServiceCategories] ADD UNIQUE NONCLUSTERED 
(
	[ServiceCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ServiceC__F8AC43A2E04A4508]    Script Date: 6/24/2022 2:01:01 AM ******/
ALTER TABLE [dbo].[ServiceCategories] ADD UNIQUE NONCLUSTERED 
(
	[ServiceCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SuggestP__F1582C4B2DDDD290]    Script Date: 6/24/2022 2:01:01 AM ******/
ALTER TABLE [dbo].[SuggestPlaceCategories] ADD UNIQUE NONCLUSTERED 
(
	[suggestPlaceCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SuggestP__F1582C4B468CFF16]    Script Date: 6/24/2022 2:01:01 AM ******/
ALTER TABLE [dbo].[SuggestPlaceCategories] ADD UNIQUE NONCLUSTERED 
(
	[suggestPlaceCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__AB6E61642F242F41]    Script Date: 6/24/2022 2:01:01 AM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__AB6E61645FB8AD13]    Script Date: 6/24/2022 2:01:01 AM ******/
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
ALTER TABLE [dbo].[Hotels]  WITH CHECK ADD CHECK  (([noOfstar]>(0) AND [noOfstar]<(6)))
GO
ALTER TABLE [dbo].[ReservationService]  WITH CHECK ADD CHECK  (([quantity]>(0)))
GO
ALTER TABLE [dbo].[ReservationService]  WITH CHECK ADD CHECK  (([quantity]>(0)))
GO
