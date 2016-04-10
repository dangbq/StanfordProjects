USE [eNews]
GO
/****** Object:  Table [dbo].[stanfArticle]    Script Date: 25/02/2016 7:38:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stanfArticle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[Description] [nvarchar](1000) NULL,
	[ArticleContent] [ntext] NULL,
	[Keyword] [nvarchar](500) NULL,
	[ImageName] [nvarchar](250) NULL,
	[ImagePath] [nvarchar](250) NULL,
	[DateCreated] [datetime] NULL,
	[DateLastUpdate] [datetime] NULL,
	[DateApproved] [datetime] NULL,
	[Approved] [bit] NULL,
	[DatePublish] [datetime] NULL,
	[Published] [bit] NULL,
	[Notes] [nvarchar](1000) NULL,
	[AuthorName] [nvarchar](50) NULL,
	[AuthorId] [int] NULL,
	[CategoryId] [int] NULL,
	[TypeId] [int] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_stanfArticle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[stanfCategory]    Script Date: 25/02/2016 7:38:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stanfCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](250) NULL,
	[CategoryDescription] [nvarchar](1000) NULL,
	[CategoryImageName] [nvarchar](50) NULL,
	[NumberOrder] [int] NULL,
 CONSTRAINT [PK_stanfCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[stanfTypes]    Script Date: 25/02/2016 7:38:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stanfTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](250) NULL,
	[TypeDescription] [nvarchar](500) NULL,
	[NumberOrder] [int] NULL,
 CONSTRAINT [PK_stanfTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[stanfUser]    Script Date: 25/02/2016 7:38:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stanfUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[Avatar] [nvarchar](50) NULL,
	[Sex] [int] NULL,
	[Birthday] [datetime] NULL,
	[Mobile] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[IsAdmin] [bit] NULL,
	[DateCreate] [datetime] NULL,
	[DateLastUpdate] [datetime] NULL,
	[Approved] [bit] NULL,
	[DateApproved] [datetime] NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_stanfUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[stanfArticle] ON 

INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (4, N'Sir Alex: ''Đội hình MU mùa 2015 sẽ đi vào lịch sử''', N'Chiến lược gia kỳ cựu tin rằng các học trò hiện tại của ông sẽ đi vào lịch sử với tư cách một trong những đội hình MU mạnh nhất.', N'<table class="tplCaption" align="center" border="0" cellpadding="3" cellspacing="0" width="1"><tbody><tr><td><img alt="HLV Ferguson đang chứng kiến MU mạnh nhất tại Premier League trong suốt 27 năm dấn dắt đội bóng." src="http://l.f1.img.vnexpress.net/2013/04/22/ferguson-jpg-1366625432_500x0.jpg" style="width:480px;"></td>
		</tr><tr><td class="Image">
				HLV Ferguson đang chứng kiến MU mạnh nhất tại Premier League trong suốt 27 năm dấn dắt đội bóng.</td>
		</tr></tbody></table><p class="Normal">
	Thất bại của Man City trước Tottenham giúp ngày đăng quang của MU đến 
sớm hơn dự kiến. Chỉ cần giành đúng 3 điểm trong 5 vòng đấu cuối thì Quỷ
 đỏ sẽ cán cột mốc 20 lần vô địch xứ sở sương mù, củng cố thêm vị trí 
đội bóng giàu truyền thống nhất nước Anh.</p>
<p class="Normal">
	Không phải chờ quá lâu, người hâm mộ MU đã sẵn sàng ăn mừng sau trận 
đấu với Aston Villa ngay đêm nay. Phát biểu trước trận đấu, HLV Ferguson
 cho biết ông cùng các học trò đã sẵn sàng cho khoảnh khắc lịch sử này.</p>
<p class="Normal">
	"Nếu chúng tôi giành chức vô địch mùa này, đội hình hiện tại sẽ được 
công nhận như một trong những đội bóng mạnh nhất từ trước tới nay", 
chiến lược gia 71 tuổi nói. "Vấn đề bây giờ là MU sẽ vô địch với số điểm
 bao nhiêu."</p>
<p class="Normal">
	Trong số 12 chức vô địch mà HLV Ferguson giúp MU giành được, đội chủ 
sân Old Trafford từng đạt số điểm cao nhất là 92 ở mùa 1993/1994. Trong 
khi đó, khoảng cách lớn nhất mà MU từng tạo được với đội đứng sau là 18 
điểm ở mùa 1999/2000.</p>
<p class="Normal">
	Cả hai thành tích trên đều có thể bị chính MU phá vỡ trong mùa giải năm
 nay. Với 81 điểm hiện tại cùng 5 vòng đấu nữa, MU hoàn toàn có thể vượt
 qua số điểm 92. Nếu thắng Aston Villa đêm nay, khoảng cách với kình 
địch Man City sẽ được nâng lên thành 16 điểm, và có khả năng còn cao hơn
 nữa ở cuối mùa.</p>
<p class="Normal">
	"Để giành chiến thắng một giải đấu dài bạn cần sự tập trung. MU đã tập 
trung rất tốt ở mùa này khi thắng tới 26 trong 33 trận đã qua. Tuy nhiên
 sẽ còn tốt hơn nữa nếu tổng số điểm của MU giúp các cổ động viên tự hào
 rằng đội bóng của họ là hay nhất."</p>
<p class="Normal">
	HLV Ferguson đang nhắm tới kỷ lục 95 điểm mà Chelsea của Jose Mourinho 
lập nên ở mùa 2004/2005. Để vượt qua được thành tích này, MU buộc phải 
thắng cả 5 trận còn lại. Nếu làm được điều đó, Ferguson và các học trò 
sẽ đi vào lịch sử không chỉ với tư cách đội hình hay nhất của MU mà còn 
là của cả giải Ngoại hạng Anh.</p>', NULL, N'ferguson-jpg-1366625432_500x0.jpg', NULL, CAST(0x0000A1A8013CAE58 AS DateTime), CAST(0x0000A4600159F714 AS DateTime), CAST(0x0000A25F01593D11 AS DateTime), 1, NULL, NULL, NULL, N'vnexpress', NULL, 2, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (5, N'Mạo hiểm ra sân, Messi có thể ngồi chơi hết mùa', N'Tiền đạo người Argentina vẫn đang trong quá trình phục hồi sau chấn thương gặp phải ở trận đấu với Paris Saint Germain.', N'<div class="relative_news">
                                <ul class="list_dot_3x3"><li><a class="txt_gray" href="http://thethao.vnexpress.net/tin-tuc/champions-league/barca-don-tin-vui-tu-messi-2658616.html" title="" alt="Barca đón tin vui từ Messi">Barca đón tin vui từ Messi</a><span class="txt_gray"></span></li><li><a class="txt_gray" href="http://thethao.vnexpress.net/tin-tuc/champions-league/messi-tap-tro-lai-voi-bong-2659799.html" title="" alt="Messi tập trở lại với bóng">Messi tập trở lại với bóng</a><span class="txt_gray"></span></li></ul>
                            </div>
                        
                        <table class="tplCaption" align="center" border="0" cellpadding="3" cellspacing="0" width="1"><tbody><tr><td>
				<img alt="Messi mới chỉ trở lại tập luyện bình thường cuối tuần trước." src="http://l.f1.img.vnexpress.net/2013/04/22/mes-jpg-1366621667_500x0.jpg" style="width:480px;"></td>
		</tr><tr><td class="Image">
				Messi mới chỉ trở lại tập luyện bình thường cuối tuần trước.</td>
		</tr></tbody></table><p class="Normal">
	Khả năng ra sân của Messi trong trận đấu giữa tuần này vẫn là bí mật dù
 siêu sao số 10 vẫn có mặt trong 21 cầu thủ bay tới Munich.&nbsp;</p>
<p class="Normal">
	Dù chưa nhận được tín hiệu cho phép thi đấu từ các bác sĩ nhưng Barca 
không có nhiều lựa chọn. Nhiều khả năng đội bóng xứ Catalan sẽ có một 
cuộc kiểm tra cuối cùng với Messi chỉ ít giờ trước khi trận đấu với 
Bayern bắt đầu.</p>
<p class="Normal">
	Messi bắt đầu gặp vấn đề với gân kheo ở trận tứ kết lượt đi gặp PSG. Kể
 từ đó tới nay, M10 không thi đấu từ đầu trong tất cả các trận của 
Barca. Tiền đạo người Argentina chỉ bắt đầu luyện tập lại với toàn đội 
vào ngày thứ sáu vừa qua.</p>
<p class="Normal">
	Chuyên gia vật lý trị liệu Juanjo Brau đã phải theo sát Messi trong hơn
 hai tuần qua. Ngoài các bài tập vật lý trị liệu, Messi còn phải sử dụng
 các phương pháp điều trị bằng nhiệt độ nhằm tăng tốc quá trình hồi 
phục. Hiện Messi chưa thể trở lại đúng 100% phong độ nhưng chắc chắn tốt
 hơn rất nhiều so với khi ra sân ở trận tứ kết lượt về gặp PSG.</p>
<p class="Normal">
	Messi đang là người nắm quyền tự quyết trong tay và sẽ phải cẩn trọng. 
Nếu mạo hiểm ra sân, Cầu thủ hay nhất thế giới có thể đối mặt với nguy 
cơ ngồi ngoài trong phần còn lại của mùa giải.</p>', NULL, N'mes-jpg-1366621667_500x0.jpg', NULL, CAST(0x0000A1A8013D2C49 AS DateTime), CAST(0x0000A25F01593D11 AS DateTime), CAST(0x0000A25F01593D11 AS DateTime), 1, CAST(0x0000A1AC00000000 AS DateTime), NULL, NULL, N'', NULL, 2, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (13, N'Tân Bộ trưởng Tài chính: ‘Tôi không ngại khó’', N'Trở thành người "nắm giữ túi tiền" quốc gia trong hoàn cảnh kinh tế khó khăn, Bộ trưởng Đinh Tiến Dũng đề cao chủ trương tiết kiệm chi, thúc đẩy thu và quản lý giá các mặt hàng thiết yếu hướng theo nguyên tắc thị trường.', N'Trở thành người "nắm giữ túi tiền" quốc gia trong hoàn cảnh kinh tế khó khăn, Bộ trưởng Đinh Tiến Dũng đề cao chủ trương tiết kiệm chi, thúc đẩy thu và quản lý giá các mặt hàng thiết yếu hướng theo nguyên tắc thị trường.', NULL, N'ong-Dung-1-1369397618_500x0.jpg', NULL, CAST(0x0000A1C9009568FA AS DateTime), CAST(0x0000A50D0134476F AS DateTime), CAST(0x0000A25F015D35EB AS DateTime), 1, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (14, N'Nokia Lumia 1030 màn hình 6 inch lộ diện', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/nokia-lumia-1030-man-hinh-6-inch-lo-dien-2803306.html''><img src=''http://s.f5.img.vnexpress.net/2013/06/01/Nokia-1030-Lumia-1370052655_105x80.jpg'' width=''105'' height=''80''></a><br>Chiếc Windows Phone màn hình cỡ bự của Nokia xuất hiện bên cạnh HTC One Mini cùng một điện thoại Full HD 6,5 inch khác được cho là Sony Xperia L4.', N'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8" /><title>
		</title>
		<style type="text/css">
			.cs95E872D0{text-align:left;text-indent:0pt;margin:0pt 0pt 0pt 0pt}
			.cs7F62AB8E{color:#000000;background-color:transparent;font-family:Times New Roman; font-size:16pt; font-weight:bold; font-style:normal; }
			.csF4FE13F3{color:#000000;background-color:transparent;font-family:Times New Roman; font-size:14pt; font-weight:bold; font-style:normal; }
			.cs2D2816FE{}
			.cs86B01A0B{padding:2.25pt 2.25pt 2.25pt 2.25pt;border-top:none;border-right:none;border-bottom:none;border-left:none}
			.cs5EFED22F{color:#000000;background-color:transparent;font-family:Times New Roman; font-size:12pt; font-weight:normal; font-style:normal; }
			.csA62DFD6A{color:#000000;background-color:transparent;font-family:Times New Roman; font-size:12pt; font-weight:normal; font-style:italic; }
			.csC583D0C8{text-align:left;text-indent:0pt;margin:12pt 0pt 12pt 0pt}
			.cs987C76A8{color:#222222;background-color:transparent;font-family:Times New Roman; font-size:12pt; font-weight:normal; font-style:normal; }
		</style>
	</head>
	<body>
		<span><h1 class="cs95E872D0">
			<span class="cs7F62AB8E">Tướng Mỹ đề xuất 5 phương &aacute;n can thiệp v&agrave;o Syria</span></h1>
		<h2 class="cs95E872D0">
			<span class="csF4FE13F3">Chủ tịch Hội đồng tham mưu trưởng c&aacute;c lực lượng vũ trang Mỹ Martin Dempsey h&ocirc;m qua gửi thư tới Thượng viện Mỹ đề xuất 5 phương &aacute;n can thiệp v&agrave;o t&igrave;nh h&igrave;nh Syria.&nbsp;</span></h2>
		<table class="cs2D2816FE" border="0" cellspacing="0" cellpadding="0" width="1" align="center" style="border-collapse:collapse;">
			<tr>
				<td class="cs86B01A0B"><p class="cs95E872D0"><span><img src="data:image/jpeg;base64,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" width="500" height="358" alt="" style="border-width:0px;" /></span></p></td></tr>
			<tr>
				<td class="cs86B01A0B"><p class="cs95E872D0"><span class="cs5EFED22F">Tướng Martin Dempsey. Ảnh: </span><span class="csA62DFD6A">AP</span></p></td></tr>
		</table>
		<p class="csC583D0C8"><span class="cs5EFED22F">Trong thư gửi&nbsp;Chủ tịch ủy ban Thượng viện về vấn đề qu&acirc;n sự Carl Levin v&agrave; thượng nghị sĩ John McCain của đảng Cộng h&ograve;a Mỹ,&nbsp;&ocirc;ng Dempsey nhấn mạnh Qu&acirc;n đội Mỹ đ&atilde; chuẩn bị sẵn s&agrave;ng kế hoạch cho trường hợp cần thiết phải thực hiện c&aacute;c cuộc tấn c&ocirc;ng hạn chế từ xa v&agrave;o c&aacute;c căn cứ của qu&acirc;n đội Syria, trong đ&oacute; c&oacute; hệ thống ph&ograve;ng kh&ocirc;ng v&agrave; c&aacute;c sở chỉ huy.</span></p><p class="csC583D0C8"><span class="cs5EFED22F">&quot;</span><span class="cs987C76A8">C&aacute;c mục ti&ecirc;u tiềm năng bao gồm c&aacute;c lực lượng ph&ograve;ng kh&ocirc;ng, kh&ocirc;ng qu&acirc;n, lục qu&acirc;n, c&aacute;c d&agrave;n ph&oacute;ng t&ecirc;n lửa, hải qu&acirc;n, cũng như c&aacute;c căn cứ qu&acirc;n sự hỗ trợ v&agrave; c&aacute;c trung t&acirc;m chỉ huy&quot;, &ocirc;ng Dempsey viết.</span></p><p class="csC583D0C8"><span class="cs987C76A8">Theo Tướng Dempsey, c&aacute;c cuộc kh&ocirc;ng k&iacute;ch từ xa v&agrave; c&aacute;c cuộc tấn c&ocirc;ng bằng t&ecirc;n lửa c&oacute; thể được sử dụng để triệt hạ h&agrave;ng trăm mục ti&ecirc;u theo đ&uacute;ng tiến tr&igrave;nh m&agrave; qu&acirc;n đội Mỹ đ&atilde; lựa chọn.</span></p><p class="csC583D0C8"><span class="cs987C76A8">Việc can thiệp trực tiếp v&agrave;o cuộc xung đột vũ trang nội bộ ở Syria, theo &ocirc;ng Dempsey, sẽ được thực hiện theo năm phương &aacute;n h&agrave;nh động. Tuy nhi&ecirc;n vị Chủ tịch Hội đồng tham mưu trưởng c&aacute;c lực lượng vũ trang Mỹ cũng cảnh b&aacute;o c&aacute;c h&agrave;nh động qu&acirc;n sự sẽ ti&ecirc;u tốn h&agrave;ng tỷ USD v&agrave; kh&ocirc;ng đảm bảo th&agrave;nh c&ocirc;ng.&nbsp;</span></p><p class="csC583D0C8"><span class="cs987C76A8">Trong bức thư &ocirc;ng Dempsey đề xuất 5 phương &aacute;n h&agrave;nh động, bao gồm:</span></p><p class="csC583D0C8"><span class="cs5EFED22F">Phương &aacute;n 1:&nbsp;Mỹ thực hiện đ&agrave;o tạo v&agrave; trang bị cho c&aacute;c tay s&uacute;ng qu&acirc;n nổi dậy ở &ldquo;khu vực an to&agrave;n b&ecirc;n ngo&agrave;i l&atilde;nh thổ Syria.&rdquo;<br><br>Phương &aacute;n 2:&nbsp;Qu&acirc;n đội Mỹ tiến h&agrave;nh c&aacute;c cuộc tấn c&ocirc;ng c&oacute; quy m&ocirc; hạn chế với sự tham gia của h&agrave;ng trăm m&aacute;y bay, t&agrave;u chiến, t&agrave;u ngầm v&agrave; nhiều lực lượng kh&aacute;c v&agrave;o c&aacute;c mục ti&ecirc;u được lựa chọn.<br><br>Phương &aacute;n 3:&nbsp;Lập v&ugrave;ng kh&ocirc;ng phận được gọi l&agrave; &ldquo;v&ugrave;ng cấm bay,&rdquo; phương &aacute;n n&agrave;y đ&ograve;i hỏi sự tham gia của h&agrave;ng trăm m&aacute;y bay cất c&aacute;nh từ mặt đất v&agrave; từ c&aacute;c t&agrave;u s&acirc;n bay, lực lượng t&igrave;nh b&aacute;o, chiến tranh điện tử, c&aacute;c đơn vị th&ocirc;ng tin v&agrave; tiếp nhi&ecirc;n liệu.<br><br>Phương &aacute;n 4:&nbsp;Lập v&ugrave;ng đệm ở Syria, m&agrave; khả năng sẽ l&agrave; c&aacute;c khu vực bi&ecirc;n giới với Thổ Nhĩ Kỳ v&agrave; Jordan, tại đ&acirc;y sẽ h&igrave;nh th&agrave;nh c&aacute;c căn cứ vững chắc của phe đối lập. Trong trường hợp n&agrave;y Mỹ sẽ buộc phải hỗ trợ bằng lực lượng lục qu&acirc;n của m&igrave;nh với qu&acirc;n số khoảng v&agrave;i ngh&igrave;n người.&nbsp;<br><br>Ở&nbsp;phương &aacute;n 5,&nbsp;&ocirc;ng Dempsey đề nghị nghi&ecirc;n cứu khả năng gi&agrave;nh quyền kiểm so&aacute;t c&aacute;c kho vũ kh&iacute; h&oacute;a học ở Syria. Để thực hiện phương &aacute;n n&agrave;y, cần phải thiết lập &ldquo;v&ugrave;ng cấm bay tối thiểu&rdquo; tr&ecirc;n kh&ocirc;ng phận Syria, thực hiện c&aacute;c cuộc tấn c&ocirc;ng bằng đường kh&ocirc;ng v&agrave; t&ecirc;n lửa tầm xa với sự tham gia của h&agrave;ng trăm m&aacute;y bay, t&agrave;u chiến v&agrave; t&agrave;u ngầm, ngo&agrave;i ra cũng phải sử dụng v&agrave;i ngh&igrave;n l&iacute;nh đặc nhiệm v&agrave; c&aacute;c lực lượng lục qu&acirc;n kh&aacute;c.&nbsp;<br><br>Tuy nhi&ecirc;n, khi viện dẫn kinh nghiệm ở Iraq v&agrave; Afganistan, &ocirc;ng Dempsey cảnh b&aacute;o rằng, một khi chế độ ở Damascus bị khuất phục trước sức mạnh tấn c&ocirc;ng của Mỹ, nhưng phe đối lập ở Syria vẫn kh&ocirc;ng đủ mạnh để kiểm so&aacute;t t&igrave;nh h&igrave;nh th&igrave; v&ocirc; h&igrave;nh chung Mỹ sẽ trực tiếp k&iacute;ch động cho c&aacute;c h&agrave;nh động cực đoan sẽ diễn ra trong tương lai v&agrave; kh&ocirc;ng thể kiểm so&aacute;t được. Trong đ&oacute;, kh&ocirc;ng loại trừ một số vũ kh&iacute; h&oacute;a học m&agrave; Mỹ muốn kiểm so&aacute;t sẽ lọt v&agrave;o tay c&aacute;c phần tử cực đoan ở khu vực.<br><br>&Ocirc;ng cho biết c&aacute;c kế hoạch chi tiết b&iacute; mật trước đ&oacute; đ&atilde; được gửi đến ban l&atilde;nh đạo ch&iacute;nh quyền Mỹ v&agrave; Quốc hội.<br><br>Tướng Dempsey nhấn mạnh, hiện nay vai tr&ograve; của lực lượng vũ trang Mỹ đối với cuộc xung đột ở Syria chỉ n&ecirc;n đi theo hướng &ldquo;hỗ trợ cho việc thực hiện trợ gi&uacute;p nh&acirc;n đạo, đảm bảo an ninh cho c&aacute;c quốc gia l&aacute;ng giềng với Syria v&agrave; cung cấp hỗ trợ phi qu&acirc;n sự cho phe đối lập ở quốc gia Trung Đ&ocirc;ng n&agrave;y.</span></p><p class="csC583D0C8"><span class="cs5EFED22F">Trong một diễn biến kh&aacute;c, đ&agrave;i </span><span class="csA62DFD6A">Tiếng n&oacute;i nước Nga </span><span class="cs5EFED22F">dẫn nguồn tin Hải qu&acirc;n Mỹ th&ocirc;ng b&aacute;o t&agrave;u s&acirc;n bay Harry Truman của Mỹ đ&atilde; di chuyển đến v&ugrave;ng Vịnh Persian với nhiệm vụ trực chiến.</span></p><p class="cs95E872D0"><span class="cs5EFED22F">Đi c&ugrave;ng t&agrave;u s&acirc;n bay Harry Truman c&ograve;n c&oacute; hai t&agrave;u tuần dương được trang bị t&ecirc;n lửa, hai t&agrave;u khu trục hộ tống v&agrave; 6.000 binh sĩ.&nbsp;Đợt trực chiến của nh&oacute;m t&agrave;u s&acirc;n bay n&agrave;y sẽ k&eacute;o d&agrave;i từ 8-9 th&aacute;ng.<br><br>Theo K&ecirc;nh truyền h&igrave;nh </span><span class="csA62DFD6A">Nước Nga 24</span><span class="cs5EFED22F">, trong v&ugrave;ng Vịnh Persian hiện c&oacute; một nh&oacute;m t&agrave;u chiến Mỹ do t&agrave;u s&acirc;n bay Nimitz dẫn đầu cũng đang thực hiện sứ mệnh trực chiến. M&aacute;y bay tr&ecirc;n t&agrave;u s&acirc;n bay n&agrave;y được sử dụng v&agrave;o việc hỗ trợ cho c&aacute;c lực lượng NATO tại Afghanistan.</span></p></span></body>
</html>
', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/nokia-lumia-1030-man-hinh-6-inch-lo-dien-2803306.html', CAST(0x0000A1D001314A33 AS DateTime), CAST(0x0000A25F015D35EC AS DateTime), CAST(0x0000A25F015D35EC AS DateTime), 1, CAST(0x0000A1D0009B1E28 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (15, N'Màn hình máy tính nét gấp 4 lần full HD công nghệ IGZO của Asus', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/may-tinh-de-ban/man-hinh-may-tinh-net-gap-4-lan-full-hd-cong-nghe-igzo-cua-asus-2803313.html''><img src=''http://s.f7.img.vnexpress.net/2013/06/01/ASUS-Ultra-HD-IGZO-P-1370052772_105x80.jpg'' width=''105'' height=''80''></a><br>Asus PQ321 có kích thước 31,5 inch nhưng độ phân giải đạt chuẩn 4K là 3.840 x 2.160 pixel. ', N'<div id="article_content">
                    <table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="ASUS-Ultra-HD-IGZO-P-1370052772_500x0.jp" src="http://l.f5.img.vnexpress.net/2013/06/01/ASUS-Ultra-HD-IGZO-P-1370052772_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				Asus PQ321. </td>
		</tr></tbody></table><p class="Normal">
	Trong khi chuẩn 4K còn khá mới mẻ ngay cả trên các dòng màn hình TV thì Asus đã sớm đưa vào thế hệ màn hình máy để bàn mới của mình. Đặc biệt hơn, PQ321 còn sử dụng tấm nền công nghệ mới IGZO hứa hẹn độ sáng và chi tiết được cải thiện trong khi mức tiêu thụ năng lượng thấp hơn nhiều so với các dòng màn hình khác. </p>
<p class="Normal">
	IGZO sử dụng Indium Gallium Zinc Oxide thay vì silic vô định hình. Điều này giúp hỗ trợ điện tử di động lớn hơn tới khoảng 40 lần. Ngoài ra, điểm ảnh trên thực tế có thể nhỏ hơn màn hình LCD truyền thống. </p>
<p class="Normal">
	Asus không nói rõ nguồn gốc các tấm nền IGZO nhưng nhiều khả năng là từ Sharp. Công ty Nhật Bản mới tuyên bố trở lại trong tháng 4/2012 và sản xuất số lượng lớn màn hình IGZO kích thước 32 inch với độ phân giải tương tự như mẫu Asus PQ321 vừa công bố. </p>
<p class="Normal">
	Theo thông báo của Asus, màn hình mới cho mật độ điểm ảnh 140 ppi và độ sáng 350 cd/m2 và thời gian đáp ứng là 8 ms. Góc nhìn khá rộng, lên tới 176 độ theo cả hai hướng. Thiết bị hỗ trợ cổng DisplayPort, hai cổng HDMI, cổng âm thanh vào/ra. Loa stereo tích hợp có công suất 2 Watt. Độ mỏng của màn hình là 35 mm. </p>
<p class="Normal">
	Asus không công bố giá sản phẩm nhưng theo Slashgear thì riêng tấm nền màn hình đã có giá tới 5.500 USD. </p>
<p class="Normal" style="text-align:right;">
	<strong>Hoài Anh</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/may-tinh-de-ban/man-hinh-may-tinh-net-gap-4-lan-full-hd-cong-nghe-igzo-cua-asus-2803313.html', CAST(0x0000A1D0013152F9 AS DateTime), CAST(0x0000A25F015D429B AS DateTime), CAST(0x0000A25F015D429B AS DateTime), 1, CAST(0x0000A1D0009AEF48 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (16, N'Laptop chơi game Razer Blade được nâng cấp, thêm bản 14 inch 1', N'Phiên bản Razer Blade 17,3 inch mới sử dụng bộ xử lý thế hệ bốn mạnh mẽ hơn của Intel trong khi model 14 inch được quảng cáo là "laptop chơi game mỏng nhất thế giới".', N'<div id="article_content">
                    <p>
	Theo <em>Notebookcheck</em>, Razer Blade 17,3 inch vừa ra mắt được trang bị bộ xử lý nền tảng Haswell mới nhất. Máy vẫn sở hữu màn hình độ phân giải Full HD cùng bộ nhớ RAM DDR3 dung lượng 8 GB. Bên cạnh đó, model này còn dùng ổ SSD 512 GB và card đồ hoạ rời Nvidia GeForce GTX 765M với VRAM 2 GB.</p>
<div class="csc-default csc-space-before- csc-space-after-" id="c1174423">
	<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
					<img alt="razer-1370049163_500x0.png" src="http://l.f5.img.vnexpress.net/2013/06/01/razer-1370049163_500x0.png" style="width:500px;"></td>
			</tr><tr><td class="Image">
					Razer Blade 14 inch có thiết kế gần giống MacBook Pro. Ảnh<em>: Notebookcheck.</em></td>
			</tr></tbody></table><p class="align-justify">
		Trong khi đó, phiên bản 14 inch lại sở hữu độ dày khoảng 16,7 mm. Thiết kế của sản phẩm được đánh giá là khá giống MacBook Air và dùng màn hình độ phân giải 1.600 x 900 pixel. Tuy nhiên, sản phẩm không còn được tích hợp màn hình phụ với giao diện Switchblade UI hiển thị các phím chức năng độc đáo như mẫu 17 inch nữa.</p>
	<p class="align-justify">
		Theo dự kiến, Razer Blade mới sẽ được bán tại Anh và Mỹ vào ngày 3/6 sắp tới. Giá của model 17,3 inch là 2.299 USD (khoảng 48,3 triệu đồng) còn 14 inch là 1.799 USD (khoảng 37,8 triệu đồng).</p>
	<p class="align-justify" style="text-align:center;">
		<strong><a title="Ảnh thực tế laptop chơi game Razer Blade mới" href="http://sohoa.vnexpress.net/tin-tuc/san-pham/laptop/laptop-choi-game-razer-blade-duoc-nang-cap-them-ban-14-inch-2803285-p2.html">Ảnh thực tế laptop chơi game Razer Blade mới</a></strong></p>
	<p class="align-justify" style="text-align:center;">
		<strong><a title="Ảnh chính thức laptop chơi game Razer Blade 17 inch mới" href="http://sohoa.vnexpress.net/tin-tuc/san-pham/laptop/laptop-choi-game-razer-blade-duoc-nang-cap-them-ban-14-inch-2803285-p3.html">Ảnh chính thức laptop chơi game Razer Blade 17 inch mới</a></strong></p>
	<p class="align-justify" style="text-align:right;">
		<strong>Thanh Tùng</strong></p>
</div>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/laptop/laptop-choi-game-razer-blade-duoc-nang-cap-them-ban-14-inch-2803285.html', CAST(0x0000A1D00131550E AS DateTime), CAST(0x0000A25F015D429C AS DateTime), CAST(0x0000A25F015D429C AS DateTime), 1, CAST(0x0000A1D000917328 AS DateTime), NULL, NULL, N'vnexpress', NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (17, N'Máy tính all-in-one chạy Android của Acer gần 9 triệu đồng', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/may-tinh-de-ban/may-tinh-all-in-one-chay-android-cua-acer-gan-9-trieu-dong-2803287.html''><img src=''http://s.f6.img.vnexpress.net/2013/06/01/acer-1370049251_105x80.jpg'' width=''105'' height=''80''></a><br>Sản phẩm có tên DA220HQL dùng bộ xử lý lõi kép và chạy trên hệ điều hành Android 4.0.', N'<div id="article_content">
                    <div class="csc-default csc-space-before- csc-space-after-" id="c1174554">
	<p class="align-justify">
		Theo <em>Cnet</em>, Acer DA220HQL được trang bị màn hình cảm ứng 21,5 inch độ phân giải 1.920 x 1.080 pixel. Máy sử dụng bộ xử lý Texas Instruments OMAP 4430 với hai lõi Cortex A9.</p>
	<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
					<img alt="acer-1370049251_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/06/01/acer-1370049251_500x0.jpg" style="width:500px;"></td>
			</tr><tr><td class="Image">
					Acer DA220HQL chạy Android và sở hữu màn hình cảm ứng kích thước lớn. Ảnh: <em>CNet.</em></td>
			</tr></tbody></table><p class="align-justify">
		Ngoài ra, sản phẩm mới của Acer còn sở hữu RAM 1 GB và bộ nhớ trong 8 GB. Mặt trước của máy có camera phụ để thực hiện cuộc gọi video. DA220HQL có tích hợp loa, hỗ trợ phụ kiện không dây như bàn phím, chuột. Các kết nối được tích hợp trên model này gồm Wi-Fi, micro-HDMI và microUSB 2.0.</p>
	<p class="align-justify">
		Theo dự kiến, mẫu máy tính all-in-one chạy Android mới của Acer sẽ được bán với giá trên dưới 425 USD (khoảng 8,9 triệu đồng).</p>
</div>
<p style="text-align:right;">
	<strong>Thanh Tùng</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/may-tinh-de-ban/may-tinh-all-in-one-chay-android-cua-acer-gan-9-trieu-dong-2803287.html', CAST(0x0000A1D0013156F0 AS DateTime), CAST(0x0000A1D0013156F0 AS DateTime), NULL, 1, CAST(0x0000A1D000915BB8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (19, N'Galaxy S4 Active xuất hiện với ngoại hình hầm hố', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/galaxy-s4-active-xuat-hien-voi-ngoai-hinh-ham-ho-2803301.html''><img src=''http://s.f7.img.vnexpress.net/2013/06/01/Galaxy-S4-Active-1370050651_105x80.jpg'' width=''105'' height=''80''></a><br>Hình ảnh được cho là chính thức về chiếc Galaxy S4 bản chống nước và chống bụi vừa xuất hiện, mang nhiều chi tiết thiết kế khác S4 thông thường.', N'<div id="article_content">
                    <table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="Galaxy-S4-Active-1370050651_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/06/01/Galaxy-S4-Active-1370050651_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				Galaxy S4 Active có thể được Samsung công bố vào 20/6 này.</td>
		</tr></tbody></table><p class="Normal">
	Trong bức ảnh vừa được trang Twitter <em>Evleaks</em> chia sẻ, Galaxy S4 Active xuất hiện với logo nhà mạng AT&T, trùng với tin đồn việc sản phẩm sẽ được giới thiệu tại thị trường Mỹ với tên mã I537. Ngoài ra, bản quốc tế của model này dự kiến sẽ được trình làng trong sự kiện của Samsung tại London (Anh) vào 20/6 tới.</p>
<p class="Normal">
	So với S4 thông thường đang có trên thị trường, sự khác biệt của S4 Active nằm ở khả năng chống nước và chống bụi giống như một điện thoại siêu bền. Điều này khiến cho thiết kế của sản phẩm trông cá tính, hầm hố hơn bản gốc. Mặt lưng được gắn vào thân máy bởi các vít lớn và lộ thiên. Viền bao quanh màu kim loại được thiết kế trông dày, trùm xuống một phần nắp lưng. Trong khi dãy phím ở mặt trước được thiết dạng cứng hoàn toàn với kích thước lớn, không sử dụng cảm ứng.</p>
<p class="Normal">
	Theo <em>Engadget</em>, S4 Active sẽ có cấu hình thấp hơn một chút so với phiên bản "tiền nhiệm". Sản phẩm được trang bị chip lõi tứ Snapdragon 600, màn hình Full HD và camera 8 megapixel ở mặt lưng.</p>
<p class="Normal" style="text-align:right;">
	<strong>Tuấn Anh</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/galaxy-s4-active-xuat-hien-voi-ngoai-hinh-ham-ho-2803301.html', CAST(0x0000A1D001315BC9 AS DateTime), CAST(0x0000A1D001315BC9 AS DateTime), NULL, 1, CAST(0x0000A1D000911D9C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (20, N'Dàn âm thanh đúc từ nhôm nguyên khối của Bang & Olufsen', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/thiet-bi-nghe-nhin/dan-am-thanh-duc-tu-nhom-nguyen-khoi-cua-bang-amp-olufsen-2770331.html''><img src=''http://s.f5.img.vnexpress.net/2013/05/31/IMG-0715-JPG-1369987695_105x80.jpg'' width=''105'' height=''80''></a><br>Thương hiệu cao cấp tới từ Đan Mạch vừa trình làng hệ thống loa âm thanh vòm mang tên BeoLab 14 với giá hơn 130 triệu đồng, gây ấn tượng bằng các loa vệ tinh thiết kế đẹp mắt từ nhôm nguyên khối.', N'<div id="article_content">
                    <p class="Normal">
	BeoLab 14 cũng là hệ thống loa âm thanh vòm mang tính mở cao nhất của Bang & Olufsen khi không chỉ cho phép ghép nối với các dòng TV đắt tiền BeoVision của hãng, mà còn có thể dễ dàng phối ghép với các thiết bị, nguồn phát hay hệ thống Home Theater phổ biến khác.</p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="IMG-0682-JPG-1369987093_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/IMG-0682-JPG-1369987093_500x0.jpg" style="width:500px;"></td>
		</tr><tr><td class="Image">
				BeoLab 14 xuất hiện ở showroom của Bang & Olufsen ở Tràng Tiền Plaza (Hà Nội).</td>
		</tr></tbody></table><p class="Normal">
	Sản phẩm âm thanh mới của Bang & Olufsen gồm 2 phiên bản, phiên bản 4.1 bao gồm 5 loa vệ tinh chủ động, có thể kết hợp với loa center trên TV BeoVision để trở thành hệ thống âm thanh 5.1 kênh. Phiên bản thứ hai bao gồm sẵn 6 loa 5.1 kênh với 1 loa siêu trầm, được tối ưu với các dòng AV Receiver như AVR-1312, AVR-2805 của Denon hay SR 4500 của Denon, VSX-S300 của Onkyo.</p>
<p class="Normal">
	Trái tim của hệ thống loa BeoLab14 nằm ở loa siêu trầm (subwoofer) có công suất 280 Watt với kiểu dáng đẹp mắt hình tháp. Bộ loa này có khả năng thể hiện âm thanh ở những tần số thấp nhất, xuống đến 26 Hz và giúp tái hiện một cách trung thực  những cảnh cháy nổ trong phim hành động. Khi kết nối với TV BeoVision, loa siêu trầm cũng chính là một ampli class D xử lý các tín hiệu âm thanh cho toàn hệ thống.</p>
<p class="Normal">
	5 loa vệ tinh còn lại trong hệ thống BeoLab 14 đạt công suất 140 Watt mỗi chiếc, được trang bị bộ xử lý tín hiệu kỹ thuật số đặc biệt và hệ thống âm siêu trầm tuyến tính. Từng loa vệ tinh đều được điều khiển bằng bộ khuếch đại âm thanh độc lập, cho phép tạo âm thanh ấn tượng so với kích thước nhỏ gọn.</p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="BVi11-13SK-AMe03-1369987094_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/BVi11-13SK-AMe03-1369987094_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				BeoLab 14 là hệ thống âm thanh mang tính mở và có giá bán thuộc hàng mềm của Bang & Olufsen.</td>
		</tr></tbody></table><p class="Normal">
	Các mẫu loa vệ tinh gây ấn tượng với thiết kế tỉ mỉ, ghép từ 3 miếng nhôm nguyên khối riêng biệt, dày và rất cứng, được Bang & Olufsen dập đúc dưới máy ép áp lực 170 tấn. Điều này khiến cho trọng lượng của mỗi loa đều rất nặng khi di chuyển, nhưng chắc chắn để đặt trên chân đế. Thiết kế đặc biệt của Bang & Olufsen cho phép treo các loa vệ tinh trên trần, gắn trên tường dễ dàng dù có trọng lượng lớn.</p>
<p class="Normal">
	Khi lựa chọn BeoLab 14, khách hàng có thể tùy chọn 6 phiên bản khác nhau, thay đổi bằng các màu của mặt căng bảo vệ củ loa, từ xanh, đen, xám cho tới đỏ, trắng hoặc ghi.</p>
<p class="Normal">
	Hiện tại, hệ thống loa âm thanh vòm BeoLab 14 đang được Bang & Olufsen phân phối chính thức tại Việt Nam với giá 132.770.000 đồng.</p>
<p class="Normal" style="text-align:center;">
	<strong><a title="Hình ảnh thực tế Bang &amp; Olufsen BeoLab 14" href="http://sohoa.vnexpress.net/tin-tuc/san-pham/thiet-bi-nghe-nhin/dan-am-thanh-duc-tu-nhom-nguyen-khoi-cua-bang-amp-olufsen-2770331-p2.html">Hình ảnh thực tế Bang & Olufsen BeoLab 14</a></strong></p>
<p class="Normal" style="text-align:right;">
	<em>Bài và ảnh: </em><strong>Tuấn Anh</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/thiet-bi-nghe-nhin/dan-am-thanh-duc-tu-nhom-nguyen-khoi-cua-bang-amp-olufsen-2770331.html', CAST(0x0000A1D001315DC5 AS DateTime), CAST(0x0000A1D001315DC5 AS DateTime), NULL, 0, CAST(0x0000A1CF01499700 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (21, N'Thương hiệu Kodak sắp hồi sinh với máy ảnh Micro Four Thirds', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/may-anh/thuong-hieu-kodak-sap-hoi-sinh-voi-may-anh-micro-four-thirds-2770388.html''><img src=''http://s.f7.img.vnexpress.net/2013/05/31/Kodak-S1-mirrorless-1369992814_105x80.jpg'' width=''105'' height=''80''></a><br>Chiếc Kodak S1 có ống kính tháo rời, tích hợp kết nối Wi-Fi và màn hình lật nghiêng để thay đổi góc nhìn. ', N'<div id="article_content">
                    <p class="Normal">
	Trang <em>DcFever</em> hôm nay công bố hình ảnh Kodak S1, chiếc camera mang cảm biến Micro Four Thirds và ống kính có thể tháo rời. Dù mang thương hiệu Kodak nhưng đây là sản phẩm của công ty JK Imaging sau khi đạt được thoả thuận mua bản quyền tên thương hiệu năm ngoái. </p>
<p class="Normal">
	Cùng với Kodak S1, nhà sản xuất cũng tung ra mẫu máy ảnh compact mang tên ZS41 với ống kính zoom quang 4x, tiêu cự 28-112 mm f/1.8-2.5.</p>
<p class="Normal">
	<em>Một số hình ảnh của S1. </em></p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="Kodak-S1-mirrorless-interchangeable-lens" src="http://l.f5.img.vnexpress.net/2013/05/31/Kodak-S1-mirrorless-1369992814_500x0.jpg" style="width:500px;"></td>
		</tr><tr><td class="Image">
				Màn hình lật nghiêng phía sau.</td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="Kodak-S1-mirrorless-interchangeable-lens" src="http://l.f5.img.vnexpress.net/2013/05/31/Kodak-S1-mirrorless-1369992815_500x0.jpg" style="width:500px;"></td>
		</tr><tr><td class="Image">
				Cảm biến Micro Four Thirds.</td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="Kodak-S1-mirrorless-interchangeable-lens" src="http://l.f5.img.vnexpress.net/2013/05/31/Kodak-S1-mirrorless-1369992816_500x0.jpg" style="width:500px;"></td>
		</tr><tr><td class="Image">
				Máy có hai màu đen và trắng.</td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="Kodak-S1-mirrorless-interchangeable-lens" src="http://l.f5.img.vnexpress.net/2013/05/31/Kodak-S1-mirrorless-1369992816_500x0.jpg" style="width:500px;"></td>
		</tr><tr><td class="Image">
				Đèn flash tháo rời.</td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="Kodak-S1-mirrorless-interchangeable-lens" src="http://l.f5.img.vnexpress.net/2013/05/31/Kodak-S1-mirrorless-1369992816_500x0.jpg" width="500"></td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="Kodak-ZZ41-back[1354083860].jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/Kodak-ZZ41-back-1369992819_500x0.jpg" style="width:500px;"></td>
		</tr><tr><td class="Image">
				Thiết kế phím bấm phía sau khá đơn giản.</td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="Kodak-ZZ41-camera-front[1354083860].jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/Kodak-ZZ41-camera-fr-1369992819_500x0.jpg" width="500"></td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="Kodak-ZZ41[1354083860].jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/Kodak-ZZ41-1369992819_500x0.jpg" style="width:500px;"></td>
		</tr><tr><td class="Image">
				Dù mang thương hiệu Kodak nhưng S1 không phải là sản phẩm do công ty này sản xuất.</td>
		</tr></tbody></table><p style="text-align:right;">
	<strong>Hoài Anh</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/may-anh/thuong-hieu-kodak-sap-hoi-sinh-voi-may-anh-micro-four-thirds-2770388.html', CAST(0x0000A1D001315F9D AS DateTime), CAST(0x0000A1D001315F9D AS DateTime), CAST(0x0000A460014BFB8D AS DateTime), 1, CAST(0x0000A1CF01120DD0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (22, N'Laptop Mac đầu tiên không do Apple sản xuất', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/laptop/laptop-mac-dau-tien-khong-do-apple-san-xuat-2770165.html''><img src=''http://s.f7.img.vnexpress.net/2013/05/31/1-1369968430_105x80.jpg'' width=''105'' height=''80''></a><br>Chiếc máy tính xách tay chạy hệ điều hành Mac đầu tiên do một hãng có tên Colby Systems sản xuất vào 1987, hai năm trước khi Apple tự sản xuất ra mẫu laptop đầu tiên của mình là Macintosh Portable.', N'<div id="article_content">
                    <p>
	Sản phẩm có tên gọi ban đầu là Colby Walkmac. Đây là chiếc máy tính Mac đầu tiên chạy bằng pin và là mẫu laptop Mac đầu tiên dùng màn hình công nghệ LCD. Máy sử dụng bo mạch chủ Mac SE-30 và hệ thống bàn phím tích hợp</p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td style="text-align: center;">
				<p>
					<img alt="1-1369968429_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/1-1369968429_500x0.jpg" style="width:500px;"></p>
			</td>
		</tr><tr><td class="Image">
				Máy tính chạy hệ điều hành Mac của Colby nặng gần 6 kg.</td>
		</tr></tbody></table><p>
	Theo <em>Cnet</em>, Colby Systems đã bán được hàng nghìn chiếc Walkmac từ năm 1987 đến 1991. Thậm chí, Chuck Colby, người sáng lập ra hãng này, còn cho biết trước khi Apple bán laptop của riêng mình, họ luôn nhận được các cuộc gọi hỏi mua máy tính Walkmac từ khách hàng. Kết quả là "Quả táo" phải cung cấp số điện thoại của Colby Systems cho các "thượng đế".</p>
<p>
	Sau khi Apple trình làng Macintosh Portable, Colby Systems vẫn tiếp tục bán khá chạy các mẫu Walkmac. Thậm chí, họ còn đưa ra bản bản nâng cấp dùng chip Motorola 68030 mạnh hơn cả mẫu vi xử lý dùng trên laptop của Apple lúc đó là 68HC000. Walkmac sử dụng bộ nhớ 1 MB, nặng khoảng 5,9 kg và có giá bán gần 6.000 USD thời bấy giờ, rẻ hơn so với Macintosh Portable vốn có giá là 7.300 USD.</p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="Macintosh Portable của Apple được giới thiệu vào năm 1989. Ảnh:" src="http://l.f5.img.vnexpress.net/2013/05/31/mac-1369970621_500x0.jpg" style="width:500px;"></td>
		</tr><tr><td class="Image">
				Macintosh Portable của Apple được giới thiệu vào năm 1989. Ảnh: <em>Oldcomputers.</em></td>
		</tr></tbody></table><p>
	Tuy nhiên, không lâu sau Colby bị Sony doạ kiện vì tên máy tính Walkmac có phần hơi giống thương hiệu Walkman. Hãng sản xuất không còn cách nào khác là phải đổi tên Walkmac thành Colby SE30.</p>
<p>
	<strong>Ảnh thực tế máy tính Colby Walkmac</strong>:</p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="4_1369968392[1408085622].jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/4-1369968433_500x0.jpg" style="width:500px;"></td>
		</tr><tr><td class="Image">
				 </td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="7_1369968392[1408085622].jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/7-1369968433_500x0.jpg" style="width:500px;"></td>
		</tr><tr><td class="Image">
				Sản phẩm có kích thước cồng kềnh khi đặt cạnh laptop Apple hiện nay.</td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="3_1369968392[1408085622].jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/3-1369968433_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				 </td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="5_1369968392[1408085622].jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/5-1369968433_500x0.jpg" style="width:500px;"></td>
		</tr><tr><td class="Image">
				Colby Walkmac so độ dày với MacBook Air.</td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="6_1369968392[1408085622].jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/6-1369968434_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				 </td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="2_1369968392[1408085622].jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/2-1369968434_500x0.jpg" style="width:500px;"></td>
		</tr><tr><td class="Image">
				Đáy máy.</td>
		</tr></tbody></table><p style="text-align:right;">
	<strong>Đức Trí</strong><br>
	Ảnh: <em>Cnet</em></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/laptop/laptop-mac-dau-tien-khong-do-apple-san-xuat-2770165.html', CAST(0x0000A1D00131615F AS DateTime), CAST(0x0000A1D00131615F AS DateTime), CAST(0x0000A460014BFB8D AS DateTime), 1, CAST(0x0000A1CF00B3856C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (23, N'Hình ảnh đầu tiên về 2 mẫu compact zoom 52x của Kodak', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/may-anh/hinh-anh-dau-tien-ve-2-mau-compact-zoom-52x-cua-kodak-2770152.html''><img src=''http://s.f8.img.vnexpress.net/2013/05/31/130529-kodak-19-1369967370_105x80.jpg'' width=''105'' height=''80''></a><br>Cả 2 model compact siêu zoom này còn hỗ trợ ghi hình Full HD và đều được trang bị cụm ống kính dải zoom siêu rộng với thành phần thấu kính phi cầu bên trong.', N'<div id="article_content">
                    <p class="Normal">
	Trở lại thời điểm cách đây hơn 1 tháng, Kodak từng giới thiệu một mẫu máy ảnh mới thuộc dòng Bridge camera (ống kính siêu zoom trong trong kiểu dáng những chiếc DSLR phổ thông) tên gọi Astro Zoom AZ361 (zoom quang 36x) với mức giá khá mềm.</p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="130529-kodak-19-1369967370_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/130529-kodak-19-1369967370_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				Kodak SZ521. Ảnh: <em>DCFever</em>.</td>
		</tr></tbody></table><p class="Normal">
	Hiện tại, theo những hình ảnh rò rỉ được đăng tải trên trang DCFever cho thấy nhiều khả năng Kodak sẽ tiếp tục mang đến người dùng 2 model siêu zoom mới với dải zoom lên đến 52x có tên gọi lần lượt là SZ521 và SZ522. Cũng theo trang công nghệ này, cụm ống kính siêu zoom PIXPRO trên cả 2 mẫu camera siêu zoom mới sẽ có trị số khẩu độ f2.9 – 5.6; và được trang bị thành phần thấu kính phi cầu, nhằm giảm thiểu tối đa hiện tượng cầu sai. Nhiều khả năng cả SZ521 và SZ522 sẽ hỗ trợ ghi hình độ phân giải Full HD. Tương tự như mẫu Astro Zoom AZ361, cả SZ521 và SZ522 đều do JK Imaging, một đối tác của hãng trực tiếp sản xuất.</p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="130529-kodak-20-1369967370_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/130529-kodak-20-1369967370_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				Kodak SZ522. Ảnh: <em>DCFever</em>.</td>
		</tr></tbody></table><p class="Normal">
	Bên cạnh những hình ảnh mới của 2 mẫu siêu zoom, DCFever còn đăng tải thêm một số hình ảnh của mẫu mirrorless S1 mà Kodak sẽ dự định tung ra thị trường ngay trong năm nay. Về tính năng, Kodak Pixpro S1 sẽ được trang bị cảm biến định dạng Micro Four Thirds, màn hình LCD có thể chỉnh nghiêng, Wi-Fi tích hợp (cho phép điều khiển máy từ xa), hot shoe dùng cho Flash rời hay kính ngắm điện tử.  Kodak Pixpro S1 cũng được trang bị nút ghi hình độc lập cùng 2 nút chức năng FN1 và FN2 cho phép người dùng gán nhiều chức năng khác nhau khá tiện lợi.</p>
<p class="Normal" style="text-align:center;">
	<a title="Thêm hình ảnh Kodak Pixpro S1" href="http://sohoa.vnexpress.net/tin-tuc/san-pham/may-anh/hinh-anh-dau-tien-ve-2-mau-compact-zoom-52x-cua-kodak-2770152-p2.html">Thêm hình ảnh Kodak Pixpro S1</a></p>
<p class="Normal" style="text-align:right;">
	<strong>Quỳnh Lâm</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/may-anh/hinh-anh-dau-tien-ve-2-mau-compact-zoom-52x-cua-kodak-2770152.html', CAST(0x0000A1D001316323 AS DateTime), CAST(0x0000A1D001316323 AS DateTime), CAST(0x0000A460014C386C AS DateTime), 1, CAST(0x0000A1CF00A04358 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (24, N'Tablet Asus dùng chip bốn lõi giá hơn 3 triệu đồng', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/may-tinh-bang/tablet-asus-dung-chip-bon-loi-gia-hon-3-trieu-dong-2770128.html''><img src=''http://s.f5.img.vnexpress.net/2013/05/31/asus-1369965719_105x80.jpg'' width=''105'' height=''80''></a><br>Sản phẩm thuộc dòng Memo Pad được dự đoán là sẽ chính thức trình làng tại sự kiện Computex 2013 ở Đài Loan vào đầu tháng 6 năm nay.', N'<div id="article_content">
                    <p class="Normal">
	Theo <em>Yugatech</em>, tablet mới của Asus có tên là MemoPad 7 HD. Đây là bản nâng cấp của mẫu <a href="http://sohoa.vnexpress.net/danh-gia/may-tinh-bang/danh-gia-asus-memo-pad-may-tinh-bang-7-inch-gia-re-2593708.html">Memo Pad 7</a> với chip đa lõi và bộ nhớ trong. Phiên bản Memo Pad 7 hiện tại chỉ dùng bộ xử lý lõi đơn và bộ nhớ 8 GB.</p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="asus-1369965716_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/asus-1369965716_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				Tablet MemoPad mới của Asus sẽ được trang bị bộ xử lý đa lõi mạnh mẽ hơn thế hệ hiện tại. Ảnh:<em> GSM Arena.</em></td>
		</tr></tbody></table><p>
	Về cấu hình, Asus Memo Pad 7 HD được trang bị màn hình độ phân giải 1.280 x 720 pixel với mật độ điểm ảnh là 210 ppi. Máy sử dụng chip bốn lõi tốc độ 1,6 GHz, RAm 1 GB cùng bộ nhớ trong 16 GB. Phiên bản Android cài trên model này là 4.2 Jelly Bean.</p>
<p>
	Theo dự kiến, máy sẽ được bán với các màu đen, trắng, xanh lam, hồng và vàng. Giá bán của Memo Pad 7 là 169 USD (khoảng 3,5 triệu đồng).</p>
<p style="text-align:right;">
	<strong>Thanh Tùng</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/may-tinh-bang/tablet-asus-dung-chip-bon-loi-gia-hon-3-trieu-dong-2770128.html', CAST(0x0000A1D001316550 AS DateTime), CAST(0x0000A1D001316550 AS DateTime), CAST(0x0000A460014C386C AS DateTime), 1, CAST(0x0000A1CF009D35B4 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (25, N'HTC không sản xuất tablet Windows RT 10 inch', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/may-tinh-bang/htc-khong-san-xuat-tablet-windows-rt-10-inch-2770131.html''><img src=''http://s.f7.img.vnexpress.net/2013/05/31/htc-1369965927_105x80.png'' width=''105'' height=''80''></a><br>Thay vì tung ra hai máy tính bảng Windows RT như kế hoạch, HTC có thể chỉ tập trung nghiên cứu một model 7 inch giá rẻ duy nhất do rào cản về giá và nguồn cầu thị trường.', N'<div id="article_content">
                    <table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="htc-1369965926_500x0.png" src="http://l.f5.img.vnexpress.net/2013/05/31/htc-1369965926_500x0.png" width="500"></td>
		</tr><tr><td class="Image">
				Một mẫu concept tablet 7 inch chạy WIndows RT của HTC. Ảnh: <em>Venturebeat.</em></td>
		</tr></tbody></table><p>
	Theo <em>Bloomberg, </em>tablet Windows RT cỡ lớn có chi phí sản xuất và giá bán cao nên sẽ khiến cho sản phẩm khó tiếp cận được với khách hàng. Mới đây, công ty nghiên cứu thị trường IDC cho thấy số tablet chạy Windows RT bán ra trong quý I năm nay chỉ khoảng 200.000 máy nên nhà sản xuất Đài Loan càng phải xem xét lại kế hoạch của mình.</p>
<p>
	Ngoài ra, tablet 7 inch đang được người dùng ưa chuộng trên thị trường. Do đó, việc tung ra các sản phẩm có kích thước này được xem là phù hợp hơn, đặc biệt là khi HTC đang gặp khó khăn về cả doanh số lẫn thị phần cùng một loạt thay đổi lớn về nhân sự.</p>
<p>
	Nguồn tin cho biết máy tính bảng 7 inch giá rẻ mới của HTC sẽ sử dụng bộ xử lý do Qualcomm sản xuất. Theo dự kiến, hãng sẽ bắt đầu chạy thử nghiệm phần mềm trên sản phẩm vào tháng 12 năm nay.</p>
<p>
	Khi được hỏi về kế hoạch sản xuất tablet Windows RT, đại diện hãng Đài Loan từ chối bình luận về những dự đoán này.</p>
<p style="text-align:right;">
	<strong>Thanh Tùng</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/may-tinh-bang/htc-khong-san-xuat-tablet-windows-rt-10-inch-2770131.html', CAST(0x0000A1D0013167F1 AS DateTime), CAST(0x0000A1D0013167F1 AS DateTime), CAST(0x0000A460014C386C AS DateTime), 1, CAST(0x0000A1CF009D0F08 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (26, N'Galaxy S4 ''thu nhỏ'' được bán từ 20/6', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/galaxy-s4-thu-nho-duoc-ban-tu-20-6-2770139.html''><img src=''http://s.f5.img.vnexpress.net/2013/05/31/S4-Mini-2-1369966287_105x80.jpg'' width=''105'' height=''80''></a><br>Màn hình nhỏ và cấu hình thấp hơn, nhưng nhiều tính năng ở Galaxy S4 Mini vẫn giống ''đàn anh'' như chế độ chụp ảnh có âm thanh, chia sẻ Group Play hay biến điện thoại thành điều khiển từ xa.', N'<div id="article_content">
                    <p class="Normal">
	Dù được Samsung công bố và xác nhận, phải tới sự kiện 20/6 diễn ra ở London, Galaxy S4 Mini mới xuất hiện chính thức và có mặt trên thị trường.</p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="S4-Mini-3-1369966286_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/S4-Mini-3-1369966286_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				S4 Mini trông nhỏ gọn hơn hẳn Galaxy S4.</td>
		</tr></tbody></table><p class="Normal">
	Là phiên bản thu nhỏ của S4, Mini vẫn được trang bị hệ điều hành Android 4.2.2 Jelly Bean với giao diện Touch Wiz, tích hợp tính năng WatchOn đi kèm mắt hồng ngoại cho phép điều khiển các thiết bị như TV, đầu đĩa... tại gia. Camera 8 "chấm" hỗ trợ tính năng chụp ảnh có âm thanh, tích hợp chế độ Panorama, đi kèm phần mềm chia sẻ, kết nối Group Play và theo dõi sức khỏe S-Health như ở Galaxy S4.</p>
<p class="Normal">
	Về cấu hình, Galaxy S4 Mini chỉ dùng chip lõi kép tốc độ 1,7 GHz, RAM 1,5 GB. Không được tiết lộ cụ thể, nhưng theo phỏng đoán của các trang công nghệ, dòng chip mà Samsung sử dụng có thể là Snapdragon 400 của Qualcomm, tương tự như trên Galaxy Mega 6,3 inch. Bộ nhớ trong 8 GB có khe cắm thẻ nhớ mở rộng, pin 1.900 mAh.</p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="S4-Mini-2-1369966465_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/S4-Mini-2-1369966465_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				Galaxy S4 Mini có cấu hình thấp và màn hình nhỏ hơn.</td>
		</tr></tbody></table><p class="Normal">
	Ngoài cấu hình, kích thước của sản phẩm cũng được thu nhỏ lại nhiều so với "đàn anh". S4 Mini có kích thước 124,6 x 61,3 mm, mỏng gần 9 mm và nhẹ 107 gram so với kích thước 136,6 x 69,8 x 7,9 mm và nặng 130 gram của Galaxy S4. Màn hình ở Mini vẫn dùng công nghệ Super AMOLED nhưng kích thước chỉ 4,3 inch và độ phân giải qHD.</p>
<p class="Normal">
	Galaxy S4 Mini vẫn có NFC, kết nối LTE và có phiên bản 2 SIM. Máy sẽ được bán ra với 2 màu đen và trắng, nhưng giá cụ thể chưa được hãng Hàn Quốc chia sẻ.</p>
<p class="Normal" style="text-align:center;">
	<strong><a title="Ảnh Galaxy S4 Mini" href="http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/galaxy-s4-thu-nho-duoc-ban-tu-20-6-2770139-p2.html">Ảnh Galaxy S4 Mini</a></strong></p>
<p class="Normal" style="text-align:right;">
	<strong>Tuấn Anh</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/galaxy-s4-thu-nho-duoc-ban-tu-20-6-2770139.html', CAST(0x0000A1D001316A6B AS DateTime), CAST(0x0000A1D001316A6B AS DateTime), NULL, 0, CAST(0x0000A1CF009CF798 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (27, N'Nexus 7 thế hệ hai xuất hiện trong video quảng cáo Google', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/may-tinh-bang/nexus-7-the-he-hai-xuat-hien-trong-video-quang-cao-google-2770101.html''><img src=''http://s.f7.img.vnexpress.net/2013/05/31/nnexus7-1369963967_105x80.png'' width=''105'' height=''80''></a><br>Máy tính bảng mới nhất của hãng tìm kiếm được cho là do ZTE sản xuất chứ không phải Asus.', N'<div id="article_content">
                    <p class="Normal">
	Trong đoạn clip quảng cáo mới nhất về Google Maps, "gã khổng lồ tìm kiếm" đã tiết lộ hình ảnh mẫu Nexus 7 thế hệ hai ở giây thứ 53. Theo <em>Slashgear</em>, sản phẩm có hình dáng giống với model ZTE Optik từng được giới thiệu vào đầu năm ngoái. Do đó, mẫu tablet mới nhất của Google được dự đoán là sẽ do hãng Trung Quốc này sản xuất chứ không phải Asus như nhiều tin đồn trước đây.</p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="nnexus7-1369963967_500x0.png" src="http://l.f5.img.vnexpress.net/2013/05/31/nnexus7-1369963967_500x0.png" style="width:500px;"></td>
		</tr><tr><td class="Image">
				Mẫu tablet được cho là Nexus 7 mới. Ảnh: <em>Slashgear.</em></td>
		</tr></tbody></table><p>
	<span>ZTE Optik có kích thước </span>193 x 119.38 x 13.2 mm. Máy sử dụng màn hình 7 inch với độ phân giải 1.280 x 800 pixel, chip Qualcomm Snapdragon lõi kép tốc độ 1,2 GHz, RAM 1 GB, bộ nhớ trong 16 GB và chạy hệ điều hành Android 3.2 Honeycomb.</p>
<p>
	Tuy nhiên, Nexus 7 mới có thể chỉ sở hữu hình dạng giống ZTE Optik chứ không cùng cấu hình. Nguyên nhân là bởi phần cứng của tablet Google thế hệ đầu tiên đã mạnh hơn nhiều với chip Tegra 3 bốn lõi.</p>
<p>
	Trước đó, một số nguồn tin cho biết máy tính bảng mới của hãng tìm kiếm sẽ được trang bị màn hình 7 inch độ phân giải lên tới 1.920 x 1.200 pixel. Máy vẫn sử dụng bộ xử lý Nvidia Tegra 3 bốn lõi nhưng chạy hệ điều hành Android phiên bản mới nhất. Thông tin về camera của sản phẩm vẫn chưa được tiết lộ.</p>
<p>
	<strong><span>Video quảng cáo Google Maps mới:</span></strong></p>
<div style="text-align:center;">
	<div id="video-2770112" data-component="true" data-component-type="video" data-component-value="2770112" style="display:none;"></div></div>
<p style="text-align:right;">
	<span><strong>Thanh Tùng</strong></span><br>
	Video: <em>Slashgear</em></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/may-tinh-bang/nexus-7-the-he-hai-xuat-hien-trong-video-quang-cao-google-2770101.html', CAST(0x0000A1D001316CDE AS DateTime), CAST(0x0000A1D001316CDE AS DateTime), NULL, 0, CAST(0x0000A1CF00938154 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (28, N'LG tung ra Optimus L4 giá rẻ chạy Android 4.1', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/lg-tung-ra-optimus-l4-gia-re-chay-android-4-1-2770121.html''><img src=''http://s.f6.img.vnexpress.net/2013/05/31/1-1369964931_105x80.jpg'' width=''105'' height=''80''></a><br>Optimus L4 của LG có tới 2 phiên bản, 1 SIM và 2 SIM, nhưng cùng cấu hình smartphone tầm thấp với chip đơn nhân, màn hình 3,8 inch và giá bán chưa đến 4 triệu đồng.', N'<div id="article_content">
                    <p class="Normal">
	Bộ đôi Optimus L4 và L4 Dual dự kiến được LG phát hành vào cuối tháng 6 tới với mức giá lần lượt 175 USD và 188 USD. Sản phẩm nằm ở phân khúc smartphone phổ thông, cấu hình thấp nhưng có lợi thế là chạy Android 4.1 Jelly Bean.</p>
<p class="Normal">
	Hai phiên bản L4 đều có chung cấu hình và chỉ khác biệt đôi chút về thiết kế. Các máy đều sử dụng chipset MT6575 đơn nhân (Cortex-A9) tốc độ 1 GHz của MediaTek, RAM 512 MB và sử dụng đồ họa PowerVR SGX531. Dòng Optimus này có màn hình 3,8 inch với độ phân giải HVGA, bộ nhớ trong 4 GB, camera 3 "chấm" và pin dung lượng 1.700 mAh.</p>
<p class="Normal">
	Hãng sản xuất Hàn Quốc cũng trang bị cho bộ đôi smartphone giá rẻ đầy đủ các kết nối, bao gồm Wi-Fi, Bluetooth 3.0, kết nối 3G hỗ trợ HSPA.</p>
<p class="Normal">
	<strong>Hình ảnh về LG Optimus L4 và L4 Dual:</strong></p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="LG-Optimus-L4-5-1369964927_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/LG-Optimus-L4-5-1369964927_500x0.jpg" width="500"></td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="LG-Optimus-L4-1369964927_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/LG-Optimus-L4-1369964927_500x0.jpg" width="500"></td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="LG-Optimus-L4-2-1369964927_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/LG-Optimus-L4-2-1369964927_500x0.jpg" width="500"></td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="LG-Optimus-L4-3-1369964928_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/LG-Optimus-L4-3-1369964928_500x0.jpg" width="493"></td>
		</tr></tbody></table><p style="text-align:right;">
	<strong>Tuấn Anh</strong><br>
	Ảnh: <em>Hi-tech.mail</em></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/lg-tung-ra-optimus-l4-gia-re-chay-android-4-1-2770121.html', CAST(0x0000A1D001316F5B AS DateTime), CAST(0x0000A1D001316F5B AS DateTime), NULL, 0, CAST(0x0000A1CF00934464 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (29, N'HTC One chạy Android nguyên gốc ra mắt với giá 599 USD', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/htc-one-chay-android-nguyen-goc-ra-mat-voi-gia-599-usd-2770109.html''><img src=''http://s.f7.img.vnexpress.net/2013/05/31/htc-one-nexus-1369964179_105x80.jpg'' width=''105'' height=''80''></a><br>Giống như Galaxy S4, HTC One phiên bản Google Edition sẽ được Google bán ra vào 20/6 mà không có bất kỳ tính năng mở rộng nào như Zoe Camera hay Beats Audio...', N'<div id="article_content">
                    <p class="Normal">
	Thay vào đó, người dùng sẽ được sử dụng và trải nghiệm hệ điều hành Android 4.2.2 Jelly Bean gốc của Google trên HTC One. Máy không đi kèm với giao diện Sense 5 mà thay vào đó là giao diện ban đầu của Android.</p>
<p class="Normal">
	Được bán chính thức trên gian hàng Google Play Store từ 26/6, nhưng HTC One có giá 599 USD, thấp hơn 50 so với model tương tự Galaxy S4 Google Edition (649 USD) và chỉ có đúng lựa chọn là màu bạc.</p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="HTC One Google Edition không khác một chiếc smartphone dòng Nexus của Google." src="http://l.f5.img.vnexpress.net/2013/05/31/htc-one-nexus-1369964179_500x0.jpg" style="width:500px;height:375px;"></td>
		</tr><tr><td class="Image">
				HTC One Google Edition không khác một chiếc smartphone dòng Nexus của Google.</td>
		</tr></tbody></table><p class="Normal">
	Theo <em>Engadget</em>, HTC One chạy Android nguyên thủy là bản không khóa mạng, đi kèm bộ nhớ trong 32 GB và hỗ trợ các băng tần 4G LTE (700/850/AWS/1900) và HSPA+ (850/1900/2100). Cấu hình của máy vẫn sử dụng chip 4 nhân Qualcomm Snapdragon 600, RAM 2 GB, màn hình Full HD 4,7 inch cùng với camera ultrapixel 4 "chấm".</p>
<p class="Normal">
	Tuy nhiên, người dùng sẽ không còn được sử dụng màn hình BlinkFeed trên Sense 5. Ngoài ra, tính năng Zoe Camera cùng một loạt phần mềm chỉnh sửa ảnh thông minh cũng được loại bỏ. Beats Audio vẫn được tích hợp vào phần cứng của HTC One Google Edition nhưng không có phần mềm hỗ trợ để kích hoạt lên. Trên One chạy Android gốc, máy vẫn dùng 2 phím cảm ứng Home và Back thay vì dùng phím ảo.</p>
<p class="Normal" style="text-align:right;">
	<strong>Tuấn Anh</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/htc-one-chay-android-nguyen-goc-ra-mat-voi-gia-599-usd-2770109.html', CAST(0x0000A1D0013170F7 AS DateTime), CAST(0x0000A1D0013170F7 AS DateTime), NULL, 0, CAST(0x0000A1CF009117C0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (30, N'Windows 8.1 trình làng và cho thử miễn phí', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/phan-mem/windows-8-1-trinh-lang-va-cho-thu-mien-phi-2770076.html''><img src=''http://s.f7.img.vnexpress.net/2013/05/30/start-with-wallpaper-1369930296_105x80.jpg'' width=''105'' height=''80''></a><br>Phiên bản nâng cấp nhỏ của Windows 8 mang trở lại nút Start, thay đổi màn hình khóa, kho ứng dụng và bàn phím. ', N'<div id="article_content">
                    <table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="windows-8-1-pre-release-multitasking-mul" src="http://l.f5.img.vnexpress.net/2013/05/30/windows-8-1-pre-rele-1369930296_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				Nút Start xuất hiện ở góc dưới. </td>
		</tr></tbody></table><p class="Normal">
	Microsoft hôm nay bất ngờ ra mắt phiên bản nâng cấp Windows 8.1. Thời điểm này sớm hơn nhiều so với dự kiến tháng 6 cho một bản dùng thử rộng rãi và chính thức cho người dùng vào cuối năm. Các thay đổi đáng chú ý được hãng công bố bao gồm màn hình khóa, giao diện Start Menu, kho ứng dụng Windows Store và bàn phím cảm ứng.</p>
<p class="Normal">
	Giống như một số ứng dụng bị rò rỉ trước đó, Microsoft cũng cập nhật một số ứng dụng bản địa và thêm một số phần mềm mới như đồng hồ bấm giờ và máy tính.  </p>
<p class="Normal">
	Một số thay đổi khác thậm chí có thể thay đổi cả cách người dùng tương tác với hệ điều hành. Đầu tiên chính là sự trở lại của nút Start quen thuộc trên tất cả các phiên bản trước đó. Ngoài ra, người dùng cũng có thể sử dụng nhiều hơn hai cửa sổ ứng dụng cùng lúc như trên Windows 8. Số lượng cũng không bị giới hạn, chỉ bị phụ thuộc vào độ phân giải màn hình, thay vì tỷ lệ 20-80 như trước đây.</p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="start-with-wallpaper-high-res-1369875187" src="http://l.f5.img.vnexpress.net/2013/05/30/start-with-wallpaper-1369930518_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				Kích cỡ ô ứng dụng phong phú hơn từ nhỏ đến lớn. </td>
		</tr></tbody></table><p class="Normal">
	Microsoft cũng có cải tiến lớn với hệ thống tìm kiếm cho phép người dùng truy cập và tìm kiếm nhiều nội dung hơn như các ứng dụng, tập tin, thiết lập và trang web gợi ý. </p>
<p class="Normal">
	Phần lớn các thay đổi đều cho thấy Microsoft đã biết lắng nghe người dùng trong suốt thời gian qua. Một số tính năng khác được cho là không đủ thời gian để nghiên cứu và phát triển kịp thời điểm ra mắt Windows 8 nay sẽ có mặt trên Windows 8.1. </p>
<p class="Normal">
	Bản dùng thử sẽ được Microsoft cho tải về vào ngày 26/6, một ngày trước khi diễn ra hội nghị Build. Tuy vậy, hãng có hé lộ một số tính năng thông qua ảnh chụp màn hình. </p>
<p class="Normal" style="text-align:center;">
	<strong><a title="Ảnh chụp màn hình Windows 8.1 do Microsoft công bố" href="http://sohoa.vnexpress.net/tin-tuc/san-pham/phan-mem/windows-8-1-trinh-lang-va-cho-thu-mien-phi-2770076-p2.html">Ảnh chụp màn hình Windows 8.1 do Microsoft công bố</a></strong></p>
<p style="text-align:right;">
	<strong>Tuấn Hưng</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/phan-mem/windows-8-1-trinh-lang-va-cho-thu-mien-phi-2770076.html', CAST(0x0000A1D001317322 AS DateTime), CAST(0x0000A1D001317322 AS DateTime), NULL, 0, CAST(0x0000A1CF000041A0 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (31, N'Kingston trình làng ổ SSDNow KC300 siêu tiết kiệm điện', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/linh-kien/kingston-trinh-lang-o-ssdnow-kc300-sieu-tiet-kiem-dien-2769932.html''><img src=''http://s.f7.img.vnexpress.net/2013/05/30/KC300-480GB-Desktop-1369905169_105x80.jpg'' width=''105'' height=''80''></a><br>KC300 giúp các mẫu laptop có thời lượng pin lâu hơn cùng phền mềm quản lý mức độ hao mòn, tuổi thọ còn lại. ', N'<div id="article_content">
                    <table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="KC300-480GB-Desktop-Notebook-Bundle-SKC3" src="http://l.f5.img.vnexpress.net/2013/05/30/KC300-480GB-Desktop-1369905295_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				SSDNow KC300. </td>
		</tr></tbody></table><p class="Normal">
	Kingston hôm nay cho ra mắt KC300, model mới nhất của dòng SSDNow. Đây là ổ đĩa thế hệ kế tiếp của dòng sản phẩm ổ cứng thể rắn dành cho doanh nghiệp của Kingston, thay thế cho SSD V+200 và KC100. KC300 có chế độ quản lý điện năng tiên tiến của bộ xử lý SF-2281 thế hệ thứ hai của LSI SandForce giúp các mẫu laptop sử dụng tiêu thụ ít điện năng. </p>
<p class="Normal">
	KC300 có tính năng SMART cấp doanh nghiệp, cho phép theo dõi các thông số như mức độ hao mòn, tuổi thọ còn lại của SSD, khuyếch đại ghi và tổng số bytes dữ liệu đã ghi vào SSD. KC300 cũng được trang bị công nghệ Bảo Vệ Toàn Vẹn Dữ Liệu Durawrite, giúp gia tăng tuổi thọ của SSD một cách hiệu quả và giảm thiểu số lần ghi vào Flash thông qua cơ chế nén thông minh mà không ảnh hưởng đến sự toàn vẹn dữ liệu. Tính năng RAISE giúp giảm số lượng lỗi không thể sửa được của ổ đĩa, nhiều hơn và tốt hơn so với mã sửa lỗi thông thường.</p>
<p class="Normal">
	KC300 được cung cấp dưới dạng ổ riêng lẽ hoặc bộ nâng cấp bao gồm phần mềm sao chép hệ điều hành và các phụ kiện cần thiết khác cho máy tính bàn hoặc máy tính xách tay. </p>
<p class="Normal" style="text-align:right;">
	<strong>Hoài Anh</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/linh-kien/kingston-trinh-lang-o-ssdnow-kc300-sieu-tiet-kiem-dien-2769932.html', CAST(0x0000A1D0013174D4 AS DateTime), CAST(0x0000A1D0013174D4 AS DateTime), NULL, 0, CAST(0x0000A1CE010C2E4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (32, N'iPod Touch thế hệ năm bản 16 GB giá gần 5 triệu đồng', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/do-choi-so/ipod-touch-the-he-nam-ban-16-gb-gia-gan-5-trieu-dong-2769898.html''><img src=''http://s.f6.img.vnexpress.net/2013/05/30/ipod-1369904160_105x80.jpg'' width=''105'' height=''80''></a><br>Phiên bản máy nghe nhạc mới của "Quả táo" đã loại bỏ tính năng camera để có được mức giá hâp dẫn.', N'<div id="article_content">
                    <table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="ipod-1369904159_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/05/30/ipod-1369904159_500x0.jpg" style="width:500px;"></td>
		</tr><tr><td class="Image">
				Mẫu iPod Touch mới của Apple chỉ có một màu duy nhất.</td>
		</tr></tbody></table><p>
	Theo <em>GSM Arena</em>, camera iSight ở mặt sau của iPod Touch 16 GB bị loại bỏ, chỉ còn duy nhất webcam ở phía trước để hỗ trợ cuộc gọi video. Bên cạnh đó, người dùng cũng chỉ có một lựa chọn màu sắc duy nhất là bạc-đen.</p>
<p>
	Về cấu hình, máy vẫn giữ nguyên màn hình Retina 4 inch với độ phân giải 1.136 x 640 pixel, bộ xử lý A5 lõi kép cùng tai nghe EarPods thế hệ mới giống như model 32 và 64 GB. Kích thước của sản phẩm là 123,4 x 58,6 x 6,1 mm. Máy hỗ trợ các kết nối như Wi-Fi, Bluetooth 4.0, giắc cắm tai nghe và cổng sạc Lightning.</p>
<p>
	Hiện Apple đã cho phép người dùng đặt mua iPod Touch 16 GB mới trên website với giá 229 USD (khoảng 4,8 triệu đồng) và máy sẽ được chuyển tới tay khách hàng từ ngày 31/5.</p>
<p style="text-align:right;">
	<strong>Tuệ Minh</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/do-choi-so/ipod-touch-the-he-nam-ban-16-gb-gia-gan-5-trieu-dong-2769898.html', CAST(0x0000A1D001317713 AS DateTime), CAST(0x0000A1D001317713 AS DateTime), NULL, 0, CAST(0x0000A1CE010A8F74 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (33, N'BenQ bán màn hình chống nhấp nháy đầu tiên tại Việt Nam', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/benq-ban-man-hinh-chong-nhap-nhay-dau-tien-tai-viet-nam-2769665.html''><img src=''http://s.f6.img.vnexpress.net/2013/05/30/benQ-1-1369901995_105x80.jpg'' width=''105'' height=''80''></a><br>Model BenQ GW2760  là màn hình máy tính đầu tiên trên thế giới được trang bị công nghệ chống nhấp nháy và được bán ra tại thị trường Việt Nam với giá 7.5 triệu đồng.', N'<div id="article_content">
                    <p>
	BenQ sử dụng màn hình bezel siêu mỏng kích thước 27 inch độ phân giải FullHD. Đây là màn hình máy tính đầu tiên được trang bị công nghệ Flicker free Backlight để loại bỏ tình trạng nhấp nháy ở những cấp độ sáng khác nhau, làm giảm sự mệt mỏi cho mắt giống các model tivi cao cấp của LG.</p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="benQ-1-1369901995_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/05/30/benQ-1-1369901995_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				Màn hình kích thước 27 inch độ phân giải FullHD cho chất lượng hiển thị ấn tượng. Ảnh: Huy Đức</td>
		</tr></tbody></table><p>
	Màn hình BenQ GW2760HS với độ tương phản động là 3000:1 và tỷ lệ tương phản là 20M:1 làm cho hình ảnh sắc nét và sâu hơn trong những cảnh tối và bố cục phức tạp. Màn hình có góc nhìn rộng lên đến gần 180 độ mà không bị sai màu.</p>
<p style="text-align:center;">
	<strong><a title="Hình ảnh thực tế màn hình của BenQ." href="http://sohoa.vnexpress.net/tin-tuc/san-pham/benq-ban-man-hinh-chong-nhap-nhay-dau-tien-tai-viet-nam-2769665-p2.html">Hình ảnh thực tế màn hình của BenQ.</a></strong></p>
<p>
	Với những người thích đọc sách thì BenQ trang bị cho model của mình chế độ Reading mô phỏng giao diện giấy in để giúp người dùng giảm sự mệt mỏi khi tập trung vàm màn hình quá lâu. Ngoài ra hệ thống còn tích hợp 6 chế độ tinh chỉnh hình ảnh là Standard, Movie, Game, Photo, sRGB, và Eco để phù hợp với nhu cầu của mọi người dùng.</p>
<p>
	Sản phẩm được trang bị đầy đủ các cổng kết nối D-Sub, DVI, HDMI, cổng xuất âm thanh và còn được tích hợp cả loa.</p>
<p style="text-align:right;">
	<em>Bài và ảnh:</em> <strong>Huy Đức</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/benq-ban-man-hinh-chong-nhap-nhay-dau-tien-tai-viet-nam-2769665.html', CAST(0x0000A1D001317901 AS DateTime), CAST(0x0000A1D001317901 AS DateTime), NULL, 0, CAST(0x0000A1CE01001C10 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (34, N'Cách tiêu tiền của các tỷ phú công nghệ', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/doi-song-so/cach-tieu-tien-cua-cac-ty-phu-cong-nghe-2803324.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=logocontent&utm_campaign=Newsletter''><img src=''http://s.f8.img.vnexpress.net/2013/06/01/hardwarezone-jpeg-1370053900_105x80.jpg'' width=''105'' height=''80''></a><br>Trong khi CEO của Amazon chi hơn 40 triệu USD để tạo ra chiếc đồng hồ chạy được tới chục nghìn năm thì giám đốc điều hành của Oracle lại có thú vui sưu tập biệt thự hàng trăm triệu đô.', N'<div id="article_content">
                    <table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="public-1370053564_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/06/01/public-1370053564_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				Sean Parker, nhà sáng lập ra dịch vụ Napster và là chủ tịch đầu tiên của Facebook, chi 10 triệu USD cho đám cưới với vợ của mình là Alexandra Lenas. Mỗi vị khách đến dự tiệc sẽ được phát cho một bộ trang phục xuất hiện trong series phim truyền hình "Game of Thrones". Ngoài ra, só tiền này còn dùng để tạo ra rừng cây, hoa cỏ, thác nước nhân tạo cùng sàn nhảy. Ảnh: <em>Public.</em></td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="The clock Bezos is having built in Texas is meant to serve as a symbol to make people think long-term." src="http://l.f5.img.vnexpress.net/2013/06/01/hardwarezone-jpeg-1370053899_500x0.jpg" style="width:500px;"></td>
		</tr><tr><td class="Image">
				Jeff Bezos, nhà sáng lập Amazon, đã đầu tư 42 triệu USD để xây dựng một chiếc đồng hồ khổng lồ hoạt động được trong 10.000 năm. Jeff muốn đặt chiếc đồng hồ tại bang Texas và muốn nó trở thành biểu tượng của sự "nghĩ xa". Ảnh:<em> Hardwarezone.</em></td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="abcnews-1370053999_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/06/01/abcnews-1370053999_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				Với khao khát được sống mãi, Peter Thiel, nhà đầu tư lớn đầu tiên của Facebook, đã chi khoảng 3,5 triệu USD cho các dự án nghiên cứu về công nghệ chống lão hoá vào năm 2006. Tiếp sau đó, nhà đầu tư này cũng rót tiền vào các dự án như tạo ra chuỗi DNA điều trị ung thư hay ứng dụng 100 Plus giúp đưa ra các lời khuyên về chăm sóc sức khoẻ giúp kéo dài tuổi thọ lên tới 100 năm.  Ảnh: <em>Abcnews.</em></td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="Richard Branson, nhà sáng lập và chủ tịch tập đoàn Virgin, mua hòn đảo Necker ở Hawaii (Mỹ) với giá 180.000 USD khi ông mới 28 tuổi. Sau đó, nhà tỷ phú này đã chi khoảng 10 triệu USD để xây dựng khu nghỉ dưỡng trên đó. Theo ước tính năm 2006, hòn đảo của Richard Branson đã có trị giá lên tới 60 triệu USD." src="http://l.f5.img.vnexpress.net/2013/06/01/idreddeer-1370054951_500x0.jpg" style="width:500px;"></td>
		</tr><tr><td class="Image">
				Richard Branson, nhà sáng lập và chủ tịch tập đoàn Virgin, mua hòn đảo Necker ở Hawaii (Mỹ) với giá 180.000 USD khi ông mới 28 tuổi. Sau đó, nhà tỷ phú này đã chi khoảng 10 triệu USD để xây dựng khu nghỉ dưỡng trên đó. Theo ước tính năm 2006, hòn đảo của Richard Branson đã có trị giá lên tới 60 triệu USD. Ảnh<em>: Idreddeer.</em></td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="gadgets-1370055221_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/06/01/gadgets-1370055221_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				<div style="color:rgb(0,0,0);background-color:rgb(255,255,255);text-align:left;text-decoration:none;border:medium none;">
					Larry Ellison, CEO của Oracle, sở hữu một bộ sưu tập biệt thư. Mới đây, ông đã chi khoảng 200 triệu USD để mua một loạt biệt thự tại Malibu, California (Mỹ). Ảnh:<em> Gadgets.</em></div>
			</td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="vator-1370055476_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/06/01/vator-1370055476_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				David Sacks, nhà sáng lập hãng công nghệ Yammmer nay thuộc sở hữu của Microsoft, đã tự tổ chức sinh nhật lần thứ 40 cho mình bằng cách mở một buổi tiệc theo phong cách thế kỷ 18 tại toà biệt thự trị giá 125 triệu USD của mình ở Los Angeles (Mỹ). Buổi tiệc này còn có sự tham gia của ca sĩ Snoop Dog. Ảnh: <em>Vator.</em></td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="latimes-1370055566_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/06/01/latimes-1370055566_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				Henry Nicholas, nhà đồng sáng lập hãng công nghệ Broadcom, tự xây dựng cho mình một hang động nằm ngay dưới ngôi nhà của mình ở bãi biển Laguna (Mỹ). Đây là nơi ông cùng bạn bè giải trí với các hoạt động như quan hệ tình dục, hút ma tuý và nghe nhạc sống. Nơi này có nhiều đồ đạc đắt đỏ, riêng nơi pha chế đồ uống đã có giá lên tới 18.000 USD. Ảnh: <em>Latimes.</em></td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="gawker-1370056230_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/06/01/gawker-1370056230_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				Larry Page, CEO kiêm nhà đồng sáng lập của Google, đã chi 45 triệu USD để mua một chiếc du thuyền siêu rộng. Chiếc du thuyền này có tới 10 phòng khác nhau với một sân đỗ cho trực thăng và một phòng gym. Ảnh: <em>Gawker.</em></td>
		</tr></tbody></table><table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="talkandroid-1370056232_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/06/01/talkandroid-1370056232_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				Cựu CEO của Google là Eric Schmidt cũng sở hữu một chiếc siêu du thuyền còn rộng hơn cả của Larry Page. Chiếc du thuyền này có giá lên tới 72,5 triệu USD. Bên cạnh đó, ông còn đầu tư 60 triệu USD để mua hai chiếc thuyền phục vụ cho mục đích nghiên cứu về đại dương. Ảnh: <em>Talkandroid.</em></td>
		</tr></tbody></table><div style="color:rgb(0,0,0);background-color:rgb(255,255,255);text-align:left;text-decoration:none;border:medium none;">
	 </div>
<div style="color:rgb(0,0,0);background-color:rgb(255,255,255);text-align:left;text-decoration:none;border:medium none;">
	<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
					<img alt="capitolfile-magazine-1370056662_500x0.gi" src="http://l.f5.img.vnexpress.net/2013/06/01/capitolfile-magazine-1370056662_500x0.gif" width="500"></td>
			</tr><tr><td class="Image">
					Bốn nhà sáng lập của một công ty công nghệ mới có tên Summit Series, gồm Elliot Bisnow, Brett Leve, Jeff Rosenthal và Jeremy Schwartz, đã mua một ngọn núi ở Eden, bang Utah (Mỹ) với giá 40 triệu USD. Số tiền này chỉ mới dành cho ngọn núi chứ chưa bao gồm nhà ở và các đồ đạc đi kèm. Họ dự định đây là nơi tổ chức các bữa tiệc và sự kiện phục vụ cho mục đích làm ăn của mình. Ảnh: <em>Capitolfile-magazine.</em></td>
			</tr></tbody></table></div>
<p style="text-align:right;">
	<strong>Đức Trí</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/doi-song-so/cach-tieu-tien-cua-cac-ty-phu-cong-nghe-2803324.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=textcontent&utm_campaign=Newsletter', CAST(0x0000A1D0015574B4 AS DateTime), CAST(0x0000A1D0015574B4 AS DateTime), NULL, 0, CAST(0x0000A1D000F05370 AS DateTime), NULL, NULL, NULL, NULL, 3, 6, 2)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (35, N'Bill Gates âm thầm đầu tư vào mạng xã hội', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/doi-song-so/bill-gates-am-tham-dau-tu-vao-mang-xa-hoi-2803281.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=logocontent&utm_campaign=Newsletter''><img src=''http://s.f8.img.vnexpress.net/2013/06/01/digitaltrends-jpeg-1370048877_105x80.jpg'' width=''105'' height=''80''></a><br>Nhà sáng lập Microsoft được cho là đã đầu tư hàng chục triệu USD để mở một mạng xã hội dành cho các nhà khoa học.', N'<div id="article_content">
                    <table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="digitaltrends-jpeg-1370048876_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/06/01/digitaltrends-jpeg-1370048876_500x0.jpg" style="width:500px;"></td>
		</tr><tr><td class="Image">
				Bill Gates được cho là đã âm thầm đầu tư vào lĩnh vực mạng xã hội. Ảnh: <em>Digitaltrends.</em></td>
		</tr></tbody></table><p>
	Theo <em>Wall Street Journal</em>, Bill Gates đã lặng lẽ bỏ ra số tiền khoảng 20 triệu USD để đầu tư vào một công ty có tên ResearchGate của Đức. Công ty này đang sở hữu một mạng xã hội cùng tên dành cho các nhà khoa học đã hoạt động được 5 năm.</p>
<p>
	Ijad Madisch, nhà sáng lập ResearchGate, đã chọn cách im lặng khi được hỏi danh tính của nhà đầu tư 20 triệu USD cho công ty của mình. Tuy nhiên, Gründerszene, một website công nghệ sau đó đã phát hiện ra một bản hợp đồng được cho là thoả thuận giữa ResearchGate và nhà sáng lập Bill Gates về khoản đầu tư.</p>
<p>
	Hiện tại, mạng xã hội ResearchGate có khoảng 2,6 triệu thành viên với số lượng đăng ký mới hàng nghìn người mỗi ngày. Trước Bill Gates, một loạt tên tuổi như Matt Cohler (nhà đầu tư cho Instagram) hay Founders Fund cũng đã chi tiền để mạng xã hội của ResearchGate phát triển.</p>
<p style="text-align:right;">
	<strong>Thanh Thuý</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/doi-song-so/bill-gates-am-tham-dau-tu-vao-mang-xa-hoi-2803281.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=textcontent&utm_campaign=Newsletter', CAST(0x0000A1D0015575B9 AS DateTime), CAST(0x0000A1D0015575B9 AS DateTime), NULL, 0, CAST(0x0000A1D0009B4F60 AS DateTime), NULL, NULL, NULL, NULL, 3, 6, 2)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (36, N'Nokia Lumia 1030 màn hình 6 inch lộ diện', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/nokia-lumia-1030-man-hinh-6-inch-lo-dien-2803306.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=logocontent&utm_campaign=Newsletter''><img src=''http://s.f5.img.vnexpress.net/2013/06/01/Nokia-1030-Lumia-1370052655_105x80.jpg'' width=''105'' height=''80''></a><br>Chiếc Windows Phone màn hình cỡ bự của Nokia xuất hiện bên cạnh HTC One Mini cùng một điện thoại Full HD 6,5 inch khác được cho là Sony Xperia L4.', N'<div id="article_content">
                    <p class="Normal">
	Trang công nghệ <em>Test-mobile</em> gây xôn xao khi vừa tung lên một bức ảnh thực tế với sự góp mặt của hàng loạt "siêu phẩm" chưa từng được Nokia, Sony hay HTC công bố, nhưng đã có nhiều tin đồn liên quan. Bức hình được cung cấp trông giống như được chụp từ bàn làm việc với nhiều sản phẩm mẫu, dạng thử nghiệm xuất hiện trên bàn.</p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="[Caption]" src="http://l.f5.img.vnexpress.net/2013/06/01/nokia-1030-leak-hum-1370051655_500x0.jpg" style="width:380px;height:615px;"></td>
		</tr></tbody></table><p class="Normal">
	Trong đó, một chiếc điện thoại Lumia màn hình rộng của Nokia xuất hiện ở phía xa, với vỏ màu xanh quen thuộc giống Lumia 900 và 800. Theo <em>Test-mobile</em>, đây chính là Lumia 1030, <a href="http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/nokia-dang-nghien-cuu-smartphone-5-inch-full-hd-2659786.html">chiếc Phablet Nokia đang phát triển</a> và có thể tung ra trong năm nay. Sản phẩm cho thấy có màn hình khá rộng với giao diện Live Tiles gồm tới 3 cột biểu tượng cỡ vừa, nhiều hơn giao diện thường thấy trên các Windows Phone hiện nay.</p>
<p class="Normal">
	Bên cạnh chiếc Phablet của Nokia, trong ảnh còn xuất hiện một chiếc smartphone được cho là <a href="http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/phien-ban-gia-re-cua-htc-one-lo-dien-2741375.html">HTC One Mini (M4)</a>, có kiểu dáng giống HTC One nhưng nhỏ gọn hơn.</p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="Sony-Togari-1370052655_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/06/01/Sony-Togari-1370052655_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				Chiếc smartphone lạ của Sony được cho là Xperia Togari.</td>
		</tr></tbody></table><p class="Normal">
	Tuy vậy, sản phẩm gây chú ý và gần ống kính nhất là Xperia L4 của Sony. Đây được cho là smartphone màn hình Full HD 6,5 inch mang tên mã Togari đang được hãng điện thoại của Nhật phát triển.</p>
<p class="Normal">
	Các tin tức trước đó cho rằng <a href="http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/phablet-full-hd-dung-pin-khung-cua-sony-2562275.html">Xperia Togari</a> sẽ xuất hiện vào nửa cuối năm nay, chạy Android 4.3 hoặc 5.0 với chip 4 nhân Snapdragon 800 của Qualcomm.</p>
<p class="Normal" style="text-align:right;">
	<strong>Mỹ Anh</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/nokia-lumia-1030-man-hinh-6-inch-lo-dien-2803306.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=textcontent&utm_campaign=Newsletter', CAST(0x0000A1D00155765F AS DateTime), CAST(0x0000A1D00155765F AS DateTime), NULL, 0, CAST(0x0000A1D0009B1E28 AS DateTime), NULL, NULL, NULL, NULL, 3, 6, 2)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (37, N'Màn hình máy tính nét gấp 4 lần full HD công nghệ IGZO của Asus', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/may-tinh-de-ban/man-hinh-may-tinh-net-gap-4-lan-full-hd-cong-nghe-igzo-cua-asus-2803313.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=logocontent&utm_campaign=Newsletter''><img src=''http://s.f7.img.vnexpress.net/2013/06/01/ASUS-Ultra-HD-IGZO-P-1370052772_105x80.jpg'' width=''105'' height=''80''></a><br>Asus PQ321 có kích thước 31,5 inch nhưng độ phân giải đạt chuẩn 4K là 3.840 x 2.160 pixel. ', N'<div id="article_content">
                    <table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="ASUS-Ultra-HD-IGZO-P-1370052772_500x0.jp" src="http://l.f5.img.vnexpress.net/2013/06/01/ASUS-Ultra-HD-IGZO-P-1370052772_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				Asus PQ321. </td>
		</tr></tbody></table><p class="Normal">
	Trong khi chuẩn 4K còn khá mới mẻ ngay cả trên các dòng màn hình TV thì Asus đã sớm đưa vào thế hệ màn hình máy để bàn mới của mình. Đặc biệt hơn, PQ321 còn sử dụng tấm nền công nghệ mới IGZO hứa hẹn độ sáng và chi tiết được cải thiện trong khi mức tiêu thụ năng lượng thấp hơn nhiều so với các dòng màn hình khác. </p>
<p class="Normal">
	IGZO sử dụng Indium Gallium Zinc Oxide thay vì silic vô định hình. Điều này giúp hỗ trợ điện tử di động lớn hơn tới khoảng 40 lần. Ngoài ra, điểm ảnh trên thực tế có thể nhỏ hơn màn hình LCD truyền thống. </p>
<p class="Normal">
	Asus không nói rõ nguồn gốc các tấm nền IGZO nhưng nhiều khả năng là từ Sharp. Công ty Nhật Bản mới tuyên bố trở lại trong tháng 4/2012 và sản xuất số lượng lớn màn hình IGZO kích thước 32 inch với độ phân giải tương tự như mẫu Asus PQ321 vừa công bố. </p>
<p class="Normal">
	Theo thông báo của Asus, màn hình mới cho mật độ điểm ảnh 140 ppi và độ sáng 350 cd/m2 và thời gian đáp ứng là 8 ms. Góc nhìn khá rộng, lên tới 176 độ theo cả hai hướng. Thiết bị hỗ trợ cổng DisplayPort, hai cổng HDMI, cổng âm thanh vào/ra. Loa stereo tích hợp có công suất 2 Watt. Độ mỏng của màn hình là 35 mm. </p>
<p class="Normal">
	Asus không công bố giá sản phẩm nhưng theo Slashgear thì riêng tấm nền màn hình đã có giá tới 5.500 USD. </p>
<p class="Normal" style="text-align:right;">
	<strong>Hoài Anh</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/may-tinh-de-ban/man-hinh-may-tinh-net-gap-4-lan-full-hd-cong-nghe-igzo-cua-asus-2803313.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=textcontent&utm_campaign=Newsletter', CAST(0x0000A1D0015576F9 AS DateTime), CAST(0x0000A1D0015576F9 AS DateTime), NULL, 0, CAST(0x0000A1D0009AEF48 AS DateTime), NULL, NULL, NULL, NULL, 3, 6, 2)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (38, N'Laptop chơi game Razer Blade được nâng cấp, thêm bản 14 inch', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/laptop/laptop-choi-game-razer-blade-duoc-nang-cap-them-ban-14-inch-2803285.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=logocontent&utm_campaign=Newsletter''><img src=''http://s.f5.img.vnexpress.net/2013/06/01/razer-1370048959_105x80.png'' width=''105'' height=''80''></a><br>Phiên bản Razer Blade 17,3 inch mới sử dụng bộ xử lý thế hệ bốn mạnh mẽ hơn của Intel trong khi model 14 inch được quảng cáo là "laptop chơi game mỏng nhất thế giới".', N'<div id="article_content">
                    <p>
	Theo <em>Notebookcheck</em>, Razer Blade 17,3 inch vừa ra mắt được trang bị bộ xử lý nền tảng Haswell mới nhất. Máy vẫn sở hữu màn hình độ phân giải Full HD cùng bộ nhớ RAM DDR3 dung lượng 8 GB. Bên cạnh đó, model này còn dùng ổ SSD 512 GB và card đồ hoạ rời Nvidia GeForce GTX 765M với VRAM 2 GB.</p>
<div class="csc-default csc-space-before- csc-space-after-" id="c1174423">
	<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
					<img alt="razer-1370049163_500x0.png" src="http://l.f5.img.vnexpress.net/2013/06/01/razer-1370049163_500x0.png" style="width:500px;"></td>
			</tr><tr><td class="Image">
					Razer Blade 14 inch có thiết kế gần giống MacBook Pro. Ảnh<em>: Notebookcheck.</em></td>
			</tr></tbody></table><p class="align-justify">
		Trong khi đó, phiên bản 14 inch lại sở hữu độ dày khoảng 16,7 mm. Thiết kế của sản phẩm được đánh giá là khá giống MacBook Air và dùng màn hình độ phân giải 1.600 x 900 pixel. Tuy nhiên, sản phẩm không còn được tích hợp màn hình phụ với giao diện Switchblade UI hiển thị các phím chức năng độc đáo như mẫu 17 inch nữa.</p>
	<p class="align-justify">
		Theo dự kiến, Razer Blade mới sẽ được bán tại Anh và Mỹ vào ngày 3/6 sắp tới. Giá của model 17,3 inch là 2.299 USD (khoảng 48,3 triệu đồng) còn 14 inch là 1.799 USD (khoảng 37,8 triệu đồng).</p>
	<p class="align-justify" style="text-align:center;">
		<strong><a title="Ảnh thực tế laptop chơi game Razer Blade mới" href="http://sohoa.vnexpress.net/tin-tuc/san-pham/laptop/laptop-choi-game-razer-blade-duoc-nang-cap-them-ban-14-inch-2803285-p2.html">Ảnh thực tế laptop chơi game Razer Blade mới</a></strong></p>
	<p class="align-justify" style="text-align:center;">
		<strong><a title="Ảnh chính thức laptop chơi game Razer Blade 17 inch mới" href="http://sohoa.vnexpress.net/tin-tuc/san-pham/laptop/laptop-choi-game-razer-blade-duoc-nang-cap-them-ban-14-inch-2803285-p3.html">Ảnh chính thức laptop chơi game Razer Blade 17 inch mới</a></strong></p>
	<p class="align-justify" style="text-align:right;">
		<strong>Thanh Tùng</strong></p>
</div>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/laptop/laptop-choi-game-razer-blade-duoc-nang-cap-them-ban-14-inch-2803285.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=textcontent&utm_campaign=Newsletter', CAST(0x0000A1D001557799 AS DateTime), CAST(0x0000A1D001557799 AS DateTime), NULL, 0, CAST(0x0000A1D000917328 AS DateTime), NULL, NULL, NULL, NULL, 3, 6, 2)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (39, N'Máy tính all-in-one chạy Android của Acer gần 9 triệu đồng', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/may-tinh-de-ban/may-tinh-all-in-one-chay-android-cua-acer-gan-9-trieu-dong-2803287.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=logocontent&utm_campaign=Newsletter''><img src=''http://s.f6.img.vnexpress.net/2013/06/01/acer-1370049251_105x80.jpg'' width=''105'' height=''80''></a><br>Sản phẩm có tên DA220HQL dùng bộ xử lý lõi kép và chạy trên hệ điều hành Android 4.0.', N'<div id="article_content">
                    <div class="csc-default csc-space-before- csc-space-after-" id="c1174554">
	<p class="align-justify">
		Theo <em>Cnet</em>, Acer DA220HQL được trang bị màn hình cảm ứng 21,5 inch độ phân giải 1.920 x 1.080 pixel. Máy sử dụng bộ xử lý Texas Instruments OMAP 4430 với hai lõi Cortex A9.</p>
	<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
					<img alt="acer-1370049251_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/06/01/acer-1370049251_500x0.jpg" style="width:500px;"></td>
			</tr><tr><td class="Image">
					Acer DA220HQL chạy Android và sở hữu màn hình cảm ứng kích thước lớn. Ảnh: <em>CNet.</em></td>
			</tr></tbody></table><p class="align-justify">
		Ngoài ra, sản phẩm mới của Acer còn sở hữu RAM 1 GB và bộ nhớ trong 8 GB. Mặt trước của máy có camera phụ để thực hiện cuộc gọi video. DA220HQL có tích hợp loa, hỗ trợ phụ kiện không dây như bàn phím, chuột. Các kết nối được tích hợp trên model này gồm Wi-Fi, micro-HDMI và microUSB 2.0.</p>
	<p class="align-justify">
		Theo dự kiến, mẫu máy tính all-in-one chạy Android mới của Acer sẽ được bán với giá trên dưới 425 USD (khoảng 8,9 triệu đồng).</p>
</div>
<p style="text-align:right;">
	<strong>Thanh Tùng</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/may-tinh-de-ban/may-tinh-all-in-one-chay-android-cua-acer-gan-9-trieu-dong-2803287.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=textcontent&utm_campaign=Newsletter', CAST(0x0000A1D001557838 AS DateTime), CAST(0x0000A1D001557838 AS DateTime), NULL, 0, CAST(0x0000A1D000915BB8 AS DateTime), NULL, NULL, NULL, NULL, 3, 6, 2)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (40, N'Tấm nền màn hình iPad 5 xuất hiện', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/may-tinh-bang/tam-nen-man-hinh-ipad-5-xuat-hien-2803289.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=logocontent&utm_campaign=Newsletter''><img src=''http://s.f8.img.vnexpress.net/2013/06/01/ipad-5-front-panel-l-1370050733_105x80.png'' width=''105'' height=''80''></a><br>Linh kiện mới tiếp tục khẳng định iPad thế hệ 5 có viền siêu mỏng và thiết kế mang phong cách của iPad Mini giúp nhỏ gọn hơn. ', N'<div id="article_content">
                    <table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="ipad-5-front-panel-l-1370050733_500x0.pn" src="http://l.f5.img.vnexpress.net/2013/06/01/ipad-5-front-panel-l-1370050733_500x0.png" width="500"></td>
		</tr><tr><td class="Image">
				Tấm nền màn hình của iPad thế hệ 5. </td>
		</tr></tbody></table><p class="Normal">
	Đây lần đầu tiên tấm nền màn hình của iPad thế hệ 5 (tạm gọi là iPad 5) xuất hiện nhưng khá trùng khớp với các tin đồn trước đó. Hình ảnh do <em>Apple.pro</em> đăng tải cho thấy lớp viền hai bên mỏng chỉ hơn một phần ba so với thế hệ cũ. Ngoài ra, lớp viền trên và dưới của máy cũng mỏng hơn một chút so với thế hệ trước. Một khoảng trống cho nút Home ở giữa cũng như dây cáp xuất hiện kèm tầm nền. </p>
<p class="Normal">
	Lớp viền mới chắc chắn sẽ giúp iPad 5 mỏng nhẹ hơn đáng kể. Digitmes cho biết từ các thành phẩm linh kiện, máy có thể có cân nặng nhẹ hơn từ 25 đến 33% so với thế hệ cũ. Mẫu iPad thế hệ 4 hiện có cân nặng 652 gram nên sản phẩm mới sẽ nằm trong khoảng từ 401 đến 489 gram. Con số này còn nhẹ hơn cả iPad 2 là 602 gram, model được đánh giá có cân nặng và dễ cầm nhất trong dòng iPad của Apple. </p>
<p class="Normal">
	Để phù hợp với thay đổi phần cứng, Apple cũng sẽ có tinh chỉnh phần mềm phù hợp. Giống như iPad Mini, phiên bản mới cũng sẽ từ chối nhận cảm ứng ở viền để tránh trường hợp khi cầm ngón tay cái chạm phải. </p>
<p class="Normal">
	iPad thế hệ tiếp theo vẫn sử dụng màn hình độ nét cao Retina như thế hệ 3 và 4. </p>
<p class="Normal">
	Apple dự kiến sẽ tổ chức hội nghị WWDC 2013 vào tháng tới nhưng nhiều khả năng sẽ chỉ xuất hiện iOS 7 và MacBook mới. </p>
<p class="Normal" style="text-align:right;">
	<strong>Hoài Anh</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/may-tinh-bang/tam-nen-man-hinh-ipad-5-xuat-hien-2803289.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=textcontent&utm_campaign=Newsletter', CAST(0x0000A1D0015579DF AS DateTime), CAST(0x0000A1D0015579DF AS DateTime), NULL, 0, CAST(0x0000A1D000913AE8 AS DateTime), NULL, NULL, NULL, NULL, 3, 6, 2)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (41, N'Galaxy S4 Active xuất hiện với ngoại hình hầm hố', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/galaxy-s4-active-xuat-hien-voi-ngoai-hinh-ham-ho-2803301.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=logocontent&utm_campaign=Newsletter''><img src=''http://s.f7.img.vnexpress.net/2013/06/01/Galaxy-S4-Active-1370050651_105x80.jpg'' width=''105'' height=''80''></a><br>Hình ảnh được cho là chính thức về chiếc Galaxy S4 bản chống nước và chống bụi vừa xuất hiện, mang nhiều chi tiết thiết kế khác S4 thông thường.', N'', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/galaxy-s4-active-xuat-hien-voi-ngoai-hinh-ham-ho-2803301.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=textcontent&utm_campaign=Newsletter', CAST(0x0000A1D001557A77 AS DateTime), CAST(0x0000A1D001557A77 AS DateTime), NULL, 0, CAST(0x0000A1D000911D9C AS DateTime), NULL, NULL, NULL, NULL, 3, 6, 2)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (43, N'Cuộc đua smartphone giá rẻ trở nên nóng bỏng', N'<a href=''http://sohoa.vnexpress.net/tin-tuc/doi-song-so/thi-truong/cuoc-dua-smartphone-gia-re-tro-nen-nong-bong-2770245.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=logocontent&utm_campaign=Newsletter''><img src=''http://s.f6.img.vnexpress.net/2013/05/31/iphone5-1369974772_105x80.jpg'' width=''105'' height=''80''></a><br>Những năm qua các nhà sản xuất thiết bị Android liên tục tung ra những mẫu smartphone cao cấp để đua với iPhone. Nhưng tình thế đang thay đổi và Apple có thể sẽ phá lệ, bán cả iPhone giá rẻ để không bị đạo quân Android lấn át.', N'<div id="article_content">
                    <p class="Normal">
	Số liệu phân tích của IDC trong quí 1/2013 ghi nhận lần đầu tiên lượng smartphone xuất xưởng trên toàn cầu đã vượt điện thoại thông thường (feature phone). Theo đó, các nhà sản xuất trên toàn thế giới đã bán ra 418,6 triệu chiếc điện thoại di động, smartphone chiếm 51,6% với 216,2 triệu chiếc.</p>
<p class="Normal">
	Nhu cầu của người dùng về một thiết bị di động hoạt động liên tục, có khả năng kết nối internet mọi nơi để truy cập mạng xã hội, duyệt web, gửi/nhận email… ngày càng tăng cao tạo đà cho thị trường smartphone tiếp tục tăng trưởng mạnh. </p>
<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1"><tbody><tr><td>
				<img alt="S4-1369974914_500x0.jpg" src="http://l.f5.img.vnexpress.net/2013/05/31/S4-1369974914_500x0.jpg" width="500"></td>
		</tr><tr><td class="Image">
				Galaxy S4 mini sẽ đem lại cơ hội sở hữu cho nhiều người dùng đang muốn có được những trải nghiệm cao cấp của Galaxy S4.</td>
		</tr></tbody></table><p class="Normal">
	Hãng nghiên cứu thị trường DisplaySearch mới đây đưa ra dự báo, trong năm 2013 smartphone xuất xưởng sẽ đạt con số 937 triệu chiếc, so với 889 triệu chiếc điện thoại thường. Đến năm 2016, lượng xuất xưởng smartphone sẽ áp đảo chiếm 2/3 số điện thoại di động, đạt tới con số 1,45 tỷ chiếc, nhờ sức tiêu thụ của các thị trường mới nổi.</p>
<p class="Normal">
	"Thị trường smartphone toàn cầu sẽ tiếp tục bùng nổ trong 2 năm tới”, Shawn Lee, giám đốc khảo sát của DisplaySearch nhận định. “Với màn hình lớn hơn, độ phân giải cao hơn, bộ vi xử lý mạnh hơn và sự phổ biến của mạng di động băng thông rộng sẽ khiến smartphone không những trở thành thiết bị phải có mà còn đáp ứng nhiều nhu cầu khác mà trước đây phải cần đến máy tính và các thiết bị điện tử tiêu dùng”.</p>
<p class="Normal">
	Tại các thị trường mới nổi, đặc biệt là những quốc gia đông dân như Trung Quốc hay Ấn Độ, nơi người mua quan tâm nhiều tới giá, nhu cầu về smartphone có giá rẻ hơn là rất lớn. Mức thu nhập của số đông người dân ở những khu vực này không cho phép họ chạm tay tới các “siêu phẩm” iPhone 5, Galaxy S4, HTC One, Xperia Z, Lumia 920…</p>
<p class="Normal">
	Những smartphone tầm trung và phổ thông đa dạng mẫu mã, có nhiều mức giá từ dưới 200 đến trên 400 USD, đang tràn ngập thị trường là cơ hội để số đông người dùng có thể sở hữu chúng. Chẳng những đáp ứng nhu cầu truy cập internet cho những tác vụ cơ bản của số đông người dùng, những smartphone này còn được tích hợp nhiều tính năng cao cấp. Chẳng hạn mẫu <a href="http://sohoa.vnexpress.net/danh-gia/dien-thoai/danh-gia-nokia-lumia-520-man-hinh-dep-hieu-nang-tot-2604481.html">Nokia Lumia 520</a> thuộc phân khúc phổ thông với giá chỉ 3,8 triệu đồng (chưa tới 200 USD) được trang bị bộ xử lý Snapdragon S4 hai nhân, màn hình 4 inch, camera 5MP, chạy Windows Phone 8.</p>
<p class="Normal">
	Để không bị tụt lại phía sau đạo quân Android đang càn quét những thị trường mới nổi, Apple được cho là đang có kế hoạch với iPhone giá rẻ hơn, bên cạnh mẫu iPhone cao cấp mới tung ra ngay trong năm nay, nhằm “đánh” vào số đông người tiêu dùng có thói quen quan tâm nhiều tới giá khi mua thiết bị công nghệ.</p>
<p class="Normal">
	Trả lời phỏng vấn tại Hội nghị D11 mới đây, CEO Tim Cook cho biết Apple không phát hành các phiên bản iPhone khác nhau là vì trước hết muốn tập trung tạo ra một sản phẩm tốt. Dù vậy ông lưu ý rằng không loại trừ tới đây sẽ có thêm phiên bản iPhone để mở rộng đối tượng khách hàng.</p>
<p class="Normal">
	Các nhà phân tích dự đoán iPhone giá khoảng 300 USD (bản không trợ giá từ nhà mạng) sẽ được bán vào cuối năm nay.</p>
<p class="Normal">
	Apple đang trên đà đánh mất thị phần trên thị trường smartphone toàn cầu. Số liệu quí 1 do Gartner công bố hồi giữa tháng 5 cho thấy, thị phần của Apple chỉ còn 18,2%, mất 4,3% so với cùng kỳ năm trước. Trong khi đó Samsung tăng được 3,2% thị phần, và đã chiếm 30,8% thị phần thị trường smartphone toàn cầu.</p>
<p class="Normal">
	Samsung tiếp tục gia tăng sức ép với Apple và các đối thủ khác khi vẫn duy trì sách lược phủ rộng các dòng điện thoại Galaxy lên toàn bộ các phân khúc thị trường. Hãng điện tử Hàn Quốc đã xác nhận mẫu smartphone đình đám <a href="http://sohoa.vnexpress.net/danh-gia/dien-thoai/danh-gia-galaxy-s4-2653573.html">Galaxy S4</a> sẽ có thêm phiên bản thu nhỏ, <a href="http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/galaxy-s4-thu-nho-duoc-ban-tu-20-6-2770139.html">Galaxy S4 mini</a>, ra mắt tại sự kiện diễn ra ở London (Anh) vào ngày 20/6 tới đây. </p>
<p class="Normal">
	Trung Quốc, thị trường smartphone lớn nhất thế giới, cũng đã thuộc về sự thống trị của Samsung. Theo công bố mới nhất của hãng nghiên cứu Strategy Analytics, quí 1 vừa qua Samsung đã bán được 12,5 triệu smartphone, nhiều hơn gấp đôi con số 6,1 triệu iPhone đã được tiêu thụ tại đây. Apple thậm chí chỉ được xếp thứ 6, đứng sau các nhà sản xuất nội địa Huawei, Lenovo, Coolpad và ZTE có doanh số bán lần lượt là 8,1 triệu, 7,9 triệu, 7 triệu và 6,4 triệu chiếc smartphone. Theo Strategy Analytics, Trung Quốc hiện có sức tiêu thụ smartphone lớn nhất thế giới, chiếm 32% lượng mua toàn cầu.</p>
<p class="Normal">
	Thị trường rộng lớn của quốc gia đông dân nhất thế giới đang tạo đà cho các nhà sản xuất di động trong nước vươn ra tầm quốc tế. Với thế mạnh giá rẻ, Huawei và ZTE đang có những bước tiến ngoạn mục, hiện xếp vị trí thứ 4 và 5 trong những nhà sản xuất smartphone lớn nhất thế giới.</p>
<p class="Normal">
	Cựu vương Nokia tiếp tục thất bại trên chiến trường smartphone khi để tụt xuống vị trí thứ 10, dù dòng Lumina chạy Windows Phone đạt doanh số ấn tượng với 5,6 triệu máy bán ra trong quí 1. Cũng trong quí 1, số liệu của IDC chỉ ra Nokia đã thua Samsung ngay trên quê nhà Phần Lan về doanh số bán điện thoại di động. Vấn đề là tỷ lệ smartphone trên điện thoại thường của Nokia là 50:50, trong khi tỷ lệ này của Samsung là 80:20. Nếu Nokia không có những quyết sách mới, vẫn tiếp tục tập trung cho điện thoại thường thì khó có thể thay đổi vận mệnh. Thị trường điện thoại thường chủ yếu để nghe gọi và nhắn tin đang teo dần lại trước làn sóng người dùng chuyển lên thay thế bằng smartphone giá rẻ.</p>
<p class="Normal">
	Cuộc chiến smartphone giá rẻ có vẻ như là bài toán khó cho Apple, hãng không có thói quen giảm chất lượng sản phẩm, trong khi lại phụ thuộc vào các đối tác cung cấp linh kiện thành phần, phần lớn đến từ Trung Quốc. Samsung, ngược lại, đang chủ động trong toàn bộ khâu sản xuất smartphone. LG đang giữ vị trí thứ ba không dễ gì nhường bước trước các đối thủ. Các nhà sản xuất Trung Quốc có thuận lợi lớn nhờ sức tiêu thụ từ thị trường nội địa, tạo bàn đạp để vươn ra toàn cầu.</p>
<p class="Normal">
	Dù kết cục cuộc chiến smartphone ra sao thì phần thắng cuối cùng vẫn thuộc về người dùng.</p>
<p class="Normal" style="text-align:right;">
	<strong>Phan Châu</strong></p>                    </div>
        			         			                </div>
                <div class="ads1" id="sh_Poly_ARTICLE_1_468x90">
    <script type="text/javascript">Poly_ARTICLE_1_468x90();</script>
</div>
<div class="ads1" id="sh_Poly_ARTICLE_468x90">
    <script type="text/javascript">Poly_ARTICLE_468x90();</script>
</div>            </div>
            ', NULL, NULL, N'http://sohoa.vnexpress.net/tin-tuc/doi-song-so/thi-truong/cuoc-dua-smartphone-gia-re-tro-nen-nong-bong-2770245.html?utm_source=Sohoa-newsletter&utm_medium=email&utm_term=tracklink&utm_content=textcontent&utm_campaign=Newsletter', CAST(0x0000A1D001557B2B AS DateTime), CAST(0x0000A1D001557B2B AS DateTime), NULL, 0, CAST(0x0000A1D000000000 AS DateTime), NULL, NULL, NULL, NULL, 3, 6, 2)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (44, N'''Không điều chỉnh tiếp tỷ giá''', N'Phó Thống đốc Lê Minh Hưng cho rằng diễn biến nóng bỏng của tỷ giá vừa qua chủ yếu do tâm lý chứ không phải mất cân đối cung cầu và Ngân hàng Nhà nước sẵn sàng bán ngoại tệ để hỗ trợ thanh khoản cho thị trường.', N'<p class="Normal">
	<em>- Ngân hàng Nhà nước đánh giá thế nào về diễn biến của tỷ giá trong
 những ngày gần đây, nhất là sau khi tỷ giá bình quân liên ngân hàng&nbsp;</em><em>tăng 1% vào ngày&nbsp;</em><em style="font-size:11.8pt;">28/6?</em></p>
<p class="Normal">
	- Ngày 28/6 - ngày đầu áp dụng mức tỷ giá mới, thị trường ngoại tệ và 
tỷ giá giao dịch diễn biến khá ổn định. Tuy nhiên, vài ngày gần đây, tỷ 
giá có xu hướng tăng, đặc biệt là trên thị trường tự do. Các ngân hàng 
thương mại cũng yết mua ở mức cao.</p>
<p class="Normal">
	6 tháng đầu năm, cán cân thanh toán quốc tế diễn biến thuận lợi, nhập 
siêu chỉ ở mức 1,4 tỷ USD, bằng 2,3% kim ngạch hàng hóa xuất khẩu. Trong
 khi đó chỉ riêng vốn đầu tư trực tiếp nước ngoài giải ngân đã ở mức 5,7
 tỷ USD, các nguồn thu ngoại tệ khác như kiều hối, đầu tư gián tiếp vẫn ở
 mức cao và dự kiến cán cân thanh toán tổng thể năm 2013 thặng dư ở mức 5
 tỷ USD. Trạng thái ngoại tệ của các ngân hàng và doanh số giao dịch với
 khách hàng cũng không có đột biến.</p>
<table class="tplCaption" align="center" border="0" cellpadding="3" cellspacing="0" width="1"><tbody><tr><td>
				<img alt="Le-Minh-Hung-hh-1373459513_500x0.jpg" src="http://l.f25.img.vnecdn.net/2013/07/10/Le-Minh-Hung-hh-1373459513_500x0.jpg" width="480"></td>
		</tr><tr><td class="Image">
				Phó Thống đốc Lê Minh Hưng khẳng định cung - cầu ngoại tệ trên thị trường vẫn cân bằng. Ảnh:<em> Hoàng Hà.</em></td>
		</tr></tbody></table><p class="Normal">
	<span style="font-size:11.8pt;">Như vậy, có thể thấy diễn biến tỷ giá 
những ngày gần đây đang bị chi phối chủ yếu bởi yếu tố tâm lý, không 
xuất phát từ mất cân đối cung cầu ngoại tệ. Cũng có lý do một phần từ 
việc thanh khoản đồng Việt Nam đang dồi dào nên một số ngân hàng gia 
tăng hoạt động mua vào ngoại tệ. Tất nhiên, không loại trừ khả năng một 
số đối tượng kinh doanh ngoại tệ bất hợp pháp trên thị trường tự do lợi 
dụng cơ hội để đầu cơ, làm giá ngoại tệ nhằm kiếm lợi bất chính.</span></p>
<p class="Normal">
	<em style="font-size:11.8pt;">- Có ý kiến cho rằng nguyên nhân giá USD 
được đẩy lên trong thời gian gần đây là do Ngân hàng Nhà nước điều chỉnh
 tăng tỷ giá thêm 1%?</em></p>
<p class="Normal">
	- Như đã nói ở trên, các cân đối thu chi ngoại tệ chủ yếu trong nền 
kinh tế đang diễn biến khá bình thường và dự báo sẽ không có đột biến 
trong thời gian tới. Theo dự báo của Ngân hàng Nhà nước, cán cân thanh 
toán quốc tế của Việt Nam trong 6 tháng cuối năm sẽ tiếp tục thặng dư. 
Khảo sát nhu cầu ngoại tệ trong quý III ở một số tổ chức tín dụng có 
doanh số hoạt động ngoại hối lớn cũng cho thấy nhu cầu từ phía khách 
hàng có tăng nhưng không đáng kể, ít có khả năng gây áp lực cho tỷ giá. 
Việc Ngân hàng Nhà nước điều chỉnh tăng 1% tỷ giá nhằm phản ánh chính 
xác hơn cung cầu ngoại tệ trên thị trường, tạo sự ổn định vững chắc cho 
thị trường ngoại tệ trong thời gian tới và tỷ giá này là phù hợp.&nbsp;</p>
<p class="Normal">
	Trên cơ sở dự báo vĩ mô cũng như định hướng điều hành chính sách tiền 
tệ, Ngân hàng Nhà nước khẳng định không điều chỉnh tỷ giá và sẽ áp dụng 
các biện pháp kiên quyết để ổn định, trong đó có cả việc bán ngoại tệ 
can thiệp mạnh để hỗ trợ thanh khoản cho thị trường.</p>
<p class="Normal">
	<em>- Dấu hiệu căng thẳng những ngày gần đây có ảnh hưởng tới mục tiêu 
giữ ổn định tỷ giá trong năm nay hay không và những biện pháp can thiệp 
có thể triển khai lúc này là gì?</em></p>
<p class="Normal">
	- Nghị quyết 01 của Chính phủ đã giao Ngân hàng Nhà nước có trách nhiệm
 điều hành tỷ giá theo tín hiệu thị trường, bảo đảm giá trị đồng tiền 
Việt Nam, thực hiện các biện pháp đồng bộ để cải thiện cán cân thanh 
toán quốc tế và tăng dự trữ ngoại hối Nhà nước. Ngay từ đầu năm 2013, 
Ngân hàng Nhà nước cũng đã khẳng định mức biến động tỷ giá trong cả năm 
2013 chỉ 2 – 3%.&nbsp;<span style="font-size:11.8pt;">Ngân hàng Nhà nước sẽ áp dụng mọi biện pháp cần thiết để đảm bảo sự ổn định của tỷ giá.&nbsp;</span></p>
<p class="Normal">
	<span style="font-size:11.8pt;">Đối với chính sách tiền tệ, Ngân hàng 
Nhà nước sẽ điều hành lãi suất phù hợp với diễn biến kinh tế vĩ mô, tiền
 tệ, đặc biệt là diễn biến lạm phát nhằm kiểm soát và điều tiết lãi suất
 thị trường tiền tệ ở mức hợp lý, góp phần ổn định thị trường tiền tệ và
 thúc đẩy tăng trưởng tín dụng.&nbsp;</span></p>
<p class="Normal">
	Đối với điều hành tỷ giá và thị trường ngoại tệ, với quy mô dự trữ 
ngoại hối đang ở mức cao như hiện nay, Ngân hàng Nhà nước sẵn sàng can 
thiệp mạnh để hỗ trợ thanh khoản cho thị trường. Bên cạnh đó, Ngân hàng 
Nhà nước sẽ tăng cường thanh tra, kiểm tra giao dịch ngoại tệ của các tổ
 chức tín dụng và quản lý ngoại hối, phát hiện và xử lý nghiêm các hành 
vi mua bán ngoại tệ trái quy định của pháp luật.</p>', NULL, N'Le-Minh-Hung-hh-1373459513_500x0.jpg', NULL, CAST(0x0000A1F70157F789 AS DateTime), NULL, NULL, 0, NULL, NULL, NULL, N'Kỳ Duyên', NULL, 3, 1, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (45, N'Facebook trên iPhone nâng cấp ''ăn theo'' Android - 1', N'Không được trải nghiệm Facebook Home như trên Android, tuy nhiên, ứng dụng Facebook trên iOS cũng có bản cập nhật hỗ trợ tính năng gửi tin nhắn đa nhiệm Chat Head tương tự. ', NULL, NULL, NULL, NULL, CAST(0x0000A1FC013D9D89 AS DateTime), CAST(0x0000A1FC013D9D89 AS DateTime), NULL, 0, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (47, N'Mô hình 3 Tier trong ASP.NET', N'Sử dụng mô hình 3 Tier trong ASP.NET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (51, N'Đề xuất Quốc hội mặc niệm Đại tướng Võ Nguyên Giáp', N'Trung tướng Nguyễn Quốc Thước đề nghị Nhà nước truy phong đặc cách hàm Nguyên soái và danh hiệu Anh hùng dân tộc, đồng thời, kỳ họp Quốc hội khai mạc vào 22/10 cần có phút mặc niệm Đại tướng.', N'                <div class="fck_detail"><table class="tplCaption" align="left" border="0" cellpadding="3" cellspacing="0" width="1"><tbody><tr><td>
				<img alt="[Caption]" data-natural-width="200" src="http://m.f29.img.vnecdn.net/2013/10/19/tuong-thuoc-6109-1382151685.jpg" style="float:left;"></td>
		</tr></tbody></table><p class="Normal">
	Trong bức thư ngỏ gửi lãnh đạo Đảng và Nhà nước, Trung tướng Nguyễn Quốc Thước chia sẻ, sự kiện Đại tướng<span style="font-size:11.8pt;">&nbsp;Võ
 Nguyên Giáp ra đi đã thổi bùng lên ngọn lửa từ hàng triệu trái tim của 
con dân đất Việt, quy tụ về một mối. Ngọn lửa này đã từng bùng lên mạnh 
mẽ</span>&nbsp;từ tiền tuyến miền Nam đến hậu phương miền Bắc vào những ngày tháng 9/1969 - khi Chủ tịch Hồ Chí Minh từ trần.</p>
<p class="Normal">
	Dưới đây là nội dung bức thư của Trung tướng Nguyễn Quốc Thước:</p>
<p class="Normal">
	<span style="font-size:11.8pt;">"Tất cả phải cùng hành động để tiếp tục
 sự nghiệp của Bác Hồ và Bác Giáp đã trao lại cho thế hệ hôm nay và mai 
sau. Đảng, Nhà nước phải làm sao quy tụ được lòng dân để dân - Đảng một 
lòng đưa sự nghiệp cách mạng tiếp tục tiến lên. Trái tim của Đại tướng 
ngừng đập, cũng là lúc 90 triệu trái tim cùng một nhịp, đập mạnh hơn bao
 giờ hết để tưởng nhớ đến “Vị đại tướng Nhân dân”.</span></p>
<p class="Normal">
	Sau sự kiện này, tiếng nói chung của nhân dân, của đồng chí, đồng đội, 
các bạn bè từ mọi nơi hoặc điện, hoặc đến trực tiếp gặp tôi đề nghị làm 
sao vinh danh đúng tầm với vai trò của Đại tướng cho muôn đời mai sau. 
Tôi nhớ lại trong những năm 90 của thế kỷ 20, trong hàng ngũ tướng lĩnh 
quân đội cũng như ngoài quân đội đã nhiều lần đề nghị Đảng, Nhà nước 
phong hàm Nguyên soái cho Đại tướng. Lúc bấy giờ ý kiến chỉ đạo là Luật 
sĩ quan Quân đội Nhân dân Việt Nam chỉ có hàm đến cấp Đại tướng nên 
không thực hiện được.</p>
<p class="Normal">
	Nay Đại tướng đã trở thành người thiên cổ, cũng như lúc còn sống,&nbsp;<span style="font-size:11.8pt;">Người
 không đòi hỏi gì cho bản thân. Nhưng qua những ngày Quốc tang Đại 
tướng, chúng ta thấy rõ qua lòng dân rằng phải có một danh hiệu xứng 
đáng với vai trò và cống hiến của Đại tướng, điều đã được thể hiện cụ 
thể, chi tiết trong bài điếu văn tại lễ truy điệu. </span></p>
<p class="Normal">
	<span style="font-size:11.8pt;">Theo nguyện vọng chung là những gì mà 
lúc Đại tướng còn sống, chúng ta chưa làm thì nay đến lúc Đảng - Nhà 
nước - Nhân dân cần làm cho đúng với đạo lý của dân tộc. Ý kiến chung 
qua phản ảnh thì Đảng - Nhà nước mà trực tiếp là Quốc hội theo quyền hạn
 của mình cần có quy định truy phong đặc cách hàm Nguyên soái và danh 
hiệu Anh hùng dân tộc cho Đại tướng để thể hiện ông là người lãnh đạo 
quân sự c</span><span style="font-size:11.8pt;">ao nhất dưới ngọn cờ của Đảng và Bác Hồ. </span></p>
<table class="tbl_insert" style="width:50%;" align="right" border="1" cellpadding="1" cellspacing="0"><tbody><tr><td>
				Mới đây, Hội Tư vấn Khoa học Công nghệ và Quản lý TP HCM Hascon có 
văn bản do Chủ tịch Hội Hascon Nguyễn Bách Phúc ký, đề nghị Bộ Chính 
trị, Ban Chấp hành Trung ương Đảng Cộng sản Việt Nam&nbsp;xem xét và quyết 
định phong Hàm Đại Nguyên soái cho Đại tướng Võ Nguyên Giáp"</td>
		</tr></tbody></table><p class="Normal">
	<span style="font-size:11.8pt;">Cha ông ta ngày xưa cũng đã từng phong 
danh hiệu anh hùng dân tộc cho Lý Thường Kiệt, Trần Hưng Đạo, Quang 
Trung thì thời đại Hồ Chí Minh truy phong cho Đại tướng Võ Nguyên Giáp 
hàm và danh hiệu đó là vô cùng xứng đáng, hợp lòng dân và ý Đảng, tạo 
động lực, sức mạnh của sự cố kết, dời non lấp biển của cả dân tộc. </span></p>
<p class="Normal">
	<span style="font-size:11.8pt;">Trước đây có ý kiến luật và quy định 
không làm khác được, nhưng Quốc hội làm ra luật và có thẩm quyền sửa 
luật nếu luật không thuận với lòng dân. Nay lòng dân đã rõ, lúc này lòng
 dân còn cao hơn cả luật, bởi luật đúng nhất là luật đi vào được lòng 
dân. Quốc hội của dân có đủ thẩm quyền để sửa đổi, bổ sung khi mà lòng 
dân đã thuận và thuận theo lòng dân thì luật mới có sức mạnh, như vậy 
Nhà nước lại càng được sự đồng thuận của dân.</span></p>
<p class="Normal">
	Trên tinh thần đó, thể theo ý nguyện nhiều tầng lớp nhân dân mà tôi 
tiếp cận được, mong rằng Đảng, nhà nước trên tinh thần “của dân, vì dân”
 làm toại nguyện lòng dân. Được lòng dân là được tất cả. Kỳ họp Quốc hội
 sắp tới chắc sẽ có phút mặc niệm Đại tướng và sau đó nếu có một phiên 
họp để xem xét nhanh chóng những đề xuất này thì tin rằng đây sẽ là một 
kỳ họp để lại dấu ấn sâu sắc đối với toàn dân, thực sự đáp ứng lòng mong
 đợi của nhân dân".</p></div>', NULL, N'tuong-thuoc-6109-1382151685.jpg', NULL, CAST(0x0000A25C00FD6286 AS DateTime), NULL, NULL, 0, NULL, NULL, NULL, N'Stanford', NULL, 4, 1, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (54, N'stanford ', N'dạy kinh nghiệm lập trình', NULL, NULL, NULL, NULL, CAST(0x0000A26A0113C4B4 AS DateTime), CAST(0x0000A26A0113C4D7 AS DateTime), NULL, NULL, NULL, NULL, NULL, N'dương quá', NULL, 2, 1, 1)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (57, N'Người phác họa chân dung kẻ bắt cóc: ''Vẽ đôi mắt là khó nhất'' 1', N'Qua miêu tả của vợ chồng sản phụ mất con và các nhân chứng, họa sĩ Phan Vũ Linh đã phác họa chân dung kẻ bắt cóc giống đến 90%, giúp cảnh sát nhanh chóng tìm ra thủ phạm.', NULL, NULL, N'', NULL, CAST(0x0000A2B3015D4D82 AS DateTime), CAST(0x0000A2B30164212B AS DateTime), NULL, NULL, NULL, NULL, NULL, N'dangbq - tong hop', NULL, 4, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (59, N'Đề xuất mở rộng sân bay Tân Sơn Nhất', N'Để đáp ứng cho công suất tối đa 26 triệu lượt hành khách một năm, sân bay Tân Sơn Nhất dự tính xây thêm 21 sân đỗ và mở rộng 40 quầy thủ tục.', NULL, NULL, N'san-bay-7569-1393494020.jpg', NULL, CAST(0x0000A2DF01574CC1 AS DateTime), CAST(0x0000A2DF01574CC3 AS DateTime), NULL, NULL, NULL, NULL, NULL, N'vnexpress', NULL, 4, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (61, N'Làm việc với entity framework', N'Làm việc với entity framework buổi học 27/02/2014', NULL, NULL, N'images.jpg', NULL, CAST(0x0000A2DF015AB406 AS DateTime), CAST(0x0000A2DF015AB407 AS DateTime), NULL, NULL, NULL, NULL, NULL, N'dangbq', NULL, 7, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (66, N'Chủ tịch nước: ''Không có chuyện sợ trong đấu tranh bảo vệ chủ quyền''', N'Nói với cử tri TP HCM, Chủ tịch nước Trương Tấn Sang cho biết đấu tranh bảo vệ chủ quyền là bình đẳng giữa các quốc gia, không có chuyện sợ hay không sợ.', NULL, NULL, N'truong-tan-sang-ok-3073-1400223597_490x294.jpg', NULL, CAST(0x0000A32D014015D9 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'vnexpress', NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (67, N'Chính phủ sẽ báo cáo Quốc hội về biển Đông', N'Chiều 20/5, Quốc hội sẽ họp kín để nghe Phó thủ tướng, Bộ trưởng Ngoại giao Phạm Bình Minh thay mặt Chính phủ báo cáo về tình hình biển Đông.', N'<p class="Normal">
	Thông tin trên được ông Nguyễn Hạnh Phúc, Chủ nhiệm Văn phòng Quốc hội,
 cho biết tại buổi họp báo công bố chương trình kỳ họp thứ 7 Quốc hội 
khóa XIII, diễn ra từ 20/5 đến 24/6.</p>
<p class="Normal">
	Theo ông Phúc, Phó thủ tướng sẽ trình bày những chủ trương và giải pháp
 của Việt Nam với vấn đề biển Đông nên sau phiên họp, một số nội dung 
báo cáo sẽ được công bố. Phiên họp kín đã được đẩy lên sớm 2 ngày so với
 kế hoạch dự tính trước đó.</p>
<p class="Normal">
	Trả lời câu hỏi về việc Quốc hội có ra nghị quyết hoặc tuyên bố liên 
quan vấn đề biển Đông, ông Phúc cho rằng phải chờ báo cáo của Chính phủ 
cũng như tập hợp ý kiến cử tri trong báo cáo của Ủy ban Trung ương Mặt 
trận tổ quốc Việt Nam vào ngày mai. Sau đó, các đại biểu sẽ thảo luận 
xem mức độ nào là cần thiết.</p>
<p class="Normal">
	"Trường hợp thấy cần thảo luận và thể hiện thái độ về vấn đề biển Đông,
 Quốc hội sẽ bố trí thời gian và cách thức phù hợp thực tế", ông Phúc 
nói.</p>
<p class="Normal">
	Về những thiệt hại do hành vi lợi dụng biểu tình để gây rối vừa qua, 
ông Phúc cho hay phải chờ thống kê cụ thể ở từng vụ việc, từng địa 
phương.</p>
<table style="width: 100%;" class="tplCaption" align="center" border="0" cellpadding="3" cellspacing="0"><tbody><tr><td>
				<img data-pwidth="480" data-width="500" style="width: 100%;" alt="gk1-7793-1400495769.jpg" data-natural-="" src="http://m.f29.img.vnecdn.net/2014/05/19/gk1-7793-1400495769.jpg"></td>
		</tr><tr><td>
				<p class="Image">
					Giàn khoan Hải Dương 981 mà Trung Quốc hạ đặt trái phép trong thềm lục địa của Việt Nam. Ảnh:<em> Nguyễn Đông.</em></p>
			</td>
		</tr></tbody></table><p class="Normal">
	Người phát ngôn Quốc hội cũng gửi lời cảm ơn đến các nghị sĩ, tổ chức 
quốc tế, nhân dân nhiều nước đã ủng hộ Việt Nam trong vấn đề biển Đông 
và phản đối Trung Quốc đặt giàn khoan trong vùng biển thuộc chủ quyền 
nước ta. Quốc hội sẽ thông qua đối thoại, các chuyến ngoại giao nghị 
viện để tranh thủ sự ủng hộ của các nước.</p>', NULL, N'trungquoc-1400492943_490x294.jpg', NULL, CAST(0x0000A33001406161 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'stanford', NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (71, N'Làm việc với Linq & Entity Framework trong ASP.NET Thứ 6 ngày 06/02/2015', N'Làm việc với Linq & Entity Framework trong ASP.NET Thứ 6 ngày 06/02/2015', N'Làm việc với Linq &amp; Entity Framework trong ASP.NET Thứ 6 ngày 06/02/2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Stanford', NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (72, N'Hà Nội rực rỡ đón Tết', N'Hà Nội rực rỡ đón Tết', N'<br><div style="width: 100%;" class="item_slide_show"><img style="cursor: url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto;" id="vne_slide_image_0" data-reference-id="21742262" src="http://l.f30.img.vnecdn.net/2015/02/05/IMG-0531-1423148522_660x0.jpg" alt="" class="left" data-component-caption="&amp;lt;p class=&amp;quot;Normal&amp;quot;&amp;gt;
	Cận kề Tết Nguyên đán Ất Mùi, trên các tuyến phố chính của thủ đô, công nhân bắt đầu trang trí hoa mừng xuân mới. Tuyến Kim Mã, đoạn được coi là &amp;quot;con đường Hàn Quốc&amp;quot;, nơi thu hút giới trẻ bởi hàng bằng lăng tím, nay được kết dòng chữ &amp;quot;Chúc mừng năm mới&amp;quot;, &amp;quot;Mừng Đảng mừng xuân&amp;quot; bằng những chậu hoa giả.&amp;lt;/p&amp;gt;">
														<a class="btn_icon_show_slide_show">&nbsp;</a>
													
						                        <div class="desc_cation"><p class="Normal">
	Cận kề Tết Nguyên đán Ất Mùi, trên các tuyến phố chính của thủ đô, công
 nhân bắt đầu trang trí hoa mừng xuân mới. Tuyến Kim Mã, đoạn được coi 
là "con đường Hàn Quốc", nơi thu hút giới trẻ bởi hàng bằng lăng tím, 
nay được kết dòng chữ "Chúc mừng năm mới", "Mừng Đảng mừng xuân" bằng 
những chậu hoa giả.</p></div>
                        						<div class="clear">&nbsp;</div>
					</div>
					                                          			
					  
						<div class="block_thumb_slide_show">												
							<img style="cursor: url(&quot;http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png&quot;), auto;" id="vne_slide_image_1" data-reference-id="21742263" src="http://l.f31.img.vnecdn.net/2015/02/05/IMG-0533-1423148523_660x0.jpg" alt="" class="left" data-component-caption="&amp;lt;p class=&amp;quot;Normal&amp;quot;&amp;gt;
	Còn tại dải phân cách cứng được đặt những chậu hoa thật với đủ màu sắc, tạo thành những hình thù bắt mắt.&amp;lt;/p&amp;gt;">
														<a class="btn_icon_show_slide_show">&nbsp;</a>
													</div>
						                        <div class="desc_cation"><p class="Normal">
	Còn tại dải phân cách cứng được đặt những chậu hoa thật với đủ màu sắc, tạo thành những hình thù bắt mắt.</p></div>', NULL, N'anh-tet.jpg', NULL, CAST(0x0000A437016AE6A7 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'Stanford', NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (73, N'Làm việc với Ajax trong ASP.NET', N'Làm việc với Ajax trong ASP.NET - Stanford', N'<div align="center">Làm việc với Ajax trong ASP.NET - Stanford<br></div>', NULL, NULL, NULL, CAST(0x0000A453014B9601 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'Stanford', NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (75, N'Làm việc với mô hình 3Tiers by Stanford', N'Làm việc với mô hình 3Tiers - Stanford', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (76, N'Sử dụng Popup trong asp.net', N'', NULL, NULL, NULL, NULL, CAST(0x0000A460015656A4 AS DateTime), CAST(0x0000A460015656A4 AS DateTime), NULL, NULL, NULL, NULL, NULL, N'Stanford', NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfArticle] ([Id], [Title], [Description], [ArticleContent], [Keyword], [ImageName], [ImagePath], [DateCreated], [DateLastUpdate], [DateApproved], [Approved], [DatePublish], [Published], [Notes], [AuthorName], [AuthorId], [CategoryId], [TypeId], [UserId]) VALUES (1073, N'Làm việc với Entity Framework', N'Làm việc với Entity Framework trong ASP.NET', N'Làm việc với Entity Framework trong ASP.NET', NULL, NULL, NULL, CAST(0x0000A4FC0107D8D1 AS DateTime), CAST(0x0000A4FC0107D748 AS DateTime), NULL, NULL, NULL, NULL, NULL, N'dangbq', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[stanfArticle] OFF
SET IDENTITY_INSERT [dbo].[stanfCategory] ON 

INSERT [dbo].[stanfCategory] ([Id], [CategoryName], [CategoryDescription], [CategoryImageName], [NumberOrder]) VALUES (1, N'Văn hóa', N'', NULL, NULL)
INSERT [dbo].[stanfCategory] ([Id], [CategoryName], [CategoryDescription], [CategoryImageName], [NumberOrder]) VALUES (2, N'Kinh tế', N'Mô tả về kinh tế 1', NULL, NULL)
INSERT [dbo].[stanfCategory] ([Id], [CategoryName], [CategoryDescription], [CategoryImageName], [NumberOrder]) VALUES (3, N'Thể thao', NULL, NULL, NULL)
INSERT [dbo].[stanfCategory] ([Id], [CategoryName], [CategoryDescription], [CategoryImageName], [NumberOrder]) VALUES (4, N'Xã hội', NULL, NULL, NULL)
INSERT [dbo].[stanfCategory] ([Id], [CategoryName], [CategoryDescription], [CategoryImageName], [NumberOrder]) VALUES (5, N'Du lịch', N'', NULL, NULL)
INSERT [dbo].[stanfCategory] ([Id], [CategoryName], [CategoryDescription], [CategoryImageName], [NumberOrder]) VALUES (6, N'Điện ảnh', N'', NULL, NULL)
INSERT [dbo].[stanfCategory] ([Id], [CategoryName], [CategoryDescription], [CategoryImageName], [NumberOrder]) VALUES (7, N'Stanford', N'Dạy kinh nghiệm lập trình', NULL, NULL)
INSERT [dbo].[stanfCategory] ([Id], [CategoryName], [CategoryDescription], [CategoryImageName], [NumberOrder]) VALUES (9, N'Chủ đề 1', N'', NULL, NULL)
INSERT [dbo].[stanfCategory] ([Id], [CategoryName], [CategoryDescription], [CategoryImageName], [NumberOrder]) VALUES (12, N'Test MVC', N'MVC Framework', NULL, NULL)
INSERT [dbo].[stanfCategory] ([Id], [CategoryName], [CategoryDescription], [CategoryImageName], [NumberOrder]) VALUES (1012, N'ccccccccvbcv', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[stanfCategory] OFF
SET IDENTITY_INSERT [dbo].[stanfTypes] ON 

INSERT [dbo].[stanfTypes] ([Id], [TypeName], [TypeDescription], [NumberOrder]) VALUES (1, N'Tin hot', NULL, NULL)
INSERT [dbo].[stanfTypes] ([Id], [TypeName], [TypeDescription], [NumberOrder]) VALUES (2, N'Tin mới', NULL, NULL)
INSERT [dbo].[stanfTypes] ([Id], [TypeName], [TypeDescription], [NumberOrder]) VALUES (3, N'Tin đào tạo', NULL, NULL)
SET IDENTITY_INSERT [dbo].[stanfTypes] OFF
SET IDENTITY_INSERT [dbo].[stanfUser] ON 

INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (1, N'dangbq', N'123456', N'Bùi Quang Đăng', NULL, NULL, NULL, NULL, N'dangbq@stanford.com.vn', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (3, N'phuongtt', N'123456', N'Trần Thanh Phương', NULL, 0, NULL, N'', N'phuongtran311@gmail.com', NULL, NULL, CAST(0x0000A1AC013D8643 AS DateTime), NULL, NULL, N'')
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (8, N'dangbq', N'123456', N'Bùi Quang Đăng', NULL, NULL, NULL, N'0987232936', N'dangbq@stanford.com.vn', NULL, CAST(0x0000A1C1014E0433 AS DateTime), CAST(0x0000A1C1014E0433 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (10, N'lananh', N'123456', N'Trương Lan Anh', NULL, 1, NULL, N'', N'', NULL, CAST(0x0000A1C1014F09B1 AS DateTime), CAST(0x0000A1C1014F09B1 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (11, N'ducmanh', N'123456', N'Đinh Đức Mạnh', NULL, NULL, NULL, N'', N'', NULL, CAST(0x0000A1C1014F31D0 AS DateTime), CAST(0x0000A1C1014F31D0 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (13, N'vanchung-stanford', N'123456', N'Nguyễn Văn Chung', NULL, NULL, NULL, N'0977.454.678', N'vanchung1@gmail.com', NULL, CAST(0x0000A1C101506613 AS DateTime), CAST(0x0000A1C101506613 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (15, N'congnx', NULL, N'Nghiêm Xuân Công', NULL, NULL, NULL, N'0912.066.584', N'congnx@hnue.edu.vn', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (16, N'cuongnm', N'123456', N'nguyễn mạnh cường', NULL, NULL, NULL, N'0987.334.678', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (17, N'trieupt', N'123456', N'Phùng Tiến Triều', NULL, NULL, NULL, N'0986879275', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (18, N'dangbq', N'123456', N'dangbq', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (19, N'dangbq', N'123456', N'Bui Quang Dang', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (20, N'dangbq', N'123', N'Bui Quang Dang', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (21, N'dangbq', N'123', N'Bui Quang Dang', NULL, NULL, NULL, N'234', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (22, N'dangbq', N'123', N'Bui Quang Dang', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (23, N'stanford', N'123', N'Bui Quang Dang', NULL, NULL, NULL, N'0987232936', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (24, N'ducna', N'123', N'duc', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (25, N'dunghv', N'123', N'dunghv', NULL, NULL, NULL, N'098743543654', N'dunghv@gmail.com', NULL, CAST(0x0000A27800FABACD AS DateTime), CAST(0x0000A27800FABACD AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (26, N'', N'', N'', NULL, NULL, NULL, N'', N'', NULL, CAST(0x0000A27801043534 AS DateTime), CAST(0x0000A27801043532 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (27, N'', N'', N'', NULL, NULL, NULL, N'', N'', NULL, CAST(0x0000A278010448CA AS DateTime), CAST(0x0000A278010448CA AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (28, N'ngovanmanh', N'123456', N'ngô văn mạnh', NULL, NULL, NULL, N'123456', N'manhnv@gmail.com', NULL, CAST(0x0000A2780110A5B5 AS DateTime), CAST(0x0000A2780110A5B5 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[stanfUser] ([Id], [UserName], [Password], [FullName], [Avatar], [Sex], [Birthday], [Mobile], [Email], [IsAdmin], [DateCreate], [DateLastUpdate], [Approved], [DateApproved], [Description]) VALUES (29, N'ngovanmanh', N'123456', N'ngô văn mạnh', NULL, NULL, NULL, N'123456', N'manhnv@gmail.com', NULL, CAST(0x0000A2780110A7D2 AS DateTime), CAST(0x0000A2780110A7D2 AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[stanfUser] OFF
ALTER TABLE [dbo].[stanfArticle]  WITH NOCHECK ADD  CONSTRAINT [FK_stanfArticle_stanfCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[stanfCategory] ([Id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[stanfArticle] NOCHECK CONSTRAINT [FK_stanfArticle_stanfCategory]
GO
ALTER TABLE [dbo].[stanfArticle]  WITH NOCHECK ADD  CONSTRAINT [FK_stanfArticle_stanfTypes] FOREIGN KEY([TypeId])
REFERENCES [dbo].[stanfTypes] ([Id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[stanfArticle] NOCHECK CONSTRAINT [FK_stanfArticle_stanfTypes]
GO
ALTER TABLE [dbo].[stanfArticle]  WITH NOCHECK ADD  CONSTRAINT [FK_stanfArticle_stanfUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[stanfUser] ([Id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[stanfArticle] NOCHECK CONSTRAINT [FK_stanfArticle_stanfUser]
GO
