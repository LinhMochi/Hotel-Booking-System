USE [Hotel_Booking]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[CityRate]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[ConvenientCategories]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[ConvenientRate]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[HotelCategories]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[HotelConveniences]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[HotelGallery]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[HotelLikeLog]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[HotelPromotions]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[HotelRating]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[HotelReport]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[Hotels]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[HotelServices]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[HotelSuggestPlaces]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[Manages]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[Promotion]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[ReservationRoom]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[Reservations]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[ReservationService]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[RoomPromotion]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[RoomTypes]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[ServiceCategories]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[SuggestPlaceCategories]    Script Date: 19/07/2022 05:33:38 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 19/07/2022 05:33:38 ******/
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
SET IDENTITY_INSERT [dbo].[HotelRating] ON 

INSERT [dbo].[HotelRating] ([id], [score], [feedback], [reservationId], [rateAt]) VALUES (1, 8.5, N'Rất tốt', 1, N'2022-07-04 20:02:52')
INSERT [dbo].[HotelRating] ([id], [score], [feedback], [reservationId], [rateAt]) VALUES (2, 9, N'Rất tốt', 2, N'2022-07-04 20:02:52')
SET IDENTITY_INSERT [dbo].[HotelRating] OFF
GO
SET IDENTITY_INSERT [dbo].[Hotels] ON 

INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (2, N'Ngân Hàn Hotel', 3, N'Có vị trí thuận tiện ở Đống Đa, Ngan Ha Hotel cung cấp các phòng nghỉ trang nhã và thoải mái', N'Ngay trung tâm thành phố', N'Nhận phòng từ 12:00 và hạn trả phòng lúc 12:00 giờ sáng', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d248.37010618788605!2d105.84705598899981!3d21.03681217512315!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbead8848d3%3A0xe9e52918fbfab33d!2zS2jDoWNoIFPhuqFuIEhhbm9pIEJsdWUgU2t5!5e0!3m2!1svi!2s!4v1655971979302!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'nganhanhotel@gmail.com', N'0242123456', N'Active', N'Số 2, Ngõ 538, Vũ Tông Phan, Thanh Xuân, Hà Nội', 1, 1, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (3, N'Mun Hotel', 3, N'Có vị trí thuận tiện ở Quận 1, Mun Hotel cung cấp các phòng nghỉ trang nhã và thoải mái', N'Ngay trung tâm thành phố', N'Nhận phòng từ 12:00 và hạn trả phòng lúc 12:00 giờ sáng', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d248.37010618788605!2d105.84705598899981!3d21.03681217512315!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbead8848d3%3A0xe9e52918fbfab33d!2zS2jDoWNoIFPhuqFuIEhhbm9pIEJsdWUgU2t5!5e0!3m2!1svi!2s!4v1655971979302!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'munhotel@gmail.com', N'0282123456', N'Active', N'Số 2, Ngõ 538, Vũ Tông Phan, Thanh Xuân, Hà Nội', 1, 1, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (4, N'Mặt Trời Hotel', 3, N'Có vị trí thuận tiện, Mặt Trời Hotel cung cấp các phòng nghỉ trang nhã và thoải mái', N'Có nhiều cảnh đẹp', N'Nhận phòng từ 12:00 và hạn trả phòng lúc 12:00 giờ sáng', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d248.37010618788605!2d105.84705598899981!3d21.03681217512315!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbead8848d3%3A0xe9e52918fbfab33d!2zS2jDoWNoIFPhuqFuIEhhbm9pIEJsdWUgU2t5!5e0!3m2!1svi!2s!4v1655971979302!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'mattroihotel@gmail.com', N'0231123456', N'Active', N'Số 2, Ngõ 538, Vũ Tông Phan, Thanh Xuân, Hà Nội', 1, 3, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
INSERT [dbo].[Hotels] ([id], [name], [noOfStar], [description], [hotelAdvance], [policies], [map], [email], [phoneNumber], [status], [address], [cityId], [categoryId], [image]) VALUES (5, N'Lữ Hành Hotel', 3, N'Có vị trí thuận tiện, Lữ Hành Hotel cung cấp các phòng nghỉ trang nhã và thoải mái', N'Ngay trung tâm thành phố', N'Khách sạn chỉ cung cấp cho những người >18 tuổi, trẻ em phải đi cùng người giám hộ', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d248.37010618788605!2d105.84705598899981!3d21.03681217512315!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbead8848d3%3A0xe9e52918fbfab33d!2zS2jDoWNoIFPhuqFuIEhhbm9pIEJsdWUgU2t5!5e0!3m2!1svi!2s!4v1655971979302!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'luhanhhotel@gmail.com', N'0251123456', N'Active', N'Số 2, Ngõ 538, Vũ Tông Phan, Thanh Xuân, Hà Nội', 1, 3, N'https://vietluat.vn/wp-content/uploads/2020/02/thanh-lap-cong-ty-nganh-khach-san.jpg')
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

INSERT [dbo].[HotelServices] ([id], [service], [price], [unit], [create], [from], [to], [hotelId], [serviceCategoryId]) VALUES (1, N'Đón tại sân bay', 1, N'VNĐ/giờ', N'2022-06-13 17:15:00', CAST(N'2022-06-13' AS Date), CAST(N'2023-06-13' AS Date), 2, 1)
INSERT [dbo].[HotelServices] ([id], [service], [price], [unit], [create], [from], [to], [hotelId], [serviceCategoryId]) VALUES (2, N'Thuê xe điện thăm quan', 2, N'VNĐ/giờ', N'2022-06-13 17:15:00', CAST(N'2022-06-13' AS Date), CAST(N'2023-06-13' AS Date), 2, 1)
INSERT [dbo].[HotelServices] ([id], [service], [price], [unit], [create], [from], [to], [hotelId], [serviceCategoryId]) VALUES (3, N'Xấy đồ', 2, N'VNĐ/kg', N'2022-06-13 17:15:00', CAST(N'2022-06-13' AS Date), CAST(N'2023-06-13' AS Date), 2, 5)
INSERT [dbo].[HotelServices] ([id], [service], [price], [unit], [create], [from], [to], [hotelId], [serviceCategoryId]) VALUES (4, N'Giặt quần áo', 1, N'VNĐ/kg', N'2022-06-13 17:15:00', CAST(N'2022-06-13' AS Date), CAST(N'2023-06-13' AS Date), 2, 1)
INSERT [dbo].[HotelServices] ([id], [service], [price], [unit], [create], [from], [to], [hotelId], [serviceCategoryId]) VALUES (5, N'Bể bơi chung', 1, N'VNĐ/giờ', N'2022-06-13 17:15:00', CAST(N'2022-06-13' AS Date), CAST(N'2023-06-13' AS Date), 2, 2)
INSERT [dbo].[HotelServices] ([id], [service], [price], [unit], [create], [from], [to], [hotelId], [serviceCategoryId]) VALUES (6, N'Thuê địa điểm tổ chức sự kiện', 10, N'VNĐ/buổi', N'2022-06-13 17:15:00', CAST(N'2022-06-13' AS Date), CAST(N'2023-06-13' AS Date), 2, 5)
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
INSERT [dbo].[ReservationRoom] ([id], [quantity], [unitprice], [roomId], [reservationId], [discount]) VALUES (3, 1, 2.5, 2, 3, 0.2)
INSERT [dbo].[ReservationRoom] ([id], [quantity], [unitprice], [roomId], [reservationId], [discount]) VALUES (4, 1, 2.5, 2, 7, 0.2)
INSERT [dbo].[ReservationRoom] ([id], [quantity], [unitprice], [roomId], [reservationId], [discount]) VALUES (5, 1, 2.5, 2, 8, 0.2)
INSERT [dbo].[ReservationRoom] ([id], [quantity], [unitprice], [roomId], [reservationId], [discount]) VALUES (6, 1, 2.5, 2, 9, 0.2)
INSERT [dbo].[ReservationRoom] ([id], [quantity], [unitprice], [roomId], [reservationId], [discount]) VALUES (7, 1, 4.3, 3, 10, 0)
INSERT [dbo].[ReservationRoom] ([id], [quantity], [unitprice], [roomId], [reservationId], [discount]) VALUES (8, 1, 4.3, 3, 11, 0)
INSERT [dbo].[ReservationRoom] ([id], [quantity], [unitprice], [roomId], [reservationId], [discount]) VALUES (9, 1, 4.3, 3, 12, 0)
INSERT [dbo].[ReservationRoom] ([id], [quantity], [unitprice], [roomId], [reservationId], [discount]) VALUES (10, 1, 4.3, 3, 13, 0)
INSERT [dbo].[ReservationRoom] ([id], [quantity], [unitprice], [roomId], [reservationId], [discount]) VALUES (11, 1, 1.5, 5, 14, 0.2)
INSERT [dbo].[ReservationRoom] ([id], [quantity], [unitprice], [roomId], [reservationId], [discount]) VALUES (13, 1, 1.5, 5, 16, 0.2)
INSERT [dbo].[ReservationRoom] ([id], [quantity], [unitprice], [roomId], [reservationId], [discount]) VALUES (14, 1, 3.551, 66, 17, 0)
SET IDENTITY_INSERT [dbo].[ReservationRoom] OFF
GO
SET IDENTITY_INSERT [dbo].[Reservations] ON 

INSERT [dbo].[Reservations] ([id], [noOfAdults], [noOfChild], [noOfRoom], [bookDate], [arrival], [department], [status], [userId], [hotelId]) VALUES (1, 1, 0, 1, N'2022-07-25 16:59:51', CAST(N'2022-08-01' AS Date), CAST(N'2022-08-03' AS Date), N'Accept', 5, 2)
INSERT [dbo].[Reservations] ([id], [noOfAdults], [noOfChild], [noOfRoom], [bookDate], [arrival], [department], [status], [userId], [hotelId]) VALUES (2, 1, 0, 1, N'2022-07-29 17:08:07', CAST(N'2022-08-04' AS Date), CAST(N'2022-08-06' AS Date), N'Accept', 5, 2)
INSERT [dbo].[Reservations] ([id], [noOfAdults], [noOfChild], [noOfRoom], [bookDate], [arrival], [department], [status], [userId], [hotelId]) VALUES (3, 1, 0, 1, N'2022-07-19 02:45:33', CAST(N'2022-07-26' AS Date), CAST(N'2022-07-28' AS Date), N'Pending', 5, 2)
INSERT [dbo].[Reservations] ([id], [noOfAdults], [noOfChild], [noOfRoom], [bookDate], [arrival], [department], [status], [userId], [hotelId]) VALUES (7, 1, 0, 0, N'2022-07-19 03:10:31', CAST(N'2022-07-29' AS Date), CAST(N'2022-07-30' AS Date), N'Pending', 5, 2)
INSERT [dbo].[Reservations] ([id], [noOfAdults], [noOfChild], [noOfRoom], [bookDate], [arrival], [department], [status], [userId], [hotelId]) VALUES (8, 1, 0, 0, N'2022-07-19 03:39:53', CAST(N'2022-07-29' AS Date), CAST(N'2022-07-30' AS Date), N'Pending', 94, 2)
INSERT [dbo].[Reservations] ([id], [noOfAdults], [noOfChild], [noOfRoom], [bookDate], [arrival], [department], [status], [userId], [hotelId]) VALUES (9, 1, 0, 0, N'2022-07-19 03:53:16', CAST(N'2022-07-29' AS Date), CAST(N'2022-07-30' AS Date), N'Pending', 5, 2)
INSERT [dbo].[Reservations] ([id], [noOfAdults], [noOfChild], [noOfRoom], [bookDate], [arrival], [department], [status], [userId], [hotelId]) VALUES (10, 1, 0, 1, N'2022-07-19 04:59:02', CAST(N'2022-07-29' AS Date), CAST(N'2022-07-30' AS Date), N' Pending', 5, 2)
INSERT [dbo].[Reservations] ([id], [noOfAdults], [noOfChild], [noOfRoom], [bookDate], [arrival], [department], [status], [userId], [hotelId]) VALUES (11, 1, 0, 1, N'2022-07-19 05:00:13', CAST(N'2022-07-29' AS Date), CAST(N'2022-07-30' AS Date), N' Pending', 94, 2)
INSERT [dbo].[Reservations] ([id], [noOfAdults], [noOfChild], [noOfRoom], [bookDate], [arrival], [department], [status], [userId], [hotelId]) VALUES (12, 1, 0, 1, N'2022-07-19 05:00:32', CAST(N'2022-07-29' AS Date), CAST(N'2022-07-30' AS Date), N' Pending', 95, 2)
INSERT [dbo].[Reservations] ([id], [noOfAdults], [noOfChild], [noOfRoom], [bookDate], [arrival], [department], [status], [userId], [hotelId]) VALUES (13, 1, 0, 1, N'2022-07-19 05:05:08', CAST(N'2022-08-08' AS Date), CAST(N'2022-08-10' AS Date), N' Pending', 95, 2)
INSERT [dbo].[Reservations] ([id], [noOfAdults], [noOfChild], [noOfRoom], [bookDate], [arrival], [department], [status], [userId], [hotelId]) VALUES (14, 1, 0, 1, N'2022-07-19 05:15:00', CAST(N'2022-07-24' AS Date), CAST(N'2022-07-26' AS Date), N'Pending', 96, 2)
INSERT [dbo].[Reservations] ([id], [noOfAdults], [noOfChild], [noOfRoom], [bookDate], [arrival], [department], [status], [userId], [hotelId]) VALUES (16, 1, 0, 1, N'2022-07-19 05:30:32', CAST(N'2022-07-19' AS Date), CAST(N'2022-07-20' AS Date), N'Pending', 5, 2)
INSERT [dbo].[Reservations] ([id], [noOfAdults], [noOfChild], [noOfRoom], [bookDate], [arrival], [department], [status], [userId], [hotelId]) VALUES (17, 1, 0, 1, N'2022-07-19 05:32:06', CAST(N'2022-07-25' AS Date), CAST(N'2022-07-26' AS Date), N'Pending', 96, 15)
SET IDENTITY_INSERT [dbo].[Reservations] OFF
GO
SET IDENTITY_INSERT [dbo].[RoomPromotion] ON 

INSERT [dbo].[RoomPromotion] ([id], [roomid], [promotionid]) VALUES (1, 2, 1)
INSERT [dbo].[RoomPromotion] ([id], [roomid], [promotionid]) VALUES (2, 4, 1)
INSERT [dbo].[RoomPromotion] ([id], [roomid], [promotionid]) VALUES (3, 5, 1)
SET IDENTITY_INSERT [dbo].[RoomPromotion] OFF
GO
SET IDENTITY_INSERT [dbo].[RoomTypes] ON 

INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (1, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 1.5, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 2)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (2, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 2.5, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 2)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (3, N'Phòng Deluxe', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 4.3, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 2)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (4, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 1.5, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 2)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (5, N'Phòng Suite', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 1.5, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 2)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (6, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 4.518, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 3)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (7, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 4.379, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 3)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (8, N'Phòng Deluxe', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 4.732, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 3)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (9, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 4.612, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 3)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (10, N'Phòng Suite', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 14.286, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 3)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (11, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 15.56, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 4)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (12, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 0.832, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 4)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (13, N'Phòng Deluxe', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 2.451, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 4)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (14, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 10.527, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 4)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (15, N'Phòng Suite', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 5.904, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 4)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (16, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 11.562, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 5)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (17, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 12.876, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 5)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (18, N'Phòng Deluxe', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 14.195, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 5)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (19, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 4.694, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 5)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (20, N'Phòng Suite', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 9.244, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 5)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (21, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 0.602, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 6)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (22, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 18.161, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 6)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (23, N'Phòng Deluxe', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 4.57, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 6)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (24, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 2.98, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 6)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (25, N'Phòng Suite', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 15.332, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 6)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (26, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 7.6, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 7)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (27, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 5.767, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 7)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (28, N'Phòng Deluxe', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 3.68, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 7)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (29, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 5.612, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 7)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (30, N'Phòng Suite', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 6.759, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 7)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (31, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 14.836, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 8)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (32, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 15.451, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 8)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (33, N'Phòng Deluxe', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 12.984, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 8)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (34, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 14.305, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 8)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (35, N'Phòng Suite', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 4.202, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 8)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (36, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 15.14, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 9)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (37, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 5.278, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 9)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (38, N'Phòng Deluxe', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 7.641, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 9)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (39, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 1.645, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 9)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (40, N'Phòng Suite', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 12.467, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 9)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (41, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 11.281, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 10)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (42, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 12.576, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 10)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (43, N'Phòng Deluxe', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 19.241, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 10)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (44, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 11.941, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 10)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (45, N'Phòng Suite', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 17.243, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 10)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (46, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 17.651, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 11)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (47, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 15.238, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 11)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (48, N'Phòng Deluxe', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 2.451, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 11)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (49, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 2.25, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 11)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (50, N'Phòng Suite', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 17.017, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 11)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (51, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 8.171, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 12)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (52, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 3.753, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 12)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (53, N'Phòng Deluxe', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 1.437, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 12)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (54, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 11.811, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 12)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (55, N'Phòng Suite', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 17.238, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 12)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (56, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 8.539, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 13)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (57, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 14.809, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 13)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (58, N'Phòng Deluxe', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 14.906, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 13)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (59, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 18.115, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 13)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (60, N'Phòng Suite', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 17.247, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 13)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (61, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 13.879, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 14)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (62, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 17.075, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 14)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (63, N'Phòng Deluxe', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 18.849, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 14)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (64, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 15.22, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 14)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (65, N'Phòng Suite', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 11.726, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 14)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (66, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 3.551, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 15)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (67, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 16.126, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 15)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (68, N'Phòng Deluxe', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 8.218, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 15)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (69, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 10.035, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 15)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (70, N'Phòng Suite', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 17.959, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 15)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (71, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 14.405, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 16)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (72, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 5.605, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 16)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (73, N'Phòng Deluxe', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 1.295, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 16)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (74, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 19.833, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 16)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (75, N'Phòng Suite', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 16.707, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 16)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (76, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 2.501, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 17)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (77, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 11.944, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 17)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (78, N'Phòng Deluxe', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 1.478, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 17)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (79, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 7.602, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 17)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (80, N'Phòng Suite', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 11.945, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 17)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (81, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 1.296, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 18)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (82, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 7.221, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 18)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (83, N'Phòng Deluxe', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 1.054, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 18)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (84, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 2.671, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 18)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (85, N'Phòng Suite', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 2.822, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 18)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (86, N'Phòng đơn tiêu chuẩn', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 18.144, 2, 0, N'1 giường đơn', N'25 m2', N'View phố', 19)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (87, N'Phòng phong cách cổ điển', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 17.31, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 19)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (88, N'Phòng Deluxe', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 19.637, 2, 1, N'1 giường cỡ trung', N'25 m2', N'Quang cảnh thành phố', 19)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (89, N'Phòng Suite Cao cấp', N'https://images.pexels.com/photos/2029731/pexels-photo-2029731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 15.51, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 19)
INSERT [dbo].[RoomTypes] ([id], [roomType], [image], [quantity], [price], [maxAdults], [maxChild], [bed], [area], [description], [hotelId]) VALUES (90, N'Phòng Suite', N'https://images.pexels.com/photos/26139/pexels-photo-26139.jpg', 3, 15.546, 2, 1, N'1 giường đôi', N'28 m2', N'View công viên', 19)
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
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (54, N'Chu Văn Lý', 1, CAST(N'1989-10-01' AS Date), N'lycv101@gmail.com', N'Quốc Oai, Hà Nội', N'https://avatarfiles.alphacoders.com/837/thumb-83722.jpg', N'0897654321', N'abc1234', N'Manager', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (55, N'Nguyễn Thị Quản', 2, CAST(N'1995-12-01' AS Date), N'quannt123@gmail.com', N'Lý Thái Tông, Hoà Nội', N'https://avatarfiles.alphacoders.com/477/thumb-47.jpg', N'0879654321', N'abc1234', N'Manager', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (56, N'Hà Văn Lý', 1, CAST(N'1985-11-12' AS Date), N'lyhv123@gmail.com', N'Hoàn Kiếm, Hà Nội', N'https://avatarfiles.alphacoders.com/872/87241.png', N'0876954321', N'abc1234', N'Manager', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (57, N'Hoàng Thanh Quản', 2, CAST(N'1978-04-12' AS Date), N'quanht123@gmail.com', N'Hoàn Kiếm,Hà Nội', N'https://avatarfiles.alphacoders.com/752/thumb-75205.png', N'0987654321', N'abc1234', N'Manager', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (58, N'Chu Văn Lý', 1, CAST(N'1989-10-01' AS Date), N'lycv11@gmail.com', N'Quốc Oai, Hà Nội', N'https://avatarfiles.alphacoders.com/837/thumb-83722.jpg', N'0897654321', N'abc1234', N'Manager', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (59, N'Nguyên Thị Lý', 2, CAST(N'1988-12-01' AS Date), N'quannt103@gmail.com', N'Hàng Bồ, Hoà Nội', N'https://avatarfiles.alphacoders.com/477/thumb-47.jpg', N'0879654321', N'abc1234', N'Manager', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (60, N'Hà Văn Lý', 1, CAST(N'1985-11-12' AS Date), N'lyhv193@gmail.com', N'Tân Bình, Hồ Chí Minh', N'https://avatarfiles.alphacoders.com/872/87241.png', N'0876954321', N'abc1234', N'Manager', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (61, N'Lý Văn Quán', 1, CAST(N'1978-03-12' AS Date), N'quanlv12@gmail.com', N'Tân Bình, Hồ Chí Minh', N'https://avatarfiles.alphacoders.com/752/thumb-75205.png', N'0896754321', N'abc1234', N'Manager', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (62, N'Man vân giờ', 1, CAST(N'1979-03-01' AS Date), N'giomv3@gmail.com', N'Tân Bình, Hồ Chí Minh', N'https://avatarfiles.alphacoders.com/106/106710.png', N'0817659432', N'abc1234', N'Manager', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (63, N'Đặng Thị Lý', 2, CAST(N'1989-10-01' AS Date), N'lydt101@gmail.com', N'Tân Bình, Hồ Chí Minh', N'https://avatarfiles.alphacoders.com/837/thumb-83722.jpg', N'0829765431', N'abc1234', N'Manager', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (64, N'Đăng Thị Quản', 2, CAST(N'1995-12-01' AS Date), N'quandt123@gmail.com', N'Sơn Trà, Đà Nẵng', N'https://avatarfiles.alphacoders.com/477/thumb-47.jpg', N'0879654321', N'abc1234', N'Manager', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (65, N'Quân Thị Lý', 2, CAST(N'1985-11-12' AS Date), N'lyqt14@gmail.com', N'Sơn Trà, Đà Nẵng', N'https://avatarfiles.alphacoders.com/872/87241.png', N'0876954321', N'abc1234', N'Manager', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (66, N'Ly Thị Quản Lý', 1, CAST(N'1978-03-12' AS Date), N'lyltq123@gmail.com', N'Sơn Trà, Đà Nẵng', N'https://avatarfiles.alphacoders.com/752/thumb-75205.png', N'0876543219', N'abc1234', N'Manager', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (67, N'Đặng Quán Ly', 2, CAST(N'1979-03-01' AS Date), N'lydt1011@gmail.com', N'Phường 3, Đà Lạt, Lâm Đồng', N'https://avatarfiles.alphacoders.com/106/106710.png', N'0876159432', N'abc1234', N'Manager', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (68, N'Hà Thị Quán', 2, CAST(N'1979-03-01' AS Date), N'quanht079@gmail.com', N'Phường 3, Đà Lạt, Lâm Đồng', N'https://avatarfiles.alphacoders.com/106/106710.png', N'0875659432', N'abc1234', N'Manager', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (69, N'Quản Lý Ly', 1, CAST(N'1979-03-01' AS Date), N'lyqq123@gmail.com', N'Phường 3, Đà Lạt, Lâm Đồng', N'https://avatarfiles.alphacoders.com/106/106710.png', N'0847659432', N'abc1234', N'Manager', N'Active')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (70, N'Lý Quản', 1, CAST(N'1979-03-01' AS Date), N'lyq123@gmail.com', N'Phường 3, Đà Lạt, Lâm Đồng', N'https://avatarfiles.alphacoders.com/106/106710.png', N'0837659432', N'abc1234', N'Manager', N'Active')
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
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (94, N'Hoàng Hiếu', 0, NULL, N'demoadd01@gmail.com', N'Hà Nội', N'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg', N'097865123', NULL, N'Customer', N'Guest')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (95, N'Tạ Hiếu', 0, NULL, N'demoadd02@gmail.com', N'Hà Nội', N'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg', N'097865123', NULL, N'Customer', N'Guest')
INSERT [dbo].[Users] ([id], [fullName], [gender], [dob], [email], [address], [avatar], [phoneNumber], [password], [role], [status]) VALUES (96, N'Tạ Hiện', 0, NULL, N'demoadd03@gmail.com', N'Hà Nội', N'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg', N'', NULL, N'Customer', N'Guest')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Cities__23BEBA6A941FFF82]    Script Date: 19/07/2022 05:33:38 ******/
ALTER TABLE [dbo].[Cities] ADD UNIQUE NONCLUSTERED 
(
	[city] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Convenie__7D3D0A0DC6170759]    Script Date: 19/07/2022 05:33:38 ******/
ALTER TABLE [dbo].[ConvenientCategories] ADD UNIQUE NONCLUSTERED 
(
	[convenientCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__HotelCat__F7F53CC23902E9D5]    Script Date: 19/07/2022 05:33:38 ******/
ALTER TABLE [dbo].[HotelCategories] ADD UNIQUE NONCLUSTERED 
(
	[category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ServiceC__F8AC43A2D59AC68F]    Script Date: 19/07/2022 05:33:38 ******/
ALTER TABLE [dbo].[ServiceCategories] ADD UNIQUE NONCLUSTERED 
(
	[ServiceCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SuggestP__F1582C4BB3F27CB2]    Script Date: 19/07/2022 05:33:38 ******/
ALTER TABLE [dbo].[SuggestPlaceCategories] ADD UNIQUE NONCLUSTERED 
(
	[suggestPlaceCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__AB6E61641CABF66F]    Script Date: 19/07/2022 05:33:38 ******/
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
