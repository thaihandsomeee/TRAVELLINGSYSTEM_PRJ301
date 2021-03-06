USE [master]
GO
/****** Object:  Database [PRJ301_ASSIGNMENT]    Script Date: 04/02/2022 21:48:53 ******/
CREATE DATABASE [PRJ301_ASSIGNMENT] ON  PRIMARY 
( NAME = N'PRJ301_ASSIGNMENT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\PRJ301_ASSIGNMENT.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PRJ301_ASSIGNMENT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\PRJ301_ASSIGNMENT_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301_ASSIGNMENT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET ANSI_NULLS OFF
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET ANSI_PADDING OFF
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET ARITHABORT OFF
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET AUTO_CLOSE ON
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET  ENABLE_BROKER
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET  READ_WRITE
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET RECOVERY SIMPLE
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET  MULTI_USER
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [PRJ301_ASSIGNMENT] SET DB_CHAINING OFF
GO
USE [PRJ301_ASSIGNMENT]
GO
/****** Object:  Table [dbo].[Ordered]    Script Date: 04/02/2022 21:48:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ordered](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[tour_id] [int] NOT NULL,
	[date_from] [date] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Ordered] ON
INSERT [dbo].[Ordered] ([id], [username], [tour_id], [date_from], [quantity], [price]) VALUES (11, N'username1', 15, CAST(0x37430B00 AS Date), 1, 1000000)
INSERT [dbo].[Ordered] ([id], [username], [tour_id], [date_from], [quantity], [price]) VALUES (12, N'username1', 19, CAST(0x99430B00 AS Date), 3, 4500000)
SET IDENTITY_INSERT [dbo].[Ordered] OFF
/****** Object:  Table [dbo].[Destination]    Script Date: 04/02/2022 21:48:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destination](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description1] [nvarchar](4000) NOT NULL,
	[description2] [nvarchar](4000) NOT NULL,
	[img1] [nvarchar](50) NOT NULL,
	[img2] [nvarchar](50) NOT NULL,
	[img3] [nvarchar](50) NOT NULL,
	[img4] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Destination] ON
INSERT [dbo].[Destination] ([id], [name], [description1], [description2], [img1], [img2], [img3], [img4]) VALUES (1, N'Hà Nội', N'Hà Nội là thủ đô, thành phố trực thuộc trung ương và cũng là một đô thị loại đặc biệt của Việt Nam. Hà Nội nằm về phía tây bắc của trung tâm vùng đồng bằng châu thổ sông Hồng, với địa hình bao gồm vùng đồng bằng trung tâm và vùng đồi núi ở phía bắc và phía tây thành phố. Với diện tích 3.358,6 km2 và dân số 8,05 triệu người (2019), Hà Nội là thành phố có diện tích lớn nhất Việt Nam, đồng thời cũng là thành phố đông dân thứ hai và có mật độ dân số cao thứ hai trong 63 đơn vị hành chính cấp tỉnh của Việt Nam, nhưng phân bố dân số không đồng đều. Hà Nội có 30 đơn vị hành chính cấp huyện, gồm 12 quận, 17 huyện và 1 thị xã.', N'Địa điểm du lịch nổi tiếng: Phố cổ Hà Nội, Hồ Hoàn Kiếm, Hồ Tây, Cầu Long Biên, Ba Vì, Lăng Bác, Làng gốm Bát Tràng, Làng văn hóa 54 dân tộc Việt Nam, Làng cổ Đường Lâm, ...', N'./asserts/img/hanoi1.jpg', N'./asserts/img/hanoi2.jpg', N'./asserts/img/hanoi3.jpg', N'./asserts/img/hanoi4.jpg')
INSERT [dbo].[Destination] ([id], [name], [description1], [description2], [img1], [img2], [img3], [img4]) VALUES (2, N'Hà Tĩnh', N'Hà Tĩnh là một tỉnh thuộc vùng Bắc Trung Bộ, Việt Nam. Trước đây, Hà Tĩnh cùng với Nghệ An là một miền đất có cùng tên chung là Hoan Châu (trước thời Nhà Lý), Nghệ An châu (thời Lý, Trần), xứ Nghệ (năm 1490, đời vua Lê Thánh Tông), rồi trấn Nghệ An. Năm 1831, vua Minh Mạng chia trấn Nghệ An thành hai tỉnh: Nghệ An (bắc sông Lam) và Hà Tĩnh (nam sông Lam). Năm 1976, Hà Tĩnh sáp nhập với Nghệ An, lấy tên là Nghệ Tĩnh. Năm 1991, Quốc hội Việt Nam khóa VIII ra nghị quyết chia tỉnh Nghệ Tĩnh, tái lập tỉnh Nghệ An và tỉnh Hà Tĩnh.', N'Địa điểm du lịch nổi tiếng: Biển Thiên Cầm, Bãi tắm Xuân Thành,  Vườn Quốc gia Vũ Quang, Khu di tích lịch sử Ngã ba Đồng Lộc, Chùa Hương Tích, Vinpearl Discovery Hà Tĩnh,...', N'./asserts/img/hatinh1.jpg', N'./asserts/img/hatinh2.jpg', N'./asserts/img/hatinh3.jpg', N'./asserts/img/hatinh4.jpg')
INSERT [dbo].[Destination] ([id], [name], [description1], [description2], [img1], [img2], [img3], [img4]) VALUES (3, N'Hà Giang', N'Hà Giang là một tỉnh thuộc vùng Đông Bắc Bộ, Việt Nam. Năm 2018, Hà Giang là đơn vị hành chính Việt Nam đông thứ 48 về số dân, xếp thứ 58 về Tổng sản phẩm trên địa bàn (GRDP) và là tỉnh nghèo trong số 6 tỉnh nghèo nhất cả nước, có huyện Xín Mần thuộc diện huyện nghèo trong 6 huyện nghèo nhất cả nước, xếp thứ 63 về GRDP bình quân đầu người, đứng thứ 58 về tốc độ tăng trưởng GRDP. Với 846.500 người dân[7], GRDP đạt 20.772 tỉ Đồng (tương ứng với 0,7610 tỉ USD), GRDP bình quân đầu người đạt 20,7 triệu đồng (tương ứng với 899 USD), tốc độ tăng trưởng GRDP đạt 6,76%.', N'Địa điểm du lịch nổi tiếng: Cao nguyên đá Đồng Văn, Dinh thự họ Vương, Chợ tình Khau Vai, Sông Nho Quế, Mù Cang Chải, Thị trấn Mèo Vạc, cùng hệ thống hang động,...', N'./asserts/img/hagiang1.jpg', N'./asserts/img/hagiang2.jpg', N'./asserts/img/hagiang3.jpg', N'./asserts/img/hagiang4.jpg')
INSERT [dbo].[Destination] ([id], [name], [description1], [description2], [img1], [img2], [img3], [img4]) VALUES (4, N'Đà Lạt', N'Đà Lạt là thành phố tỉnh lỵ của tỉnh Lâm Đồng, nằm trên cao nguyên Lâm Viên, thuộc vùng Tây Nguyên, Việt Nam. Từ xa xưa, vùng đất này vốn là địa bàn cư trú của những cư dân người Lạch, người Chil và người Srê thuộc dân tộc Cơ Ho. Cuối thế kỷ 19, khi tìm kiếm một địa điểm để xây dựng trạm nghỉ dưỡng dành cho người Pháp ở Đông Dương, Toàn quyền Paul Doumer đã quyết định chọn cao nguyên Lâm Viên theo đề nghị của bác sĩ Alexandre Yersin, người từng thám hiểm tới nơi đây vào năm 1893. Trong nửa đầu thế kỷ 20, từ một địa điểm hoang vu, người Pháp đã quy hoạch và xây dựng lên một thành phố xinh đẹp với những biệt thự, công sở, khách sạn và trường học, một trung tâm du lịch và giáo dục của Đông Dương khi đó. Trải qua những khoảng thời gian thăng trầm của hai cuộc chiến tranh cùng giai đoạn khó khăn những thập niên 1970–1980, Đà Lạt ngày nay là một thành phố khá đông dân, đô thị loại I trực thuộc tỉnh, giữ vai trò trung tâm chính trị, kinh tế và văn hóa quan trọng của tỉnh Lâm Đồng và vùng Tây Nguyên, hướng đến là thành phố trực thuộc Trung ương vào năm 2030.', N'Địa điểm du lịch nổi tiếng: So với các đô thị khác của Việt Nam, Đà Lạt là thành phố được thiên nhiên dành cho nhiều ưu ái. Những thắng cảnh của thành phố, nằm rải rác ở cả khu vực trung tâm lẫn vùng ngoại ô, như hồ Xuân Hương, đồi Cù, thung lũng Tình Yêu, hồ Than Thở, thác Prenn...', N'./asserts/img/dalat1.jpg', N'./asserts/img/dalat2.jpg', N'./asserts/img/dalat3.jpg', N'./asserts/img/dalat4.jpg')
INSERT [dbo].[Destination] ([id], [name], [description1], [description2], [img1], [img2], [img3], [img4]) VALUES (5, N'Quảng Ninh', N'Quảng Ninh là tỉnh ven biển thuộc vùng Đông Bắc Việt Nam. Theo quy hoạch phát triển kinh tế, Quảng Ninh vừa thuộc vùng kinh tế trọng điểm phía bắc vừa thuộc Vùng duyên hải Bắc Bộ. Đây là tỉnh khai thác than đá chính của Việt Nam, có vịnh Hạ Long là di sản, kỳ quan thiên nhiên thế giới và là quê gốc của Nhà Trần - một trong những triều đại hùng mạnh nhất lịch sử Việt Nam.', N'Địa điểm du lịch nổi tiếng: Vịnh Hạ Long, Vịnh Bái Tử Long, Hàng chục bãi tắm bãi tắm đẹp hiện đại như Trà Cổ (Móng Cái), Bãi Cháy, đảo Tuần Châu, đảo Cô Tô, Bãi cọc Bạch Đằng, núi Yên Tử, ...', N'./asserts/img/quangninh1.jpg', N'./asserts/img/quangninh2.jpg', N'./asserts/img/quangninh3.jpg', N'./asserts/img/quangninh4.jpg')
INSERT [dbo].[Destination] ([id], [name], [description1], [description2], [img1], [img2], [img3], [img4]) VALUES (6, N'Quảng Nam', N'Quảng Nam là một tỉnh thuộc vùng Duyên hải Nam Trung Bộ, Việt Nam. Nhìn chung, điều kiện tự nhiên của Quảng Nam (thời tiết-khí hậu, địa hình, tài nguyên nước, biển) có nhiều thuận lợi, tiềm năng cho phát triển sự nghiệp văn hóa đa dạng, độc đáo (phát triển những tiểu vùng văn hóa), phát triển ngành du lịch (du lịch văn hóa, du lịch sinh thái).', N'Địa điểm du lịch nổi tiếng: Đô thị cổ Hội An, Thánh địa Mỹ Sơn, Cù lao Chàm , Các di sản văn hóa Chăm, Khu du lịch sinh thái Hồ Phú Ninh, Suối Tiên Quế Sơn, ...', N'./asserts/img/quangnam1.jpg', N'./asserts/img/quangnam2.jpg', N'./asserts/img/quangnam3.jpg', N'./asserts/img/quangnam4.jpg')
SET IDENTITY_INSERT [dbo].[Destination] OFF
/****** Object:  Table [dbo].[Account]    Script Date: 04/02/2022 21:48:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NULL,
	[is_admin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Account] ([username], [password], [is_admin]) VALUES (N'admin1', N'123456', 1)
INSERT [dbo].[Account] ([username], [password], [is_admin]) VALUES (N'admin2', N'123456', 1)
INSERT [dbo].[Account] ([username], [password], [is_admin]) VALUES (N'HE153071', N'123456', 0)
INSERT [dbo].[Account] ([username], [password], [is_admin]) VALUES (N'thaitran11', N'123456', 0)
INSERT [dbo].[Account] ([username], [password], [is_admin]) VALUES (N'thaitran12', N'123456', 0)
INSERT [dbo].[Account] ([username], [password], [is_admin]) VALUES (N'thaitran123', N'123456', 0)
INSERT [dbo].[Account] ([username], [password], [is_admin]) VALUES (N'username1', N'123456', 0)
INSERT [dbo].[Account] ([username], [password], [is_admin]) VALUES (N'username2', N'123456', 0)
/****** Object:  Table [dbo].[Tour]    Script Date: 04/02/2022 21:48:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[destination_id] [int] NOT NULL,
	[description1] [nvarchar](4000) NOT NULL,
	[description2] [nvarchar](4000) NOT NULL,
	[img1] [nvarchar](50) NOT NULL,
	[img2] [nvarchar](50) NOT NULL,
	[time] [nvarchar](50) NULL,
	[price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tour] ON
INSERT [dbo].[Tour] ([id], [name], [destination_id], [description1], [description2], [img1], [img2], [time], [price]) VALUES (1, N'Cù Lao Chàm', 6, N'Thành phố Hội An - Tân Hiệp - Cù Lao Chàm', N'Cù lao Chàm là một cụm đảo, về mặt hành chính trực thuộc xã đảo Tân Hiệp, thành phố Hội An, tỉnh Quảng Nam, nằm cách bờ biển Cửa Đại 16 km và đã được UNESCO công nhận là khu dự trữ sinh quyển thế giới.', N'./asserts/img/culaocham1.jpg', N'./asserts/img/culaocham2.jpg', N'2 ngày 1 đêm', 2000000)
INSERT [dbo].[Tour] ([id], [name], [destination_id], [description1], [description2], [img1], [img2], [time], [price]) VALUES (2, N'Yên Tử', 5, N'Đông Triều - Khu di tích núi Yên Tử', N'Núi Yên Tử hay còn gọi là núi Tượng Đầu là ngọn núi cao 1068m so với mực nước biển trong dãy núi Nam Mẫu thuộc cánh cung Đông Triều tại vùng Đông Bắc Bộ Việt Nam (đỉnh núi cao nhất gọi là Tử Tiêu). Núi Yên Tử là một dải núi cao nằm ở phía Đông Bắc của Việt Nam với hệ thống động thực vật phong phú và đa dạng đã được nhà nước công nhận là khu bảo tồn thiên nhiên.', N'./asserts/img/yentu1.jpg', N'./asserts/img/yentu2.jpg', N'2 ngày 1 đêm', 1500000)
INSERT [dbo].[Tour] ([id], [name], [destination_id], [description1], [description2], [img1], [img2], [time], [price]) VALUES (3, N'Đỉnh LangBiang', 4, N'Thành phố Đà Lạt - Đỉnh LangBiang - Trường Cao đẳng sư phạm Đà Lạt', N'Langbiang – hay núi Langbiang, hay khu du lịch núi Langbiang là hai ngọn núi: Núi Ông và Núi Bà nằm cách thành phố Đà Lạt 12 km thuộc địa phận huyện Lạc Dương. Núi Bà cao 2.167 m so với mặt nước biển, núi Ông cao 2.124 m so với mặt nước biển. Ngoài ra trong khu du lịch còn có ngọn đồi Ra-đa cao 1.929 m, ngọn đồi này cũng là một địa điểm quen thuộc đối với du khách. Nhìn từ trung tâm thành phố Đà Lạt Núi Bà nằm bên trái, núi Ông nằm bên phải. Langbiang được ví như"nóc nhà"của Đà Lạt, và là điểm tham quan du lịch hấp dẫn của thành phố Đà Lạt.', N'./asserts/img/langbiang1.jpg', N'./asserts/img/langbiang2.jpg', N'2 ngày 1 đêm', 1500000)
INSERT [dbo].[Tour] ([id], [name], [destination_id], [description1], [description2], [img1], [img2], [time], [price]) VALUES (4, N'Đồng Văn', 3, N'Thành phố Hà Giang - Cao Nguyên Đá Đồng Văn - Lũng Cú', N'Cao nguyên đá Đồng Văn (hay sơn nguyên Đồng Văn) là một cao nguyên đá trải rộng trên bốn huyện Quản Bạ, Yên Minh, Đồng Văn, Mèo Vạc của tỉnh Hà Giang, Việt Nam. Ngày 3 tháng 10 năm 2010, hồ sơ "Công viên Địa chất Cao nguyên đá Đồng Văn" đã được Hội đồng tư vấn Mạng lưới Công viên Địa chất Toàn cầu (GGN) của UNESCO chính thức công nhận là Công viên địa chất toàn cầu. Vào thời điểm đó, đây hiện là danh hiệu duy nhất ở Việt Nam và thứ hai ở Đông Nam Á.', N'./asserts/img/dongvan1.jpg', N'./asserts/img/dongvan2.jpg', N'2 ngày 1 đêm', 1500000)
INSERT [dbo].[Tour] ([id], [name], [destination_id], [description1], [description2], [img1], [img2], [time], [price]) VALUES (5, N'Sông Nho Quế', 3, N'Thành phố Hà Giang - Mã Pì Lèng - Sông Nho Quế', N'Sông Nho Quế là một phụ lưu của sông Gâm. Sông bắt nguồn từ Trung Quốc có tên Nán lì hé (sông Nam Lợi) hoặc  Pǔ méi hé (sông Phổ Mai), khi chảy vào Việt Nam thì tạo ra một đoạn là biên giới Việt-Trung ở vùng cực bắc đất nước tại xã Lũng Cú và Má Lé, huyện Đồng Văn, sau đó vào nội địa tỉnh Hà Giang ', N'./asserts/img/nhoque1.jpg', N'./asserts/img/nhoque2.jpg', N'2 ngày 1 đêm', 1500000)
INSERT [dbo].[Tour] ([id], [name], [destination_id], [description1], [description2], [img1], [img2], [time], [price]) VALUES (7, N'Mèo Vạc', 3, N'Thành phố Hà Giang - Thị trấn Mèo Vạc', N'Mèo Vạc là thị trấn huyện lỵ của huyện Mèo Vạc, tỉnh Hà Giang, Việt Nam. Thị trấn Mèo Vạc có diện tích 17 km², dân số năm 2019 là 6.850 người, mật độ dân số đạt 403 người/km².', N'./asserts/img/meovac1.jpg', N'./asserts/img/meovac2.jpg', N'2 ngày 1 đêm', 2000000)
INSERT [dbo].[Tour] ([id], [name], [destination_id], [description1], [description2], [img1], [img2], [time], [price]) VALUES (11, N'Vinpearl Cửa Sót', 2, N'Thành phố Hà Tĩnh - Biển Thạch Bằng - Vinpearl Cửa Sót', N'Khu du lịch nghỉ dưỡng 5 sao Vinpearl Cửa Sót Hà Tĩnh còn có tên gọi khác là Vinpearl Discovery Hà Tĩnh. Đây là điểm đến lý tưởng của du khách khi có dịp đến với mảnh đất miền Trung. ', N'./asserts/img/vinpearl1.jpg', N'./asserts/img/vinpearl2.jpg', N'2 ngày 1 đêm', 1500000)
INSERT [dbo].[Tour] ([id], [name], [destination_id], [description1], [description2], [img1], [img2], [time], [price]) VALUES (12, N'Thiên Cầm', 2, N'Thành phố Hà Tĩnh - Hồ Kẻ Gỗ - Biển Thiên Cầm', N'Bãi biển Thiên Cầm là một bãi biển thuộc huyện Cẩm Xuyên, tỉnh Hà Tĩnh. Vào thời Vua Hùng thứ 13, qua đây nghe gió, sóng biển và tiếng lá thông reo cùng dội vào vách núi tạo nên một bản nhạc du dương, ngỡ như tiên gẩy đàn. Nhà Vua lệnh cho quần thần leo lên núi thấy giống chiếc đàn tỳ bà, liền hạ bút phê ba chữ Thiên Cầm Sơn. "Thiên cầm" có nghĩa là "đàn trời". ', N'./asserts/img/thiencam1.jpg', N'./asserts/img/thiencam2.jpg', N'2 ngày 1 đêm', 1000000)
INSERT [dbo].[Tour] ([id], [name], [destination_id], [description1], [description2], [img1], [img2], [time], [price]) VALUES (13, N'Phố cổ Hà Nội', 1, N'Phố Cổ Hà Nôi - Hồ Hoàn Kiếm - Cầu Long Biên', N'Khu phố cổ Hà Nội là tên gọi thông thường của một khu vực đô thị có từ lâu đời của Hà Nội nằm ở ngoài hoàng thành Thăng Long. Khu đô thị này tập trung dân cư hoạt động tiểu thủ công nghiệp và buôn bán giao thương, hình thành lên những phố nghề đặc trưng, mang những nét truyền thống riêng biệt của cư dân thành thị, kinh đô. Ngày nay khu phố cổ Hà Nội là điểm đến hấp dẫn cho những ai muốn tìm hiểu về Thăng Long - Đông Đô - Hà Nội.', N'./asserts/img/phoco1.jpg', N'./asserts/img/phoco2.jpg', N'2 ngày 1 đêm', 2000000)
INSERT [dbo].[Tour] ([id], [name], [destination_id], [description1], [description2], [img1], [img2], [time], [price]) VALUES (15, N'Lăng Bác', 1, N'Thành phố Hà Nội - Lăng Bác', N'Lăng Chủ tịch Hồ Chí Minh, còn gọi là Lăng Hồ Chủ tịch, Lăng Bác, là nơi gìn giữ thi hài Hồ Chí Minh. Lăng được chính thức khởi công ngày 2 tháng 9 năm 1973, tại vị trí của lễ đài cũ giữa Quảng trường Ba Đình, nơi Hồ Chí Minh từng chủ trì các cuộc meeting. Lăng được khánh thành vào ngày 29 tháng 8 năm 1975. Ở mặt chính có dòng chữ: "CHỦ TỊCH HỒ-CHÍ-MINH" bằng đá hồng màu mận chín. Xung quanh lăng là các khu vườn nơi hơn 250 loài thực vật được trồng từ khắp mọi miền của Việt Nam.', N'./asserts/img/langbac1.jpg', N'./asserts/img/langbac2.jpg', N'2 ngày 1 đêm', 1000000)
INSERT [dbo].[Tour] ([id], [name], [destination_id], [description1], [description2], [img1], [img2], [time], [price]) VALUES (16, N'Mỹ Sơn', 6, N'Thành phố Hội An - Thánh địa Mỹ Sơn', N'Thánh địa Mỹ Sơn thuộc xã Duy Phú, huyện Duy Xuyên, tỉnh Quảng Nam, cách thành phố Đà Nẵng khoảng 69 km và gần thành cổ Trà Kiệu, bao gồm nhiều đền đài Chăm Pa, trong một thung lũng đường kính khoảng 2 km, bao quanh bởi đồi núi. Đây từng là nơi tổ chức cúng tế của vương triều Chăm Pa. Thánh địa Mỹ Sơn được coi là một trong những trung tâm đền đài chính của Ấn Độ giáo ở khu vực Đông Nam Á và là di sản duy nhất của thể loại này tại Việt Nam.', N'./asserts/img/myson1.jpg', N'./asserts/img/myson2.jpg', N'2 ngày 1 đêm', 1000000)
INSERT [dbo].[Tour] ([id], [name], [destination_id], [description1], [description2], [img1], [img2], [time], [price]) VALUES (17, N'Hạ Long', 5, N'Thành phố Hạ Long - Vịnh Hạ Long', N'Vịnh Hạ Long là một vịnh nhỏ thuộc phần bờ tây vịnh Bắc Bộ tại khu vực biển Đông Bắc Việt Nam, bao gồm vùng biển đảo của thành phố Hạ Long thuộc tỉnh Quảng Ninh.', N'./asserts/img/halong1.jpg', N'./asserts/img/halong2.jpg', N'2 ngày 1 đêm', 2500000)
INSERT [dbo].[Tour] ([id], [name], [destination_id], [description1], [description2], [img1], [img2], [time], [price]) VALUES (19, N'Quảng Trường Lâm Viên', 4, N'Thành phố Đà Lạt - Quảng trường Lâm Viên - chợ Đà Lạt', N'Quảng trường Lâm Viên là quảng trường nằm ở đường Trần Quốc Toản, đối diện hồ Xuân Hương, Phường 10, trung tâm thành phố Đà Lạt, tỉnh Lâm Đồng. Quảng trường có tên gọi khác là Trung tâm Đà Lạt, được đặt tên Lâm Viên dựa trên vị trí địa lý của thành phố, nằm trên cao nguyên Lâm Viên (cao nguyên Lang Biang), cũng như vùng đất từng gọi là tỉnh Lâm Viên.', N'./asserts/img/quangtruong1.jpg', N'./asserts/img/quangtruong2.jpg', N'2 ngày 1 đêm', 1500000)
INSERT [dbo].[Tour] ([id], [name], [destination_id], [description1], [description2], [img1], [img2], [time], [price]) VALUES (20, N'Hội An', 6, N'Thành phố Hội An - Khu di tích phố cổ Hội An ', N'Phố cổ Hội An là một đô thị cổ nằm ở hạ lưu sông Thu Bồn, thuộc vùng đồng bằng ven biển tỉnh Quảng Nam, Việt Nam, cách thành phố Đà Nẵng khoảng 30 km về phía Nam. Nhờ những yếu tố địa lý và khí hậu thuận lợi, Hội An từng là một thương cảng quốc tế sầm uất, nơi gặp gỡ của những thuyền buôn Nhật Bản, Trung Quốc và phương Tây trong suốt thế kỷ XVII và XVIII. Trước thời kỳ này, nơi đây cũng từng có những dấu tích của thương cảng Chăm Pa hay được nhắc đến cùng con đường tơ lụa trên biển.', N'./asserts/img/hoian1.jpg', N'./asserts/img/hoian2.jpg', N'2 ngày 1 đêm', 1500000)
INSERT [dbo].[Tour] ([id], [name], [destination_id], [description1], [description2], [img1], [img2], [time], [price]) VALUES (21, N'Ba Vì', 1, N'Làng cổ Đường Lâm - Ba Vì', N'Ba Vì là một dãy núi đất và đá vôi trải trên một phạm vi rộng chừng 5000 ha: huyện Ba Vì khoảng 3500 ha, thành phố Hòa Bình tỉnh Hòa Bình khoảng 1500 ha; cách nội thành Hà Nội chừng 60 km; hình dạng như một bó đuốc khổng lồ cán mập. Đây là những dãy núi nhỏ cuối cùng của dãy Hoàng Liên Sơn hùng vĩ khi vượt qua sông Đà và dừng bước trước đồng bằng Bắc Bộ.', N'./asserts/img/bavi1.jpg', N'./asserts/img/bavi2.jpg', N'2 ngày 1 đêm', 1500000)
INSERT [dbo].[Tour] ([id], [name], [destination_id], [description1], [description2], [img1], [img2], [time], [price]) VALUES (22, N'Ngã Ba Đồng Lộc', 2, N'Ngã Ba Đồng Lộc - chùa Hương Tích', N'Ngã ba Đồng Lộc là di tích lịch sử gắn liền với việc 10 nữ thanh niên xung phong hi sinh trong chiến tranh Việt Nam trong một trận oanh tạc của Không lực Hoa Kỳ tại nơi đây. Đây là một trong những điểm giao thông quan trọng trong chiến tranh. Nơi đây có một tiểu đội thanh niên xung phong có nhiệm vụ canh giữ giao điểm, phá bom và sửa đường thông xe khi bị bom phá. Tiểu đội 4, Đại đội 552  gồm 10 cô gái trẻ, tuổi từ 17 đến 24.Trưa ngày 24 tháng 7 năm 1968, như mọi ngày 10 cô ra làm nhiệm vụ. Vào 16h30'', trận bom thứ 15 trong ngày dội xuống Đồng Lộc. Một trong số những quả bom đã rơi xuống ngay sát miệng hầm, nơi các cô đang tránh bom. Tất cả đã qua đời khi tuổi đời còn rất trẻ, phần lớn trong số họ chưa lấy chồng.', N'./asserts/img/bavi1.jpg', N'./asserts/img/bavi2.jpg', N'2 ngày 1 đêm', 1000000)
SET IDENTITY_INSERT [dbo].[Tour] OFF
/****** Object:  Table [dbo].[Cart]    Script Date: 04/02/2022 21:48:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[tour_id] [int] NOT NULL,
	[date_from] [date] NOT NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON
INSERT [dbo].[Cart] ([id], [username], [tour_id], [date_from], [quantity]) VALUES (10, N'HE153071', 17, CAST(0x2D430B00 AS Date), 1)
INSERT [dbo].[Cart] ([id], [username], [tour_id], [date_from], [quantity]) VALUES (21, N'thaitran11', 21, CAST(0x37430B00 AS Date), 1)
INSERT [dbo].[Cart] ([id], [username], [tour_id], [date_from], [quantity]) VALUES (27, N'admin1', 11, CAST(0x93430B00 AS Date), 3)
SET IDENTITY_INSERT [dbo].[Cart] OFF
/****** Object:  ForeignKey [FK__Tour__destinatio__0519C6AF]    Script Date: 04/02/2022 21:48:54 ******/
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD FOREIGN KEY([destination_id])
REFERENCES [dbo].[Destination] ([id])
GO
/****** Object:  ForeignKey [FK__Cart__tour_id__2B3F6F97]    Script Date: 04/02/2022 21:48:54 ******/
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([tour_id])
REFERENCES [dbo].[Tour] ([id])
GO
/****** Object:  ForeignKey [FK__Cart__username__2A4B4B5E]    Script Date: 04/02/2022 21:48:54 ******/
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
