CREATE DATABASE [NestSongAn]
GO
ALTER DATABASE [NestSongAn] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NestSongAn] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NestSongAn] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NestSongAn] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NestSongAn] SET ARITHABORT OFF 
GO
ALTER DATABASE [NestSongAn] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NestSongAn] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NestSongAn] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NestSongAn] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NestSongAn] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NestSongAn] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NestSongAn] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NestSongAn] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NestSongAn] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NestSongAn] SET  ENABLE_BROKER 
GO
ALTER DATABASE [NestSongAn] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NestSongAn] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NestSongAn] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NestSongAn] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NestSongAn] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NestSongAn] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NestSongAn] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NestSongAn] SET RECOVERY FULL 
GO
ALTER DATABASE [NestSongAn] SET  MULTI_USER 
GO
ALTER DATABASE [NestSongAn] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NestSongAn] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NestSongAn] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NestSongAn] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NestSongAn] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NestSongAn] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'NestSongAn', N'ON'
GO
ALTER DATABASE [NestSongAn] SET QUERY_STORE = OFF
GO
USE [NestSongAn]
GO
/****** Object:  Table [dbo].[category]    Script Date: 11/17/2022 2:00:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[categoryId] [nvarchar](50) NOT NULL,
	[categoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 11/17/2022 2:00:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[commentId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_comment] PRIMARY KEY CLUSTERED 
(
	[commentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contacts]    Script Date: 11/17/2022 2:00:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacts](
	[contactId] [int] IDENTITY(1,1) NOT NULL,
	[senderName] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](12) NOT NULL,
	[status] [bit] NOT NULL,
	[contactContent] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_contacts] PRIMARY KEY CLUSTERED 
(
	[contactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderDetails]    Script Date: 11/17/2022 2:00:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderDetails](
	[orderDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [int] NOT NULL,
	[orderId] [int] NOT NULL,
 CONSTRAINT [PK_orderDetails] PRIMARY KEY CLUSTERED 
(
	[orderDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 11/17/2022 2:00:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[date] [nvarchar](50) NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[userId] [int] NOT NULL,
	[Reciever] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](12) NOT NULL,
	[total] [int] NOT NULL,
	[shippingfee] [int] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post]    Script Date: 11/17/2022 2:00:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[postId] [int] IDENTITY(1,1) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[postContent] [nvarchar](max) NOT NULL,
	[postTitle] [nvarchar](50) NOT NULL,
	[category] [nvarchar](50) NOT NULL,
	[dateUpload] [datetime] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_post] PRIMARY KEY CLUSTERED 
(
	[postId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[price]    Script Date: 11/17/2022 2:00:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[price](
	[priceid] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NOT NULL,
	[price] [int] NOT NULL,
	[dateChange] [nvarchar](max) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_price] PRIMARY KEY CLUSTERED 
(
	[priceid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 11/17/2022 2:00:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[productId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[quantity] [int] NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[categoryId] [nvarchar](50) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 11/17/2022 2:00:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[roleId] [nvarchar](50) NOT NULL,
	[roleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 11/17/2022 2:00:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[address] [nvarchar](max) NULL,
	[phone] [nvarchar](12) NULL,
	[email] [nvarchar](50) NULL,
	[fullName] [nvarchar](50) NULL,
	[roleId] [nvarchar](50) NULL,
 CONSTRAINT [PK_user_1] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[category] ([categoryId], [categoryName]) VALUES (N'C01', N'Yến đảo thô nguyên tổ')
INSERT [dbo].[category] ([categoryId], [categoryName]) VALUES (N'C02', N'Yến đảo tinh chế')
INSERT [dbo].[category] ([categoryId], [categoryName]) VALUES (N'C03', N'Nước Yến')
INSERT [dbo].[category] ([categoryId], [categoryName]) VALUES (N'C04', N'Bánh Yến sào')
INSERT [dbo].[category] ([categoryId], [categoryName]) VALUES (N'C05', N'Yến chưng')
GO
SET IDENTITY_INSERT [dbo].[comment] ON 

INSERT [dbo].[comment] ([commentId], [userId], [productId], [Comment], [status]) VALUES (1, 2, 1, N'ngon lắm tuyệt vời ', 1)
SET IDENTITY_INSERT [dbo].[comment] OFF
GO
SET IDENTITY_INSERT [dbo].[contacts] ON 

INSERT [dbo].[contacts] ([contactId], [senderName], [email], [phone], [status], [contactContent]) VALUES (1, N'An', N'duylk@fpt.edu', N'0378873547', 1, N'áº¥cdvcd')
SET IDENTITY_INSERT [dbo].[contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[orderDetails] ON 

INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (1, 1, 6, 2730000, 1)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (2, 3, 3, 2730000, 1)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (3, 1, 3, 2730000, 2)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (4, 25, 10, 2730000, 2)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (5, 26, 4, 2730000, 2)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (6, 12, 10, 2730000, 2)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (7, 3, 6, 2730000, 3)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (8, 5, 10, 2730000, 3)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (9, 14, 4, 2730000, 3)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (10, 2, 4, 2730000, 4)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (11, 3, 5, 2730000, 4)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (12, 14, 4, 2730000, 4)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (13, 1, 4, 2730000, 5)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (14, 12, 4, 2730000, 5)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (15, 14, 4, 2730000, 5)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (16, 6, 4, 2730000, 6)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (17, 9, 6, 2730000, 7)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (18, 3, 5, 2730000, 8)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (19, 6, 4, 2730000, 8)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (20, 3, 1, 2730000, 9)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (21, 3, 1, 2730000, 10)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (22, 3, 1, 2730000, 11)
INSERT [dbo].[orderDetails] ([orderDetailsId], [productId], [quantity], [price], [orderId]) VALUES (24, 2, 1, 800000, 13)
SET IDENTITY_INSERT [dbo].[orderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([orderId], [date], [address], [userId], [Reciever], [phone], [total], [shippingfee], [status]) VALUES (1, N'14/11/2022 09:29 PM', N'HCM', 2, N'Đức Anh', N'0948875638', 27300000, 0, N'Đang chuẩn bị hàng')
INSERT [dbo].[orders] ([orderId], [date], [address], [userId], [Reciever], [phone], [total], [shippingfee], [status]) VALUES (2, N'14/11/2022 09:30 PM', N'HCM', 2, N'Đức Anh', N'0948875638', 73710000, 0, N'Đã hoàn tất')
INSERT [dbo].[orders] ([orderId], [date], [address], [userId], [Reciever], [phone], [total], [shippingfee], [status]) VALUES (3, N'14/11/2022 09:33 PM', N'USA', 5, N'Taylor Swift', N'0919193939', 54600000, 546000, N'Đang vận chuyển')
INSERT [dbo].[orders] ([orderId], [date], [address], [userId], [Reciever], [phone], [total], [shippingfee], [status]) VALUES (4, N'14/11/2022 09:34 PM', N'26/11, Quận Bình Thạnh, TP HCM', 6, N'Duy', N'0917736653', 35490000, 0, N'Đang chuẩn bị hàng')
INSERT [dbo].[orders] ([orderId], [date], [address], [userId], [Reciever], [phone], [total], [shippingfee], [status]) VALUES (5, N'14/11/2022 09:35 PM', N'Korea', 7, N'DRX vô địch', N'0988838848', 32760000, 0, N'Đã hoàn tất')
INSERT [dbo].[orders] ([orderId], [date], [address], [userId], [Reciever], [phone], [total], [shippingfee], [status]) VALUES (6, N'14/11/2022 09:37 PM', N'Việt Nam', 8, N'Hảo Hảo', N'0939937823', 10920000, 0, N'Đang chuẩn bị hàng')
INSERT [dbo].[orders] ([orderId], [date], [address], [userId], [Reciever], [phone], [total], [shippingfee], [status]) VALUES (7, N'14/11/2022 09:39 PM', N'246/11, Lò Lu, Long Trường, Quận 9, TP HCM', 9, N'Huyền', N'0948872374', 16380000, 0, N'Đang chuẩn bị hàng')
INSERT [dbo].[orders] ([orderId], [date], [address], [userId], [Reciever], [phone], [total], [shippingfee], [status]) VALUES (8, N'14/11/2022 09:40 PM', N'203, Einstein St, California, United Stated', 10, N'Lisa Beck', N'0938881123', 24570000, 0, N'Đang chuẩn bị hàng')
INSERT [dbo].[orders] ([orderId], [date], [address], [userId], [Reciever], [phone], [total], [shippingfee], [status]) VALUES (9, N'16/11/2022 09:17 PM', N'90 NTT P13 Q4 Tp.HCm', 11, N'Hoàng ', N'03788777777', 2730000, 273000, N'Đã hoàn tất')
INSERT [dbo].[orders] ([orderId], [date], [address], [userId], [Reciever], [phone], [total], [shippingfee], [status]) VALUES (10, N'16/11/2022 09:18 PM', N'90 NTT P13 Q4 Tp.HCm', 1, N'duy', N'03788777777', 2730000, 0, N'Đang chuẩn bị hàng')
INSERT [dbo].[orders] ([orderId], [date], [address], [userId], [Reciever], [phone], [total], [shippingfee], [status]) VALUES (11, N'16/11/2022 09:33 PM', N'HCM', 2, N'Đức Anh', N'0909092332', 2730000, 0, N'Đang chuẩn bị hàng')
INSERT [dbo].[orders] ([orderId], [date], [address], [userId], [Reciever], [phone], [total], [shippingfee], [status]) VALUES (13, N'17/11/2022 01:12 AM', N'HCM', 2, N'Đức Anh', N'0909092332', 800000, 0, N'Đang chuẩn bị hàng')
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[post] ON 

INSERT [dbo].[post] ([postId], [image], [postContent], [postTitle], [category], [dateUpload], [status]) VALUES (1, N'images\category-02.jpg', N'<p><b>Yến sào là một thực phẩm giàu chất dinh dưỡng và có nhiều công dụng tuyệt vời. Có nên cho trẻ ăn yến hay trẻ em ăn yến có tốt không là những thắc mắc phổ biến khi cha mẹ có ý định nấu yến sào cho bé bồi bổ.</b></p><p><span style="font-weight:400">Những thông tin trong bài viết dưới đây của Hello Bacsi sẽ giải đáp cho bạn những thắc mắc xoay quanh việc nấu yến sào cho bé, chẳng hạn như trẻ em ăn yến có tốt không hay trẻ mấy tuổi ăn được yến.</span></p><h2><b>Giải đáp thắc mắc: Trẻ em ăn yến có tốt không?</b></h2><p><span style="font-weight:400">Việc cho bé ăn yến sào là một trong những cách bổ sung dưỡng chất tuyệt vời giúp trẻ phát triển toàn diện. Dưới đây là những lợi ích khi cho bé ăn yến sào:</span></p><h3><b>1. Bổ sung yến sào cho bé giúp thúc đẩy sự phát triển trí tuệ</b></h3><p><span sytle="font-weight:400">Tổ yến chứa phenylalanine, magie, kẽm, đồng… có công dụng tăng cường trí nhớ, bồi bổ trí não, ổn định hệ thần kinh, hỗ trợ sự phát triển trí não của bé và ngăn ngừa các triệu chứng thần kinh. Việc bổ sung yến sào cho bé giúp phát triển trí não lâu dài, hình thành tư duy tích cực và cải thiện trí nhớ. Đối với trẻ nhỏ đang bước vào giai đoạn học tập và phải đối mặt với bài kiểm tra hoặc kỳ thi, đó có thể là một gánh nặng cho não bộ. Tin vui là axit amin có trong tổ yến có thể tác động lên não, rất có lợi để cải thiện trí não.</spand></p>', N'Yến sào cho bé: Trẻ em ăn yến có tốt không?', N'C04', CAST(N'2022-11-14T21:21:57.570' AS DateTime), 1)
INSERT [dbo].[post] ([postId], [image], [postContent], [postTitle], [category], [dateUpload], [status]) VALUES (2, N'images\category-03.jpg', N'<h1>Giới thiệu về tổ yến đảo tinh chế</h1><p>Tổ yến đảo l&agrave; tổ yến được t&igrave;m thấy tr&ecirc;n v&aacute;ch đ&aacute; ngo&agrave;i đảo, nơi hang động tr&ecirc;n đảo chim yến sinh sống, c&oacute; độ cao tr&ecirc;n 2800m so với mực nước biển. Do đ&oacute;, việc khai th&aacute;c tổ yến (c&ograve;n gọi l&agrave; tổ yến đảo) rất kh&oacute; khăn, nguy hiểm đ&acirc;y cũng l&agrave; nguy&ecirc;n nh&acirc;n ch&iacute;nh khiến yến s&agrave;o tự nhi&ecirc;n c&oacute; gi&aacute; v&ocirc; c&ugrave;ng đắt đỏ.</p><p>Tổ yến đảo thi&ecirc;n nhi&ecirc;n Kh&aacute;nh H&ograve;a sau khi thu hoạch được l&agrave;m sạch l&ocirc;ng, tạp chất b&aacute;m tr&ecirc;n bề mặt v&agrave; được đ&oacute;ng hộp với nhiều định lượng kh&aacute;c nhau, ph&ugrave; hợp với nhu cầu của người ti&ecirc;u d&ugrave;ng. V&agrave; kh&ocirc;ng phải người ti&ecirc;u d&ugrave;ng n&agrave;o cũng hiểu hết được c&aacute;ch thưởng thức m&oacute;n ăn n&agrave;y, đa phần vẫn c&ograve;n quan niệm, ăn yến để thưởng thức, l&acirc;u l&acirc;u mới sử dụng một lần. Điều n&agrave;y khiến yến s&agrave;o kh&ocirc;ng ph&aacute;t huy được hết t&iacute;nh bổ dưỡng, c&ocirc;ng dụng tuyệt vời của n&oacute;.</p><p>Tổ của ch&uacute;ng được x&acirc;y theo h&igrave;nh dạng như nửa chiếc b&aacute;t với kết cấu gồm nhiều sợi tơ được dệt bằng nước bọt của chim yến v&agrave; bện v&agrave;o nhau.<br /><br /><img alt="" src="https://vuayen.vn/wp-content/uploads/2019/05/t%E1%BB%95-y%E1%BA%BFn-%C4%91%E1%BA%A3o-th%C6%B0%E1%BB%A3ng-h%E1%BA%A1ng-2.jpg" style="height:390px; width:540px" /></p><h1>Tổ Yến Tinh Chế</h1><p>Yến tổ tinh chế l&agrave; sản phẩm đ&atilde; được l&agrave;m sạch kh&ocirc;ng c&ograve;n l&ocirc;ng, bụi bẩn, sạch ho&agrave;n to&agrave;n v&agrave; tinh chế th&agrave;nh sợi từ yến tổ. Sản phẩm kh&ocirc;ng sử dụng hương liệu, h&oacute;a chất, v&agrave; chất bảo quản. V&igrave; vậy, sản phẩm lu&ocirc;n giữ được gi&aacute; trị bổ dưỡng với hương vị đặc trưng tự nhi&ecirc;n của tổ yến. Khi sử dụng, kh&aacute;ch h&agrave;ng kh&ocirc;ng phải l&agrave;m sạch lại nữa, chỉ ng&acirc;m nước cho nở ra v&agrave; đưa v&agrave;o chế biến.</p><p>Tổ Yến S&agrave;o Đảo Tinh Chế Đặc Biệt đ&atilde; được r&uacute;t l&ocirc;ng v&agrave; l&agrave;m sạch ho&agrave;n to&agrave;n từ tổ yến trắng, vẫn c&ograve;n sợi yến, rất đẹp. Qu&aacute; tr&igrave;nh tinh chế được thực hiện ho&agrave;n to&agrave;n thủ c&ocirc;ng, kh&ocirc;ng d&iacute;nh tạp chất, h&oacute;a chất n&ecirc;n vẫn giữ nguy&ecirc;n chất lượng sản phẩm.</p><p>Dễ d&agrave;ng nhận biết yến tinh chế c&oacute; m&agrave;u trắng đục, tai yến xốp, sợi yến th&ocirc;, sần s&ugrave;i. Yến tinh chế ho&agrave;n to&agrave;n sạch sẽ n&ecirc;n rất tiện sử dụng. Khi sử dụng đưa v&agrave;o chế biến ngay kh&ocirc;ng cần nhặt l&ocirc;ng</p><h1>C&ocirc;ng Dụng Yến S&agrave;o.</h1><p>Nhờ v&agrave;o nguồn gốc địa h&oacute;a, th&agrave;nh phần h&oacute;a học, kho&aacute;ng vật phong ph&uacute; ở c&aacute;c hang yến,chỉ c&oacute; một số hang đảo thi&ecirc;n nhi&ecirc;n ở Kh&aacute;nh H&ograve;a mới c&oacute; tổ yến huyết, yến hồng với h&agrave;m lượng dinh dưỡng rất cao, yến s&agrave;o Kh&aacute;nh H&ograve;a c&oacute; gi&aacute; trị dinh dưỡng đặc biệt cao v&agrave; m&ugrave;i vị đặc trưng của tổ yến đảo thi&ecirc;n nhi&ecirc;n.</p><p><img alt="" src="https://vuayen.vn/wp-content/uploads/2019/05/t%E1%BB%95-y%E1%BA%BFn-%C4%91%E1%BA%A3o-th%C6%B0%E1%BB%A3ng-h%E1%BA%A1ng-3.jpg" style="height:720px; width:540px" /></p><h1>Hướng dẫn sử dụng tổ yến.</h1><p>Cho sản phẩm tổ yến đ&atilde; rửa sạch v&agrave;o một ch&eacute;n con, đổ đầy nước đun s&ocirc;i để nguội. Sau đ&oacute; chưng c&aacute;ch thủy tr&ecirc;n lửa nhỏ khoảng 20p cho đến khi sợi yến trở n&ecirc;n trong vắt. Sau đ&oacute; cho đường ph&egrave;n v&agrave; n&ecirc;m cho vừa khẩu vị mỗi người. Bạn c&oacute; thể cho th&ecirc;m hạt sen, t&aacute;o đỏ, hoặc long nh&atilde;n để tăng th&ecirc;m hương vị cho m&oacute;n yến chưng.</p><p>Yến s&agrave;o l&agrave; m&oacute;n ăn v&ocirc; c&ugrave;ng bổ dưỡng. Bạn c&oacute; thể chế biến yến s&agrave;o th&agrave;nh nhiều m&oacute;n kh&aacute;c nhau như yến chưng đường ph&egrave;n, canh yến, ch&aacute;o yến.</p><p>Đối với ch&aacute;o yến bạn chỉ cần nấu ch&aacute;o ch&iacute;n sau đ&oacute; cho yến đ&atilde; l&agrave;m sạch v&agrave;o đun th&ecirc;m 5 ph&uacute;t l&agrave; bắc ra ăn.</p><p>Mỗi tuần chỉ cần ăn 1-2 lần v&igrave; ến s&agrave;o chứa rất nhiều chất dinh dưỡng, do đ&oacute; kh&ocirc;ng n&ecirc;n ăn qu&aacute; nhiều.</p><p>Phần yến c&ograve;n lại n&ecirc;n đạy k&iacute;n trọng hộp nhựa, hoặc t&uacute;i, bảo quản nơi khố r&aacute;o, tho&aacute;ng m&aacute;t. Trong m&ocirc;i trường k&iacute;n th&ocirc;ng thường tổ yến c&oacute; thể giữ được 3-5 năm.</p><h1>Đối tượng sử dụng.</h1><p>Người bệnh: d&ugrave;ng tối đa 5 gr yến/ng&agrave;y. N&ecirc;n chia l&agrave;m nhiều lần ăn trong ng&agrave;y. Ăn li&ecirc;n tục h&agrave;ng ng&agrave;y trong th&aacute;ng đầu ti&ecirc;n.</p><p>Đối với trẻ em dưới 3 tuổi: n&ecirc;n sử dụng 1 đến1.5gram yến s&agrave;o/lần ăn, 1 tuần sử dụng 3 lần.</p><p>Trẻ từ 3-10 tuổi n&ecirc;n sử dụng 1.5 đến 2gram yến s&agrave;o/lần ăn. 1 tuần n&ecirc;n sử dụng 3-4 lần. 100gr sử dụng được trong 4-6 th&aacute;ng.</p><p>Người lớn: 2-3gr yến s&agrave;o /lần ăn, tuần 3-4 lần sử dụng. 100gr yến s&agrave;o sử dụng trong 2-4 th&aacute;ng.</p><p><img alt="" src="https://vuayen.vn/wp-content/uploads/2019/05/T%E1%BB%94-Y%E1%BA%BEN-V%E1%BB%A4N-7.jpg" style="height:346px; width:497px" /></p><p>&nbsp;</p>', N'Tổ yến đảo tinh chế', N'C02', CAST(N'2022-11-14T21:21:57.573' AS DateTime), 1)
INSERT [dbo].[post] ([postId], [image], [postContent], [postTitle], [category], [dateUpload], [status]) VALUES (3, N'https://i.ytimg.com/vi/jReRkyByuLs/maxresdefault.j', N'<h2><strong>Yến s&agrave;o c&oacute; t&aacute;c dụng g&igrave; đối với b&eacute; 1 tuổi?</strong></h2>

<p>Yến s&agrave;o l&agrave; nước d&atilde;i của chim yến nhả ra để l&agrave;m tổ. Tổ yến ở tr&ecirc;n cao được khai th&aacute;c bằng s&agrave;o n&ecirc;n gọi l&agrave; yến s&agrave;o. Theo nghi&ecirc;n cứu khoa học, tổ yến c&oacute; rất nhiều th&agrave;nh phần dinh dưỡng với h&agrave;m lượng cao. V&igrave; thế, với c&aacute;c b&eacute; 1 tuổi, lứa tuổi đang cần nguồn năng lượng lớn để hoạt động, ph&aacute;t triển tr&iacute; lực v&agrave; thể lực th&igrave; sử dụng yến s&agrave;o th&igrave; v&ocirc; c&ugrave;ng tốt. Một số c&ocirc;ng dụng của yến s&agrave;o đối với sức khỏe c&aacute;c b&eacute; như sau:</p>

<ul>
	<li><em>Tổ yến gi&uacute;p hỗ trợ hấp thu dinh dưỡng:</em>&nbsp;Yến s&agrave;o chứa c&aacute;c loại acid amin c&ugrave;ng nhiều nguy&ecirc;n tố vi lượng qu&yacute; như Crom gi&uacute;p hỗ trợ mạnh mẽ cho hệ ti&ecirc;u h&oacute;a. Ngo&agrave;i ra, yến s&agrave;o c&oacute; chứa Histidine &ndash; hoạt chất c&oacute; gi&aacute; trị trong việc k&iacute;ch th&iacute;ch ti&ecirc;u h&oacute;a hấp thu qua m&agrave;ng ruột.</li>
	<li>Ngo&agrave;i những th&agrave;nh phần dinh dưỡng tr&ecirc;n, yến s&agrave;o c&ograve;n cung cấp một lượng đạm cao, v&agrave;&nbsp; h&agrave;m lượng cao Canxi v&agrave; Sắt&nbsp;<em>gi&uacute;p ph&aacute;t triển xương v&agrave; gi&uacute;p tăng cường khả năng miễn dịch của trẻ</em>. Lượng đường galactose kh&ocirc;ng c&oacute; chất b&eacute;o cũng l&agrave; nguồn cung cấp năng lượng rất tốt cho c&aacute;c b&eacute;.</li>
	<li>Yến s&agrave;o c&oacute; t&aacute;c dụng&nbsp;<em>k&iacute;ch th&iacute;ch v&agrave; th&uacute;c đẩy hệ tuần ho&agrave;n m&aacute;u</em>&nbsp;ho&agrave;n hảo hơn nhờ c&aacute;c vi lượng như sắt, mangan, brom, kẽm,&hellip;. V&agrave; c&ograve;n gi&uacute;p trẻ em&nbsp;<em>ph&aacute;t triển n&atilde;o bộ v&agrave; tr&iacute; tuệ</em>&nbsp;của m&igrave;nh một c&aacute;ch to&agrave;n diện nhất.</li>
	<li>Đặc biệt,&nbsp;<em>cải thiện c&aacute;c t&igrave;nh trạng trẻ bị suy dinh dưỡng, biếng ăn, đ&ecirc;m ngủ kh&ocirc;ng ngon giấc, hay bị c&aacute;c bệnh về phổi, vi&ecirc;m phế quản</em>.</li>
</ul>
', N'Một số lưu ý sử dụng Yến Sào cho bé một tuổi', N'C01', CAST(N'2022-11-17T01:34:25.220' AS DateTime), 0)
INSERT [dbo].[post] ([postId], [image], [postContent], [postTitle], [category], [dateUpload], [status]) VALUES (4, N'https://vuayen.vn/wp-content/uploads/2022/08/Su-dung-yen-sao-cho-be-mot-tuoi-can-chu-y-lieu-luong-phu-hop-vua-yen.jpg', N'<h2><strong>Yến s&agrave;o c&oacute; t&aacute;c dụng g&igrave; đối với b&eacute; 1 tuổi?</strong></h2>

<p>Yến s&agrave;o l&agrave; nước d&atilde;i của chim yến nhả ra để l&agrave;m tổ. Tổ yến ở tr&ecirc;n cao được khai th&aacute;c bằng s&agrave;o n&ecirc;n gọi l&agrave; yến s&agrave;o. Theo nghi&ecirc;n cứu khoa học, tổ yến c&oacute; rất nhiều th&agrave;nh phần dinh dưỡng với h&agrave;m lượng cao. V&igrave; thế, với c&aacute;c b&eacute; 1 tuổi, lứa tuổi đang cần nguồn năng lượng lớn để hoạt động, ph&aacute;t triển tr&iacute; lực v&agrave; thể lực th&igrave; sử dụng yến s&agrave;o th&igrave; v&ocirc; c&ugrave;ng tốt. Một số c&ocirc;ng dụng của yến s&agrave;o đối với sức khỏe c&aacute;c b&eacute; như sau:</p>

<ul>
	<li><em>Tổ yến gi&uacute;p hỗ trợ hấp thu dinh dưỡng:</em>&nbsp;Yến s&agrave;o chứa c&aacute;c loại acid amin c&ugrave;ng nhiều nguy&ecirc;n tố vi lượng qu&yacute; như Crom gi&uacute;p hỗ trợ mạnh mẽ cho hệ ti&ecirc;u h&oacute;a. Ngo&agrave;i ra, yến s&agrave;o c&oacute; chứa Histidine &ndash; hoạt chất c&oacute; gi&aacute; trị trong việc k&iacute;ch th&iacute;ch ti&ecirc;u h&oacute;a hấp thu qua m&agrave;ng ruột.</li>
	<li>Ngo&agrave;i những th&agrave;nh phần dinh dưỡng tr&ecirc;n, yến s&agrave;o c&ograve;n cung cấp một lượng đạm cao, v&agrave;&nbsp; h&agrave;m lượng cao Canxi v&agrave; Sắt&nbsp;<em>gi&uacute;p ph&aacute;t triển xương v&agrave; gi&uacute;p tăng cường khả năng miễn dịch của trẻ</em>. Lượng đường galactose kh&ocirc;ng c&oacute; chất b&eacute;o cũng l&agrave; nguồn cung cấp năng lượng rất tốt cho c&aacute;c b&eacute;.</li>
</ul>
', N'Một số lưu ý sử dụng Yến Sào cho bé một tuổi', N'C01', CAST(N'2022-11-17T01:49:14.520' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[post] OFF
GO
SET IDENTITY_INSERT [dbo].[price] ON 

INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (1, 1, 700000, N'17/11/2022 01:17 AM', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (2, 2, 800000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (3, 3, 1160000, N'28/09/2002', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (5, 5, 1100000, N'28/092022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (6, 6, 999999, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (7, 9, 600000, N'28/092022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (8, 11, 1000000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (9, 12, 2100000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (10, 14, 2730000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (11, 16, 830000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (12, 17, 830000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (13, 18, 800000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (14, 23, 500000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (15, 25, 1600000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (16, 26, 1199000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (17, 28, 1099000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (18, 29, 899000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (19, 30, 699000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (20, 31, 2730000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (21, 32, 699000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (22, 33, 1000000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (23, 34, 2000000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (24, 35, 460000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (25, 36, 800000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (26, 37, 800000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (27, 38, 900000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (28, 39, 600000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (29, 40, 800000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (30, 41, 599999, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (31, 42, 999999, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (32, 43, 899000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (33, 44, 1199000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (36, 46, 2730000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (37, 47, 3000000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (38, 48, 2730000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (39, 49, 900000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (40, 54, 799000, N'28/09/2022', 1)
INSERT [dbo].[price] ([priceid], [productId], [price], [dateChange], [status]) VALUES (41, 55, 2730000, N'28/09/2022', 1)
SET IDENTITY_INSERT [dbo].[price] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (1, N'Yến huyết đảo thiên nhiên 100G', 100, N'Yến huyết đảo yến thiên nhiên nguyên tổ là tổ yến có màu đỏ tự nhiên. Sản phẩm Yến huyết đảo yến thiên nhiên nguyên tổ hộp 100g - MS 024 có giá trị dinh dưỡng rất cao. Nhờ vào nguồn gốc địa hóa, thành phần hóa học và khoáng vật phong phú tại những vách đá cheo leo hiểm trở, hang động dưới chân sóng vỗ quanh năm là nền tảng làm phong phú nguyên tố đa vi lượng trong tổ yến, tạo nên giá trị dinh dưỡng đặc biệt cao và mùi vị đặc trưng của tổ yến đảo thiên nhiên. Đặc biệt, chỉ có một số hang đảo thiên nhiên tại các đảo yến Khánh Hòa mới có tổ yến huyết. ', N'C01', N'https://product.hstatic.net/1000162626/product/yskh_024_1024x1024.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (2, N'Yến hồng đảo yến thiên nhiên 100G', 95, N'Sản phẩm Yến hồng đảo yến thiên nhiên Khánh Hòa hộp 100g (mã số: 026), bao gồm những tổ yến hồng còn nguyên tổ, màu hồng nhạt có giá trị dinh dưỡng cao. Đặc biệt, chỉ có một số hang đảo thiên nhiên tại các đảo yến Khánh Hòa có tổ yến hồng.', N'C01', N'https://product.hstatic.net/1000162626/product/yskh_026_1024x1024.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (3, N'Yến sào đảo yến thiên nhiên 100G', 78, N'Yến sào đảo yến thiên nhiên Khánh Hòa (nguyên tổ) hộp TP2-100g còn gọi là Yến Thiên: là tổ yến còn nguyên, khoảng từ 15 đến 16 tổ yến/100g. Tổ yến có màu trắng theo thuộc tính tổ yến đảo thiên nhiên.', N'C01', N'https://product.hstatic.net/1000162626/product/yskh_tp2_1024x1024.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (5, N'Yến sào đảo thiên nhiên tinh chế 100G', 90, N'Sản phẩm Yến sào đảo yến thiên nhiên tinh chế hộp 100g có mã sản phẩm 014 với trọng lượng yến 100g.

Yến sào đảo yến thiên nhiên tinh chế là sản phẩm đã được làm sạch hoàn toàn từ yến đảo thiên nhiên Khánh Hòa, do Công ty Yến sào Khánh Hoà trực tiếp quản lý, khai thác, chế biến. Khi sử dụng, khách hàng đưa ngay vào chế biến, không cần phải làm sạch lại.', N'C02', N'https://product.hstatic.net/1000162626/product/yskh_014_1024x1024.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (6, N'Yến Đá (Đảo) Tinh Chế Thương Hạng 50G', 92, N'Yến sào tinh chế loại 1 (hộp 50g)  được khai thác trực tiếp trên đảo trong các hang đá hoặc vách đá lớn, có chứa hàm lượng chất dinh dưỡng cao hơn gấp nhiều lần so với các loại yến nhà thông thường, vì các tổ yến đảo này được tạo nên khá chắc chắn và chất lượng từ loài chim yến có sức sống mãnh liệt, chịu được sự khắc nghiệt của môi trường trên đảo.', N'C02', N'https://nestvui.com/wp-content/uploads/2022/09/hop-yen-dao-tinh-che-thuong-hang.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (9, N'Yến Đá (Đảo) TINH CHẾ Thượng Hạng Loại 100g', 94, N'Yến đảo thiên nhiên loại 1 là dòng Yến sào cao cấp được khai thác tại các vách núi, hòn đảo thiên nhiên, còn “tinh chế” là mô phỏng dòng yến đã được làm sạch lông và tạp chất 100%. Tổ yến đảo thiên nhiên tinh chế 100g có hàm lượng dinh dưỡng cao hơn Yến nhà nuôi bởi chim Yến đảo sống trong môi trường khắc nghiệt nên chúng luôn chú trọng xây dựng một tổ yến chắc chắn để bảo vệ trứng và con non tốt nhất.

Vì vậy, tổ yến đảo thiên nhiên có kích thước lớn hơn Yến nhà, chân tổ yến chắc chắn, bụng yến dày và thơm nồng vị Yến. ', N'C02', N'https://nestvui.com/wp-content/uploads/2022/09/hop-yen-dao-tinh-che-100g-thuong-hang-1.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (11, N'Huyết Yến TINH CHẾ Cao Cấp 50gr ', 100, N'Huyết yến tinh chế 50g giàu nguyên tố đa – vi lượng, khoáng chất tốt cho sức khỏe người dùng, huyết yến được xem là thực phẩm vàng giúp bổ sung sức khỏe cho người già, người vừa khỏi bệnh, phụ nữ mang thai,… thậm chí người đang giảm cân cũng có thể sử dụng.', N'C02', N'https://nestvui.com/wp-content/uploads/2022/09/hop-huyet-yen-tinh-che.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (12, N'Huyết Yến TINH CHẾ Cao Cấp 100g', 85, N'Huyết yến cao cấp được xem là tuyệt phẩm với hàm lượng dinh dưỡng cực cao, chúng được tìm thấy tại các mỏm đá sâu, giàu khoáng chất, cheo leo, hiểm trở,… Loại tổ yến này chỉ khai thác được trong tự nhiên và rất hiếm gặp, do đó số lượng khá ít và giá tổ yến huyết cũng vô cùng đắc đỏ trên thị trường.

Huyết yến tinh chế 100g được được tinh chế làm sạch lông và tạp chất hoàn toàn với công nghệ hiện đại và được rút lông thủ công đảm bảo hàm lượng dinh dưỡng được giữ nguyên.', N'C02', N'https://nestvui.com/wp-content/uploads/2022/09/hop-to-huyet-yen-tho-100g.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (14, N'Yến Thô Đá (Đảo) Hộp 50g', 88, N'Dòng yến đá cao cấp được khai thác trực tiếp từ vách đá tự nhiên, có chứa hàm lượng chất dinh dưỡng cao hơn gấp nhiều lần so với các tổ yến nuôi nhà, thích hợp cho nhiều đối tượng người dùng từ trẻ em cho đến người lớn, từ người bệnh đến người khoẻ mạnh,….', N'C01', N'https://nestvui.com/wp-content/uploads/2022/09/hop-yen-dao-tho-50g.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (16, N'Yến Thô Đá (Đảo) Hộp 100g', 100, N'Sản phẩm có giá thành rất phải chăng, phù hợp với nhiều đối tượng khách hàng khác nhau. Hiện tại, Nest Vui mới vừa nhập lô hàng chất lượng, với giá rẻ bất ngờ. Một cơ hội cực tốt để khách hàng trải nghiệm yến sào.', N'C01', N'https://nestvui.com/wp-content/uploads/2022/09/hop-yen-huyet-tho-100g-thuong-hang.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (17, N'Nước Yến sào Sanest lọ 70ml, Hộp 8 lọ ', 100, N'Sản phẩm Nước Yến sào Sanest là sản phẩm được chế biến từ nguồn Yến sào đảo thiên nhiên và giữ nguyên tính năng của Yến sào đảo thiên nhiên.', N'C03', N'https://product.hstatic.net/200000073345/product/002h8_084c686f58134b51a16602bda74ee775_1024x1024.png', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (18, N'Yến sào collagen 12 chai', 100, N'Yến sào collagen giúp bổ sung các năng lượng thiết yếu và axit amin, các dưỡng chất từ yến sào và collagen giúp trẻ hóa da, nuôi dưỡng làn da từ sâu bên trong giúp da được khỏe mạnh và mịn màng hơn.', N'C03', N'https://nhansamthinhphat.com/storage/product/2022-07-29/yen-sao-collagen-combo-12-chai-00b-ydxoewgnfcpl-600x600.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (23, N'Nước Yến sào Sanest lọ 70ml, 1 lọ', 100, N'Sản phẩm Nước Yến sào Sanest là sản phẩm được chế biến từ nguồn Yến sào đảo thiên nhiên và giữ nguyên tính năng của Yến sào đảo thiên nhiên.', N'C03', N'https://product.hstatic.net/200000073345/product/002_45b7d6191a6947968319eed60d1bc92a_1024x1024.png', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (25, N'Nước Yến sào Sanest lon 190ml, hộp 6 lon', 90, N'Sản phẩm Nước Yến sào Sanest là sản phẩm được chế biến từ nguồn Yến sào đảo thiên nhiên và giữ nguyên tính năng của Yến sào đảo thiên nhiên.', N'C03', N'https://product.hstatic.net/200000073345/product/001h6_594792176a58497ea563689d7a7b2c3e_1024x1024.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (26, N'Nước Yến sào Sanest lon 190ml', 96, N'Sản phẩm Nước Yến sào Sanest là sản phẩm được chế biến từ nguồn Yến sào đảo thiên nhiên và giữ nguyên tính năng của Yến sào đảo thiên nhiên.', N'C03', N'https://product.hstatic.net/200000073345/product/001_3b23ec68c3c04f35b2e3a2bf8dfeccb3_1024x1024.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (28, N'Sanest lon 190ml, khay/thùng 30 lon', 100, N'Sản phẩm Nước Yến sào Sanest là sản phẩm được chế biến từ nguồn Yến sào đảo thiên nhiên và giữ nguyên tính năng của Yến sào đảo thiên nhiên.', N'C03', N'https://product.hstatic.net/200000073345/product/001k30_a75bb17de9cc4a758c532d60a2464410_1024x1024.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (29, N'Nước Yến sào Sanest lọ Nhân sâm Fucoidan 70ml, Hộp 6 Lọ', 100, N'Sản phẩm Nước Yến sào Sanest là sản phẩm được chế biến từ nguồn Yến sào đảo thiên nhiên và giữ nguyên tính năng của Yến sào đảo thiên nhiên.', N'C03', N'https://product.hstatic.net/200000073345/product/700h6_c45ea581af4841259e8a2762b63dcf91_1024x1024.png', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (30, N'BÁNH YẾN SÀO SANEST CAKE HỘP 12 CÁI', 100, N'Thành phần: Bột mì, Yến sào (2%), Chocolate, Đạm Whey, Chất xơ, Bột năng, Bột bắp, Dầu thực vật tinh luyện, Shortening, Dextrose, Bơ đậu phộng, Chất nhũ hóa Lecithin (322), Chất bảo quản Natri benzoat (211), Chất chống oxy hóa Acid citric (330), Enzym Protease (1101i).', N'C04', N'https://yensaokhanhhoa.com.vn/img/Products/H12-1.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (31, N'BÁNH CAO CẤP YẾN SÀO HỘP 12 CÁI - Không đường', 100, N'hành phần cấu tạo: Yến sào (1,6%), Chocolate, Bột mì, Bột nếp, Bột Protein, Bột Frutafit, Shortening, Dầu thực vật, Đường Dextrose, Bơ đậu phộng, phụ gia thực phẩm: Chất tạo xốp Natri Cacbonat (500i), Chất bảo quản Natri benzoat (211).', N'C04', N'https://cf.shopee.vn/file/61fb46eda4c155bc48a4c6ec48262b28', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (32, N'Bánh Quy Bơ Yến Sào Ycake', 100, N'Bánh rất ngon', N'C04', N'https://media3.scdn.vn/img3/2019/11_21/0fW9PV_simg_de2fe0_500x500_maxb.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (33, N'Kinh Đô Trăng Vàng Black & Gold Hộp Yến Sào 4 bánh', 100, N'Hương vị bên trong của bánh khi kết hợp bào ngư, cua bát bửu, hạnh nhân với yến sào một trong “bát trân” những món quý hiếm chỉ phục vụ thời vua chúa. Yến sào đã quá nổi tiếng về giá trị dinh dưỡng của nó đem lại cho người dùng. Phù hợp dành tặng cho những người bạn yêu thương nhất như ông bà, ba mẹ thể hiện sự quan tâm đến sức khỏe người nhận hoặc cũng có thể dùng làm quà tặng cho cấp trên, đối tác quan trọng thể hiện được sự thành ý, trân trọng của bạn.', N'C04', N'https://banhtrungthu.org/wp-content/uploads/2022/07/hop-kinh-do-trang-vang-black-gold-hop-yen-sao-4-banh.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (34, N'Bánh KARO Kẹp Kem Yến Sào Dâu Tây, Bánh KARO kem sữa tươi Yến Sào Dâu Tây', 100, N'–Bánh Karo Kẹp Kem Yến Sào Dâu Tây mang đến nhiều dinh dưỡng, được xem như bữa ăn nhẹ cung cấp năng lượng và các chất cần thiết cho cơ thể như: protein, canxi, chất xơ và các dưỡng chất khác…
Được đóng gói nhỏ gọn trong bao bì, tiện lợi, bánh trứng chà bông Karo phù hợp để mang theo khi đi xa, du lịch, đi chơi, dã ngoại… Bao bì giấy đẹp mắt, ấn tượng, thân thiện với môi trường.', N'C04', N'https://salt.tikicdn.com/cache/750x750/ts/product/82/35/0d/06b1cfe8d9cfd52631eccde09a88e0be.jpg.webp', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (35, N'Bánh Yến sào Sanest Cake hộp 20 cái', 100, N'Thành phần cấu tạo: Yến sào (1,6%), Chocolate, Bột mì, Bột nếp, Bột Protein, Bột Frutafit, Shortening, Dầu thực vật, Đường Dextrose, Bơ đậu phộng, phụ gia thực phẩm: Chất tạo xốp Natri Cacbonat (500i), Chất bảo quản Natri benzoat (211).', N'C04', N'https://product.hstatic.net/200000073345/product/h20_28d684798a114c71b21fe462a917d15b_1024x1024.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (36, N'Yến Chưng Đường Phèn, 1 lọ', 100, N'Tổ yến chưng đường phèn Tổ yến chưng đường phèn', N'C05', N'https://product.hstatic.net/200000210481/product/dscf2497_0818f8046fe840c59464f8e926b710df_master.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (37, N'Yến Sào Truyền Thống Chưng Đường Phèn, hộp 5 lọ', 100, N'Yến Sào Vĩnh Phước Chưng Đường Phèn được chế biến bằng phương pháp chưng cách thủy yến sào tươi cùng với đường phèn. Giữ nguyên những dưỡng chất vốn có trong mỗi thành phần nguyên liệu, đồng thời tăng thêm sức hấp dẫn, kích thích khẩu vị của người dùng. Mang đến món ăn có vị ngọt mát, mát, giúp giải nhiệt và có tác dụng bồi bổ sức khoẻ của mọi người. ', N'C05', N'https://product.hstatic.net/200000315451/product/hop_5_hu_yen_sao_tu_vi_vinh_phuoc_70ml_8938542664133_sp0000270_6accd619af2049d6aa5ecca001becacf_large.jpeg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (38, N'Yến Chưng Đông Trùng Hạ Thảo', 100, N'Thức uống lành mạnh cho nam giới sử dụng sau khi luyện tập thể thao. Nước uống bổ dưỡng Yến sào và Đông Trùng Hạ Thảo bổ sung năng lượng, axit amin và các dưỡng chất từ Yến sào và nguyên sợi Đông Trùng Hạ Thảo tự nhiên. Sử dụng ĐƯỜNG HỮU CƠ (đường không tẩy, cây mía được trồng không dùng phân bón & thuốc trừ sâu)
', N'C05', N'https://product.hstatic.net/200000061028/product/3020327-2_ffb86f8ac5c84cefa92cd0ab6c1a3319_master.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (39, N'Yến Chưng Đường Phèn,Hạt Chia', 100, N'Yến Chưng Đường Phèn,Hạt Chia là thức uống giải khát bổ dưỡng với sự kết hợp hoàn hảo của bộ đôi yến sào cao cấp và hạt chia nguyên chất giúp giải khát, thanh lọc cơ thể, bổ sung năng lượng thiết yếu và duy trì vẻ đẹp tự nhiên.', N'C05', N'https://product.hstatic.net/200000210481/product/yen_sao_thao_duoc-3_734bb974014b4c4baadce7be31fbee8d_master.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (40, N'Yến Chưng Tươi 1 lọ', 100, N'Giảm ốm nghén, rạn nứt da, phục hồi sức khoẻ, có sức có sữa, lấy lại vóc dáng và phát triển trí não cho thai nhi.Giúp trẻ ăn ngon, ngủ ngon, phát triển trí não, chiều cao, cân nặng và tăng đề kháng, giảm ốm vặt.Làm giảm quá trình lão hóa giúp duy trì tuổi thanh xuân, da căng mịn, hồng hào tự nhiên.Bồi bổ sức khoẻ, hồi phục nhanh chóng cho người già, người bệnh.Tổ yến chính là bí quyết giúp giữ lửa tình yêu tuyệt vời cho các cặp vợ chồng.', N'C05', N'https://cf.shopee.vn/file/254e096b1c61c20770351023a0ca6958', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (41, N'Yến Huyết THÔ Cao Cấp 100g', 100, N'Yến huyết thô cao cấp 100g là loại yến đỏ cao cấp khan hiếm trên thị trường, ra đời nhờ vào phản ứng hoá học giữa các bức tường trong hang động và sự hấp thụ của các chất khoáng tự nhiên. Tổ yến huyết thô cao cấp 100g được xây dựng vô cùng chắc chắc và có chứa hàm lượng chất dinh dưỡng cực cao, đặc biệt tổ yến chỉ xuất hiện trên các hang đá ngoài đảo.', N'C01', N'https://nestvui.com/wp-content/uploads/2022/09/hop-yen-huyet-tho-100g.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (42, N'Yến Huyết THÔ Cao Cấp 50g', 100, N'Tổ yến huyết thô cao cấp 50g là loại thực phẩm chức năng có chứa nhiều hàm lượng chất dinh dưỡng cao có ích bồi bổ sức khoẻ cho người sử dụng được BÁN CHẠY NHẤT tại Nest Vui. Đây cũng là loại tổ yến khan hiếm trên thị trường chỉ chiếm 20% so với tổng sản lượng yến nói chung được bán trên thị trường.', N'C01', N'https://nestvui.com/wp-content/uploads/2022/09/hop-yen-huyet-tho-50g.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (43, N'Yến Thô Đá (Đảo) Loại Thượng Hạng 50g', 100, N'Yến thô loại 1 hộp 50g tại Nest Vui được khai thác trực tiếp tại hang đá – vách đá trên các đảo trải dài từ Ninh Thuận đế Khánh Hoà, mặc dù đảo là nơi có môi trường sống khắc nghiệt, tuy nhiên đây là một trong những yếu tố quan trọng góp phần tạo ra những tổ yến có chứa hàm lượng giá trị dinh dưỡng lớn hơn các tổ yến nuôi nhà.', N'C01', N'https://nestvui.com/wp-content/uploads/2022/09/hop-yen-dao-tho-50g.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (44, N'Yến Thô Đá (Đảo) Loại Thượng Hạng 100g', 100, N'Tổ yến thô loại đặc biệt tại Nest Vui là loại yến đá tự nhiên với tai yến to, sợi dài, bùng yến dày,… tổ yến thô thiên nhiên loại 1 đặc biệt được chọn lọc với những tai yến có kích thước lớn còn chân yến được tìm thấy tại các vách núi, hang động hiểm trở. Chúng có hàm lượng dinh dưỡng cao và sợi yến dai thơm nồng vị yến.', N'C01', N'https://nestvui.com/wp-content/uploads/2022/09/hop-yen-dao-tho-100g.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (46, N'Yến Đá (Đảo) thiên nhiên Tinh Chế Loại 50g', 100, N'Yến được khai thác trực tiếp trên đảo trong các hang đá hoặc vách đá lớn, có chứa hàm lượng chất dinh dưỡng cao hơn gấp nhiều lần so với các loại yến nhà thông thường, vì các tổ yến đảo này được tạo nên khá chắc chắn và chất lượng từ loài chim yến có sức sống mãnh liệt, chịu được sự khắc nghiệt của môi trường trên đảo.', N'C02', N'https://nestvui.com/wp-content/uploads/2022/09/hop-yen-dao-tinh-che-thuong-hang.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (47, N'Nước Yến sào không đường, hộp 6 lọ', 100, N'Được làm từ tổ yến thật 100% cao cấp (0,9g/100ml), chất ổn định INS 418,nước, chất tạo ngọt tự nhiên INS 420 ii,INS 967. Dạng Siro trong suốt, màu trắng ngà, có lẫn các sợi yến, hương thơm ngọt đặc trưng của tổ yến.', N'C03', N'https://salt.tikicdn.com/cache/750x750/ts/product/2b/4c/d1/6095f7ccbcd018d64a506f21eccb051b.jpg.webp', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (48, N'Nước Yến sào Sanest 1 lon', 100, N'Sản phẩm Nước Yến sào Khánh Hòa Sanest (đóng lon) là sản phẩm được chế biến từ nguồn Yến sào đảo thiên nhiên và giữ nguyên tính năng của Yến sào đảo thiên nhiên.', N'C03', N'https://product.hstatic.net/200000073345/product/001_3b23ec68c3c04f35b2e3a2bf8dfeccb3_1024x1024.jpg', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (49, N'Nước Yến sào không đường 1 lọ', 100, N'Nuôi dưỡng phổi.Duy trì vẻ tươi trẻ và làn da rạng ngời.Bồi bổ sức khỏe và tăng cường miễn dịch.Giúp thanh nhiệt', N'C03', N'https://product.hstatic.net/200000061028/product/42ml_khong_duong_21c5013398e24652b789028c057fe0e9_master.png', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (54, N'Yến Chưng không đường, hộp 8 lọ', 100, N'Yến chưng không đường giải pháp cho người ăn kiêng.', N'C05', N'https://product.hstatic.net/1000096857/product/140ml_-_hop_8_-_khong_duong_7a79dc6704c04199bd5d77922693c7f7_master.png', 1)
INSERT [dbo].[product] ([productId], [name], [quantity], [description], [categoryId], [image], [status]) VALUES (55, N'Yến Chưng Đông Trùng Hạ Thảo không đường lốc 6 lọ', 100, N'Sự kết hợp của Yến Sào và Đông Trùng Hạ Thảo thực sự là một thần dược diệu kỳ cho người trưởng thành, trẻ em mắc các bệnh về đường hô hấp.Bồi bổ sức khỏe.Điều trị các bệnh về đường hô hấp: viêm phổi, phế quản, hen xuyễn,...Tăng cường hệ tim mạch, điều hòa nhịp tim.Cải thiện chất lượng máu.Phòng chống tiểu đường, oxi hóa, khối u.', N'C05', N'https://product.hstatic.net/1000096857/product/1_e6395b253cdd423e878988b2a6649ee2_master.png', 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
INSERT [dbo].[role] ([roleId], [roleName]) VALUES (N'AD', N'admin')
INSERT [dbo].[role] ([roleId], [roleName]) VALUES (N'SHIPPER', N'shipper')
INSERT [dbo].[role] ([roleId], [roleName]) VALUES (N'US', N'user')
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([userId], [userName], [password], [address], [phone], [email], [fullName], [roleId]) VALUES (1, N'admin', N'1', N'90 NTT P13 Q4 Tp.HCm', N'03788777777', N'bomvabeo@facebook.com', N'Hoàng ', N'AD')
INSERT [dbo].[users] ([userId], [userName], [password], [address], [phone], [email], [fullName], [roleId]) VALUES (2, N'anh', N'1', N'HCM', N'0909092332', N'anhntdse160517@fpt.edu.vn', N'Đức Anh', N'US')
INSERT [dbo].[users] ([userId], [userName], [password], [address], [phone], [email], [fullName], [roleId]) VALUES (3, N'thang', N'1', N'HCM', N'01234567852', N'songanswp391@gmail.com', N'bui van thang', N'US')
INSERT [dbo].[users] ([userId], [userName], [password], [address], [phone], [email], [fullName], [roleId]) VALUES (4, N'shipper', N'1', NULL, NULL, NULL, NULL, N'SHIPPER')
INSERT [dbo].[users] ([userId], [userName], [password], [address], [phone], [email], [fullName], [roleId]) VALUES (5, NULL, NULL, N'USA', N'0919193939', N'taylor@gmail.com', N'Taylor Swift', NULL)
INSERT [dbo].[users] ([userId], [userName], [password], [address], [phone], [email], [fullName], [roleId]) VALUES (6, NULL, NULL, N'26/11, Quận Bình Thạnh, TP HCM', N'0917736653', N'duy@gmail.com', N'Duy', NULL)
INSERT [dbo].[users] ([userId], [userName], [password], [address], [phone], [email], [fullName], [roleId]) VALUES (7, NULL, NULL, N'Korea', N'0988838848', N'drxmaidinh@gmail.com', N'DRX vô địch', NULL)
INSERT [dbo].[users] ([userId], [userName], [password], [address], [phone], [email], [fullName], [roleId]) VALUES (8, NULL, NULL, N'Việt Nam', N'0939937823', N'haohao@gmail.com', N'Hảo Hảo', NULL)
INSERT [dbo].[users] ([userId], [userName], [password], [address], [phone], [email], [fullName], [roleId]) VALUES (9, NULL, NULL, N'246/11, Lò Lu, Long Trường, Quận 9, TP HCM', N'0948872374', N'huyen@gmail.com', N'Huyền', NULL)
INSERT [dbo].[users] ([userId], [userName], [password], [address], [phone], [email], [fullName], [roleId]) VALUES (10, NULL, NULL, N'203, Einstein St, California, United Stated', N'0938881123', N'lisabeck@gmail.com', N'Lisa Beck', NULL)
INSERT [dbo].[users] ([userId], [userName], [password], [address], [phone], [email], [fullName], [roleId]) VALUES (11, NULL, NULL, N'90 NTT P13 Q4 Tp.HCm', N'03788777777', N'bomvabeo@facebook.com', N'Hoàng ', NULL)
INSERT [dbo].[users] ([userId], [userName], [password], [address], [phone], [email], [fullName], [roleId]) VALUES (12, NULL, NULL, N'90 NTT P13 Q4 Tp.HCm', N'03788777777', N'duylkse161102@fpt.edu.vn', N'duy', NULL)
INSERT [dbo].[users] ([userId], [userName], [password], [address], [phone], [email], [fullName], [roleId]) VALUES (13, N'user', N'1', N'HCM', N'0378873221', N'user@gmail.com', N'user', N'US')
INSERT [dbo].[users] ([userId], [userName], [password], [address], [phone], [email], [fullName], [roleId]) VALUES (14, NULL, NULL, N'12/2/3 Nguyễn Trãi, P.1, Q1, TP.HCM', N'0378823213', N'minhnguyen@gmail.com', N'Nguyễn Minh', NULL)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_product] FOREIGN KEY([productId])
REFERENCES [dbo].[product] ([productId])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_product]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_user] FOREIGN KEY([userId])
REFERENCES [dbo].[users] ([userId])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_user]
GO
ALTER TABLE [dbo].[orderDetails]  WITH CHECK ADD  CONSTRAINT [FK_orderDetails_order] FOREIGN KEY([orderId])
REFERENCES [dbo].[orders] ([orderId])
GO
ALTER TABLE [dbo].[orderDetails] CHECK CONSTRAINT [FK_orderDetails_order]
GO
ALTER TABLE [dbo].[orderDetails]  WITH CHECK ADD  CONSTRAINT [FK_orderDetails_product] FOREIGN KEY([productId])
REFERENCES [dbo].[product] ([productId])
GO
ALTER TABLE [dbo].[orderDetails] CHECK CONSTRAINT [FK_orderDetails_product]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_order_users] FOREIGN KEY([userId])
REFERENCES [dbo].[users] ([userId])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_order_users]
GO
ALTER TABLE [dbo].[post]  WITH CHECK ADD  CONSTRAINT [FK_blog_category] FOREIGN KEY([category])
REFERENCES [dbo].[category] ([categoryId])
GO
ALTER TABLE [dbo].[post] CHECK CONSTRAINT [FK_blog_category]
GO
ALTER TABLE [dbo].[price]  WITH CHECK ADD  CONSTRAINT [FK_price_product] FOREIGN KEY([productId])
REFERENCES [dbo].[product] ([productId])
GO
ALTER TABLE [dbo].[price] CHECK CONSTRAINT [FK_price_product]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[category] ([categoryId])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_user_role] FOREIGN KEY([roleId])
REFERENCES [dbo].[role] ([roleId])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_user_role]
GO
USE [master]
GO
ALTER DATABASE [NestSongAn] SET  READ_WRITE 
GO
