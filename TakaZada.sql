USE [TakaZada]
GO
/****** Object:  Table [dbo].[ActivityLog]    Script Date: 11/9/2018 1:55:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](50) NULL,
	[UserId] [int] NULL,
	[IP] [nvarchar](50) NULL,
	[UserAgent] [nvarchar](255) NULL,
	[ActionTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.ActivityLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Case]    Script Date: 11/9/2018 1:55:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Case](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[Description] [nvarchar](4000) NULL,
	[WarrantyPeriod] [int] NULL,
	[TradeMark] [nvarchar](25) NULL,
	[Model] [nvarchar](25) NULL,
	[Color] [nvarchar](25) NULL,
	[Size] [nvarchar](255) NULL,
	[MainSupport] [nvarchar](255) NULL,
	[USB] [nvarchar](255) NULL,
	[DriverBays] [nvarchar](255) NULL,
	[Slots] [nvarchar](255) NULL,
	[IsDelete] [bit] NULL,
	[Price] [nvarchar](50) NULL,
 CONSTRAINT [PK_Case] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Computer]    Script Date: 11/9/2018 1:55:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Computer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[Image] [nvarchar](255) NULL,
	[CPU] [nvarchar](1000) NULL,
	[RAM] [nvarchar](255) NULL,
	[VideoCard] [nvarchar](255) NULL,
	[Hardware] [nvarchar](255) NULL,
	[SlotSupport] [nvarchar](255) NULL,
	[Display] [nvarchar](255) NULL,
	[Port] [nvarchar](255) NULL,
	[Extra] [nvarchar](255) NULL,
	[OS] [nvarchar](255) NULL,
	[Type] [nchar](10) NULL,
	[Trademark] [nchar](10) NULL,
	[Feature] [nvarchar](100) NULL,
	[Color] [nvarchar](30) NULL,
	[CPUSeries] [nchar](255) NULL,
	[ScreenSize] [nvarchar](20) NULL,
	[Resolution] [nvarchar](255) NULL,
	[StandardOfScreen] [nvarchar](50) NULL,
	[Size] [nvarchar](255) NULL,
	[Mass] [nchar](10) NULL,
	[WarrantyPeriod] [int] NULL,
	[IsDeleted] [bit] NULL,
	[Price] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPU]    Script Date: 11/9/2018 1:55:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPU](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[WarrantyPeriod] [int] NULL,
	[TradeMark] [nchar](10) NULL,
	[CPUType] [nvarchar](30) NULL,
	[CPULine] [nvarchar](30) NULL,
	[CoreNum] [int] NULL,
	[ThreadNum] [int] NULL,
	[CoreCPU] [nvarchar](30) NULL,
	[BasicPulse] [nvarchar](30) NULL,
	[MaxPulse] [nvarchar](30) NULL,
	[CacheCPU] [nvarchar](30) NULL,
	[Size] [nvarchar](30) NULL,
	[Description] [nvarchar](4000) NULL,
	[IsDeleted] [bit] NULL,
	[Price] [nvarchar](50) NULL,
 CONSTRAINT [PK_CPU] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hardware]    Script Date: 11/9/2018 1:55:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hardware](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[Description] [nvarchar](4000) NULL,
	[WarrantyPeriod] [int] NULL,
	[TradeMark] [nvarchar](25) NULL,
	[Memory] [nchar](10) NULL,
	[Label] [nchar](10) NULL,
	[ReadSpeed] [nvarchar](255) NULL,
	[WriteSpeed] [nvarchar](255) NULL,
	[Size] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[Price] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Keyboard]    Script Date: 11/9/2018 1:55:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Keyboard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[Description] [nvarchar](4000) NULL,
	[TradeMark] [nvarchar](25) NULL,
	[WarrantyPeriod] [int] NULL,
	[IsDeleted] [bit] NULL,
	[Price] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MainBoard]    Script Date: 11/9/2018 1:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainBoard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[Description] [nvarchar](4000) NULL,
	[TradeMark] [nvarchar](25) NULL,
	[Type] [nchar](10) NULL,
	[Model] [nvarchar](255) NULL,
	[Chipset] [nvarchar](255) NULL,
	[MaxRamMemory] [nchar](10) NULL,
	[RamType] [nvarchar](255) NULL,
	[RamNum] [int] NULL,
	[HDMINum] [nvarchar](25) NULL,
	[WarrantyPeriod] [int] NULL,
	[IsDeleted] [bit] NULL,
	[Price] [nvarchar](50) NULL,
 CONSTRAINT [PK_MainBoard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Radiator]    Script Date: 11/9/2018 1:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Radiator](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[Description] [nvarchar](4000) NULL,
	[TradeMark] [nvarchar](25) NULL,
	[Label] [nvarchar](25) NULL,
	[Material] [nvarchar](25) NULL,
	[Speed] [nvarchar](255) NULL,
	[Size] [nvarchar](255) NULL,
	[FanSize] [nvarchar](25) NULL,
	[Socket] [nvarchar](1000) NULL,
	[IsDeleted] [bit] NULL,
	[Price] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RAM]    Script Date: 11/9/2018 1:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RAM](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[Description] [nvarchar](4000) NULL,
	[TradeMark] [nvarchar](25) NULL,
	[Color] [nchar](10) NULL,
	[RamType] [nchar](10) NULL,
	[Memory] [nchar](10) NULL,
	[BusSpeed] [nvarchar](25) NULL,
	[WarrantyPeriod] [int] NULL,
	[IsDeleted] [bit] NULL,
	[Price] [nvarchar](50) NULL,
 CONSTRAINT [PK_RAM] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VGA]    Script Date: 11/9/2018 1:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VGA](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[TradeMark] [nchar](10) NULL,
	[Label] [nvarchar](30) NULL,
	[ChipsetManufacturer] [nvarchar](30) NULL,
	[Model] [nvarchar](255) NULL,
	[VGA] [nvarchar](255) NULL,
	[BoostClock] [nvarchar](255) NULL,
	[VGAMemory] [nvarchar](10) NULL,
	[RamType] [nvarchar](25) NULL,
	[MaxResolution] [nvarchar](255) NULL,
	[Directx] [nvarchar](25) NULL,
	[Size] [nvarchar](25) NULL,
	[WarrantyPeriod] [int] NULL,
	[IsDeleted] [bit] NULL,
	[Price] [nvarchar](25) NULL,
 CONSTRAINT [PK_VGA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ActivityLog] ON 

INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (1, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-09T13:54:15.717' AS DateTime))
SET IDENTITY_INSERT [dbo].[ActivityLog] OFF
SET IDENTITY_INSERT [dbo].[Case] ON 

INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (1, N'Case Corsair Crystal Series 570X RGB ATX Mid-Tower Red (CC-9011111-WW)', N'Case Corsair Crystal Series 570X RGB ATX Mid-Tower Red.png', N'Về thương hiệu Corsair, không có quá nhiều điều cần phải giới thiệu. Corsair đã trở thành một cái tên quá quen thuộc với người dùng máy tính ở Việt Nam, nhà sản xuất này bán RAM, nguồn máy tính, gaming gears nhưng nổi tiếng nhất có lẽ phải là dòng sản phẩm vỏ case của họ. 

Thương hiệu này đặc biệt luôn thể hiện được tham vọng dẫn đầu thị trường, dễ dàng nhận thấy điều đó qua Logo của hãng, những cánh buồm căng gió. Mới đây, Corsair chính thức tung ra thị trường bộ vỏ case mang tên Crystal Series, với điểm chung của các sản phẩm là sử dụng mặt kính cường lực cực bền bỉ cũng như tích hợp sẵn các quạt tản nhiệt đèn LED RGB.



Corsair muốn trở thành thương hiệu đi đầu trong việc sử dụng kính cường lực làm chất liệu cho các vỏ case của họ. Thời gian gần đây, chúng ta có thể dễ dàng bắt gặp các vỏ case trong suốt, với nhiều mặt làm từ kính hoặc chất liệu trong suốt. Điểm chung của chúng là cho phép người dùng phô diễn các phần cứng bên trong, nhưng cũng rất dễ bị vỡ nếu va chạm mạnh. Bởi vậy, Corsair tìm tới chất liệu kính cường lực, giúp giải quyết vấn đề nêu trên.

Thông số kỹ thuật Crystal 570X:

- Kích thước: 480 x 234 x 512mm
- Kích thước VGA tối đa: 370mm
- Kích thước tản nhiệt CPU tối đa: 170mm
- Khay gắn ổ cứng: SSD x2, HDD x2
- Quạt tản nhiệt phía trên: tối đa Radiator 240mm
- Quạt tản nhiệt phía trước: tối đa Radiator 360mm', 12, N'Corsair', N'Crystal Series 570X RGB', N'Đỏ', N'480mm x 234mm x 512m', N'Mini-ITX, MicroATX, ATX (Up to 272mm)', N'USB3.0 x 1 / USB2.0 x 2', N'(x2) 3.5", (x2) 2.5"', N'7', 0, N'4.655.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (2, N'Case PC CoolerMaster MasterBox 5 White', N'Case PC CoolerMaster MasterBox 5 White.jpg', N'Mô tả
- Thiết kế khung thép chắc chắn, lớp sơn tĩnh điện mịn đẹp. 
- Bên trong case to rộng gắn được các main cỡ lớn chạy 2 chip. 
- Có sẵn cover nguồn và khoang đi dây rộng. 
- Hỗ trợ rất tốt các giải pháp tản nhiệt khí và tản nhiệt nước custom. 
- Là sản phẩm phù hợp với dòng máy hiend, gaming, ws', 12, N'Cooler Master', N'BOX 5', N'Đen', N'468.8 x 200 x 454.5 mm', N'ATX, Micro-ATX, Mini-ITX', N'USB3.0 x 1 / USB2.0 x 2', N'3.5" x 2 / 2.5" x 1', N'2', 0, N'1.670.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (3, N'Thùng máy/ Case Golden field G1 - Black', N'Thùng máy Case Golden field G1 - Black.png', N'Mô tả
- Vỏ máy tính chống bức xạ Golden Field G1- White( 21+, DIY, 2 Led Red, ATX, ITX)
- Vỏ máy tính Golden Field thế hệ mới, kiểu dáng đẹp,
- Khung chắc chắn,
- Tản nhiệt tốt,
- Nút bấn nhậy độ bền cao', 12, N'Golden Field', N'G1', N'Đen', N'Không', N'ATX, M-ATX', N'USB3.0 x 1 / USB2.0 x 2', N'Không', N'Không', 0, N'685.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (4, N'Thùng máy/ Case Erosi X11 (No power)', N'Thùng máy Case Erosi X11.jpg', N'Mô tả
- Màu: Đen
- Chất liệu: Black coating 0.4mm
- 410 (D) * 176 (W) * 410 (H) mm, 2.65kg
- Hỗ trợ Mainboard: ATX, Micro ATX
- Kết nối: USB 3.0, USB 2.0
- Khe CD-DVD: 3, SSD: 2, HDD: 3. Khe PCI: 7', 0, N'Erosi', N'X11', N'Đen', N'410 (D) * 176 (W) * 410 (H) mm', N'Hỗ trợ Mainboard: ATX, Micro ATX', N'USB3.0 x 1 / USB2.0 x 2', N'Không', N'Khe CD-DVD: 3, SSD: 2, HDD: 3. Khe PCI: 7', 0, N'320.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (5, N'Thùng máy/ Case Golden field Gaming G20', N'Thùng máy Case Golden field Gaming G20.jpg', N'Mô tả
- Form case: Full-Tower
- Chất liệu vỏ: Khung Thép (SECC) + Mặt lưới sắt tản nhiệt siêu mạnh
- Cửa sổ case: Kính cường lực
- Hỗ trợ khay 2x 3.5", 2x 2.5"
- Cổng USB: 1x USB 3.0, 1x USB 2.0
- Quạt đi kèm: 2 quạt', 1, N'Golden Field', N'G20', N'Bạc', N'(Dài x Rộng x Cao) 558mm x 261mm x 531mm', N'ATX, m-ATX', N'USB3.0 x 1 / USB2.0 x 2', N'Đang cập nhật', N'Đang cập nhật', 0, N'4.200.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (6, N'Thùng máy/ Case CM-N200 (No power)', N'Thùng máy Case CM-N200.jpg', N'Mô tả
- Thiết kế bất đối xứng Edgy với lưới đầy đủ trên bảng điều khiển phía trước
- Tháp đôi với khả năng mở rộng tuyệt vời có thể hỗ trợ lên đến ba HDD 3.5 "và 4 SSD 2.5"
- Hỗ trợ bộ tản nhiệt làm lạnh chất lỏng 240mm ở mặt trước
- Hỗ trợ card đồ họa cao cấp với chiều dài lên đến 355mm / 14inch
- Hỗ trợ độ cao làm mát CPU không khí lên đến 160mm / 6.3inch
- Hỗ trợ SuperSpeed USB 3.0
- Bộ lọc bụi tháo lắp theo PSU để bảo trì dễ dàng', 12, N'Cooler Master', N'N200', N'Đen', N'202 x 378 x 445 mm', N'Micro ATX, Mini-ITX', N'	USB 3.0 x 2, USB 2.0 x 2, Audio In & Out', N'5.25" x 1 / 3.5" x 4 / 2.5" x 3', N'4', 0, N'960.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (7, N'Thùng máy/ Case Corsair 450D (No power)', N'Thùng máy Case Corsair 450D.jpg', N'Mô tả
- Form case: Mid-Tower
- Chất liệu vỏ: Thép, Nhôm
- Cửa sổ case: Acrylic
- Hỗ trợ 3x 3.5", 2x 2.5"
- Cổng USB: 2x USB 3.0', 0, N'Corsair', N'450D', N'Đen', N'Đang cập nhật', N'ATX, Micro-ATX, ITX', N'USB3.0 x 1 / USB2.0 x 2', N'Không', N'2', 0, N'2.810.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (8, N'Thùng máy/ Case Sahara P07', N'Thùng máy Case Sahara P07.jpg', N'Mô tả
- Màu: Đen
- Kích thước: 505 x 240 x 510 mm
- Hỗ trợ Mainboard: ATX, Micro ATX
- Kết nối: 2x USB 2.0, USB 3.0, HD Audio, Vị trí lắp quạt 120mm ( x7), Khe SSD: 2, Khe HDD: 2', 0, N'Sahara', N'Sahara P07', N'Đen', N'505 x 240 x 510 mm', N'ATX, Micro ATX', N'USB3.0 x 1 / USB2.0 x 2', N'Không', N'2', 0, N'750.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (9, N'Thùng máy / Case Corsair 500D RGB SE Aluminum Tempered Glass (CC-9011139-WW)', N'Thùng máy Case Corsair 500D RGB SE Aluminum Tempered Glass.jpg', N'Mô tả
- Form case: Mid-Tower
- Chất liệu vỏ: Thép
- Cửa sổ case: Kính cường lực
- Khay ổ cứng hỗ trợ: 2x 3.5", 3x 2.5"
- Cổng USB: 2x USB 3.0, 1x USB 3.1 Type-C
- Quạt đi kèm: 3 fan led RGB', 24, N'Corsair', N'500D', N'Đen', N'500 x 237 x 507 mm', N'ATX, micro ATX', N'USB3.0 x 1 / USB2.0 x 2', N'2x 3.5", 3x 2.5"', N'7x PCI-e', 0, N'6.290.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (10, N'Thùng máy/ Case Deluxe Erosi X3 (No power)', N'Thùng máy Case Deluxe Erosi X3.jpg', N'Mô tả
- Thiết kế làm mát đối lưu
- Thiết kế bảng điều khiển phía trước độc đáo & tinh tế
- Thép SECC, bảo vệ bức xạ', 0, N'Delux', N'Erosi X3', N'Đen', N'415 x 180 x 416mm', N'Micro-ATX, ATX', N'USB2.0 x 2', N'5.25" x 2 / 3.5" x 2 / 2.5" x 2', N'2', 0, N'300.000')
SET IDENTITY_INSERT [dbo].[Case] OFF
SET IDENTITY_INSERT [dbo].[Computer] ON 

INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (1, N'Laptop Lenovo Ideapad 320-15IKB 80XL009YVN (i5-7200U) (Đen)', N'Máy tính xách tay Laptop Lenovo Ideapad 320-15IKB 80XL009YVN.jpg', N'i5-7200U', N'4GB', N'NVIDIA GeForce 940MX', N'HDD 1TB HDD 5400rpm', N'2', N'15.6” LED FHD', N'2', N'Multimedia', N'Free DOS', N'Laptop    ', N'Lenovo    ', N'Multimedia', N'Đen', N'Intel Core i5 7th Gen                                                                                                                                                                                                                                          ', N'15.6"', N'1366 x 768', N'HD', N'15.6"', N'1.93kg    ', 12, 0, N'11.990.000', N'Thiết kế đơn giản
Lenovo IdeaPad 320-15IKB được thiết kế theo phong cách quen thuộc của Lenovo cho dòng IdeaPad với chất liệu nhựa cứng giúp máy nhẹ hơn so với những chiếc laptop sử dụng kim loại.

Các chi tiết trên máy như bản lề, các cổng kết nối được gia công chắc chắn, độ hoàn thiện cao.

Màn hình sắc nét
Máy sở hữu kích thước màn hình lên tới 15.6 inch cùng độ phân giải Full HD cho bạn không gian lớn với chất lượng hình ảnh sắc nét để làm việc và giải trí.

Hiệu năng mạnh mẽ
Cung cấp sức mạnh cho máy là con chip Intel Core i5 Kabylake 7200U với xung nhịp 2.50 GHz kết hợp cùng card đồ họa rời, NVIDIA GeForce 940MX, 2 GB giúp bạn có thể chơi game hay sử dụng các ứng dụng đòi hỏi đồ họa một cách khá mượt mà.

Ngoài ra với RAM 4 GB DDR4 giúp máy có tốc độ đọc ghi nhanh hơn, đem lại trải nghiệm mượt mà hơn nhưng vẫn đảm bảo tiết kiệm điện năng tiêu thụ.

Bàn phím bấm thoải mái
Với cụm bàn phím dạng chiclet thông dụng, cùng cách bố trí khoa học và hành trình phím hợp lý, bàn phím này sẽ giúp người dùng thực hiện thao tác đánh máy nhanh chóng, chính xác và thoải mái.

Touchpad thông minh
Touchpad trên máy rất nhạy, diện tích rộng rãi, cho phép thực hiện các thao tác chuột dễ dàng.
Đầy đủ các kết nối
Máy trang bị đầy đủ các cổng kết nối, trong đó có cổng HDMI để trình chiếu lên màn hình lớn như tivi hoặc máy chiếu.

Viên pin 2 cell, với vi xử lý tiết kiệm năng lượng, cho thời lượng sử dụng đảm bảo nhiều giờ sau mỗi lần sạc lại. Thiết kế pin của máy thuộc loại pin liền.')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (3, N'Laptop Asus UX430UN-GV091T (I7-8550U) ', N'Máy tính xách tay Laptop Asus UX430UN-GV091T.jpg', N' Intel Core i7-8550U (1.80 Ghz up to 4.00 Ghz, 8M Cache)', N'8GB', N'NVIDIA GeForce MX150 2GB + Intel HD Graphics 620', N'SSD 512GB ', N'2', N'Led ', N'3', NULL, N'Win 10 Home', N'Laptop    ', N'Asus      ', N'Multimedia', N'Vàng đồng', N'Intel Core i7 8th Gen                                                                                                                                                                                                                                          ', N'14"', N'1920 x 1080', N'Full HD', N'14"', N'1.3 Kg    ', 24, 0, N'29.490.000', N'Đang cập nhật')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (2, N'Laptop Acer Predator Helios 300 G3-572-79S6 (NH.Q2BSV.002)', N'Máy tính xách tay Laptop Acer Predator Helios 300 G3-572-79S6.jpg', N'Core i7, 7700HQ, 2.8GHz, 6M, Up to: 3.8GHz', N'8GB', N'NVIDIA GeForce GTX 1060 // Intel HD Graphics 630, 6GB', N'1x8GB, DDR4, 2666MHz, 2 Slots, 128GB M.2 + 1TB 5400rpm', N'2', N'Led_KB', N'4', NULL, N'Linux', N'Laptop    ', N'Acer      ', N'Gaming', N'Đen', N'Intel Core i7 7th Gen                                                                                                                                                                                                                                          ', N'15.6"', N'1920 x 1080', N'Full HD', N'15.6 "', N'2.57 Kg   ', 12, 0, N'30.990.000', N'Laptop Acer Predator Helios G3-572-79S6
may-tinh-xach-tay-laptop-acer-g3-572-79s6-nh-q2bsv-002-den

Thiết kế máy tính xách tay Acer G3-572-79S6
Thiết kế vỏ kim loại mang lại cảm giác chắc chắn kết hợp logo Predator vô cùng mạnh mẽ thu hút mọi ánh nhìn. 

may-tinh-xach-tay-laptop-acer-g3-572-79s6-nh-q2bsv-002-den
Hệ thông làm mát
Hệ thống 2 quạt tản nhiệt bằng thép của máy tính xách tay Acer G3-572-79S6 có tới 59 cánh quạt áp dụng công nghệ AeroBlade 3D độc quyền của Acer tăng luồng gió thêm 25%, đảm bảo hệ thống luôn mát mẻ khi chơi game trong thời gian dài. 

 

may-tinh-xach-tay-laptop-acer-g3-572-79s6-nh-q2bsv-002-den')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (4, N'Laptop Asus FX503VM-E4087T (I5-7300HQ) ', N'Máy tính xách tay Laptop Asus FX503VM-E4087T.jpg', N'Intel Core i5-7300HQ (2.50 Ghz up to 3.50 Ghz, 6M Cache)', N'8GB', N'NVIDIA GeForce GTX 1060 6GB + Intel HD Graphics 630', N'HDD 1TB 5400rpm', N'2', N'Led', N'3', NULL, N'Win 10 Home', N'Laptop    ', N'Asus      ', N'Gaming', N'Đen', N'Intel Core i5 7th Gen                                                                                                                                                                                                                                          ', N'15.6"', N'1920 x 1080', N'Full HD', N'15.6"', N'2.6 Kg    ', 24, 0, N'25.990.000', N'Thông số kĩ thuật
- CPU: Intel Core i5-7300HQ (2.50 Ghz up to 3.50 Ghz, 6M Cache)
- RAM: 8GB DDR4 2400 MHz (2 slots - max 32GB)
- VGA: NVIDIA GeForce GTX 1060 6GB + Intel HD Graphics 630
- Ổ cứng: HDD 1TB 5400rpm
- Khe mở rộng M2 SATA
- Màn hình: 15.6" (1920 x 1080)
- Cổng giao tiếp: HDMI, 2x USB 3.0, USB 2.0
- Wifi AC, LAN 1Gbit, Bluetooth 4.2, Webcam HD, Card reader, Led Keyboard
- Khối lượng: 2.6 Kg, pin 4 cell
- Hệ điều hành: Win 10 Home

Mô tả')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (5, N'Laptop Dell Inspiron 13 7373-C3TI501OW ', N'Máy tính xách tay Laptop Dell Inspiron 13 7373-C3TI501OW.jpg', N'Core i5, 8250U, 1.6GHz, 6M, Up to: 3.4GHz', N'8GB', N'Intel UHD Graphics 620, SHARE', N'256GB M.2 2280', N'2', N'Led_KB', N'2', NULL, N'Windows 10 Home SL 64bit', N'Laptop    ', N'Dell      ', N'Multimedia', N'Xám', N'Intel Core i5 8th Gen                                                                                                                                                                                                                                          ', N'13.3"', N'1920 x 1080', N'Full HD', N'13.3"', N'1.63 Kg   ', 12, 0, N'26.190.000', N'Hình ảnh cực kì sắc nét , âm thanh cực hay .
Làm đẹp làm sáng hơn: Thiết kế mỏng mờ giúp bạn thêm không gian màn hình cho những hình ảnh tuyệt đẹp, trong khi màn hình cảm ứng Full HD IPS cho phép bạn xem màn hình từ nhiều góc độ khác nhau mà không ảnh hưởng đến chất lượng hình ảnh. Ngoài ra, một bảng điều khiển 300-nit sáng rõ ràng làm việc ở ngoài trời dễ dàng hơn và luồng thú vị hơn.

Waves MaxxAudio® Pro cung cấp âm thanh chuyên nghiệp, hoàn thành trải nghiệm nhập vai của bạn. Nó tự động điều chỉnh âm thanh của bạn với độ cao rõ nét hơn, tăng âm trầm và tăng âm lượng để mọi thứ mà bạn nghe đều chính xác theo cách của nó.')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (8, N'Laptop HP Probook 450 G5-2XR66PA', N'Máy tính xách tay Laptop HP Probook 450 G5-2XR66PA.jpg', N'Core i7, 8550U, 1.8GHz, 8M, Up to: 4GHz', N'8GB', N'NVIDIA GeForce 930MX // Intel UHD Graphics 620, 2GB', N'8 GB, DDR4, 2400 MHz, 2 Slots, 1TB 5400rpm, Khe mở rộng: M.2 2280 (Sata / PCIe 3 x4)', N'2', N'Led_KB', N'2', NULL, N'No OS', N'Laptop    ', N'HP        ', N'Multimedia', N'Bạc', N'Intel Core i7 8th Gen                                                                                                                                                                                                                                          ', N'15.6"', N'1920 x 1080', N'Full HD', N'15.6"', N'2.1 Kg    ', 12, 0, N'21.690.000', N'Màu sắc chân thực
Laptop HP Probook 450 G5 (2XR66PA) với màn hình rộng 15.6 inch cùng với độ tương phản cao 1920x1080 pixel cho chất lượng hình ảnh sắc nét, hoàn hảo.

Laptop HP Probook 450 G5-2XR66PA

Bàn phím dễ thao tác
Bàn phím của laptop HP Probook 450 G5 (2XR66PA) cho độ êm ái hoàn hảo cùng với tiêu chuẩn hoàn hảo giúp bạn thao tác dễ dàng, nhanh chóng.

Laptop HP Probook 450 G5-2XR66PA')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (6, N'Laptop Dell Inspiron 15 5570-N5570B', N'Máy tính xách tay Laptop Dell Inspiron 15 5570-N5570B.png', N'Core i7, 8550U, 1.8GHz, 8M, Up to: 4.0GHz', N'8GB', N'AMD Radeon(R) 530 // Intel UHD Graphics 620, 4GB', N'1x8GB, DDR4, 2400MHz, 2 Slots, 2TB 5400rpm, Khe mở rộng: M.2 2280 (Sata/PCIe 3 x4)', N'2', N'Led_KB', N'2', NULL, N'Windows 10 Home SL 64bit', N'Laptop    ', N'Dell      ', N'Multimedia', N'Bạc', N'Intel Core i7 8th Gen                                                                                                                                                                                                                                          ', N'15.6"', N'1920 x 1080', N'Full HD', N'15.6"', N'2.12 Kg   ', 12, 0, N'23.790.000', N'Đánh giá Laptop Dell Inspiron 15 5570-N5570B
Sơ lược sản phẩm

Với hơn 30 năm kinh nghiệm, Dell là một ông lớn trong làng công nghệ thế giới. Riêng về sản xuất laptop, Dell chưa bao giờ chịu lép vế trước các ông lớn khác như MSI, Asus hay HP nhờ vào những sản phẩm chất lượng cao, mẫu mã đẹp mà giá thành lại rất hợp lý và mang phong cách riêng của hãng.

Dell Inspiron 5570-N5570B hình ảnh


Dell sở hữu nhiều dòng sản phẩm khác nhau. Mỗi dòng sản phẩm đều nhắm tới tập khách hàng riêng, tùy thuộc vào nhu cầu của người sử dụng. Ví dụ dòng ROG và Alienware được Dell sản xuất để nhắm đến những khách hàng có đam mê to lớn về giải trí nói chung, đặc biệt là chơi game. Dòng Insprion là dòng máy tính xách tay có giá thành vừa phải, phù hợp dành cho tập khách hàng là  nhân viên văn phòng với cấu hình ở mức khá và chất lượng hoàn thiện tốt. Nếu như Dell 15 5570 - N5570A được coi như là người anh cả của tất cả những chiếc laptop thuộc 15 5000 Series, thì sản phẩm Phong Vũ muốn giới thiệu sau đây mang mã N5570B chính là người anh thứ. Tất nhiên, tất cả những đặc điểm đáng nói giống với những người anh em khác ở series laptop này đều có thể dễ dàng nhận thấy tại Dell 15 5570 - N5570B như thiết kế sang trọng, hiệu năng ổn định cùng với Windows 10 Home Single Language bản quyền tới hết đời. Bên cạnh màn card màn hình rời AMD 530 4GB GDDR5 được trang bị bên trong sản phẩm thì Dell còn ưu ái dành cho N5570B tới 2TB ổ cứng HDD, thay vì chỉ 1TB như hầu hết những sản phẩm trong đại gia đình Dell. Hãy cùng Phong Vũ tìm hiểu sản phẩm này nhé!')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (7, N'Laptop LG 13ZD970-G.AX51A5 (I5-7200U) ', N'Máy tính xách tay Laptop LG 13ZD970-G.AX51A5.jpg', N'Core i5, 7200U, 2.5 GHz, 3M, Up to: 3.1 GHz', N'8GB', N'Intel HD Graphics 620, Share', N'8 GB, DDR4, 2133 MHz, 1 Slot, 256GB M.2 2280', N'2', N'Led_KB', N'2', NULL, N'No OS', N'Laptop    ', N'LG        ', N'Multimedia', N'Trắng', N'Intel Core i5 7th Gen                                                                                                                                                                                                                                          ', N'13.3"', N'1920 x 1080', N'Full HD', N'13.3"', N'940 G     ', 12, 0, N'24.000.000', N'Đánh giá sản phẩm Laptop LG 13ZD970-G.AX51A5
Sơ lược sản phẩm
Hướng tới phục vụ khách hàng cao cấp với các tiêu chí sử dụng như cấu hình mạnh, thiết kế đẹp, mỏng, nhẹ thuận tiện cho việc di chuyển. Mới đây ông trùm hiển thị xứ Kim Chi cho ra đời chiếc laptop LG Gram 13ZD970-G.AX51A5 là dòng sản phẩm cao cấp đáp ứng tuyệt vời các yêu cầu trên với thiết kế sang trọng, đẹp mắt và cấu hình cao. Máy phù hợp cho các doanh nhân những người thích sự nhỏ gọn và tiện ích, thường xuyên phải đi gặp khách hàng đi máy bay hay những người thường xuyên phải di chuyển .
Máy xách tay/ Laptop LG 13ZD970-G.AX51A5 (I5-7200U) (Trắng)

Tổng quan thiết kế
Laptop LG Gram 13ZD970-G.AX51A5 sở hữu màn hình 13,3 inch nhỏ gọn. Đường viền mỏng giúp màn hình trông lớn hơn và vừa "khít" với phần thân nhỏ gọn. Toàn bộ vỏ máy được thiết trên chất liệu hợp kim trắng bóng sáng láng. Sự kết hợp của đường viền mảnh mai cùng kiểu dáng gọn nhẹ giúp bạn dễ dàng mang theo ở bất cứ đâu. Để có được tầm nhìn rộng hoàn hảo, Laptop LG Gram 13ZD970-G.AX51A5 được trang bị màn hình "tràn viền" với đường viền siêu mỏng mỏng ở tất cả các cạnh cho trải nghiệm hiển thị rất đã mắt. Để làm được điều đó nhà sản xuất đã bố trí camera xuống dưới bản lề khá độc đáo. Bên cạnh đó, dù có thiết kế khung thân nhỏ, sản phẩm vẫn tạo ra cảm giác màn hình lớn hơn, đem lại trải nghiệm hình ảnh thỏa mãn hơn.

Máy tính xách tay LG Gram 13ZD970-G.AX51A5 siêu nhẹ với 0.94kg. Mặc dù được nhà sản xuất nhét bao nhiêu thứ cho hiệu năng cao hơn như CPU, SSD, RAM, cộng thêm khung kim loại bền hơn cùng thời lượng pin khủng, Laptop LG Gram 13ZD970-G.AX51A5 vẫn là ')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (9, N'Laptop Acer A7 A715-71G-57LL (NX.GP8SV.006)', N'Máy tính xách tay Laptop Acer A7 A715-71G-57LL.jpg', N'Core i5, 7300HQ, 2.5GHz, 6M, Up to: 3.5GHz', N'8GB', N'NVIDIA GeForce GTX 1050 // Intel HD Graphics 630, 2GB', N'1x8GB, DDR4, 2133MHz, 2 Slots, 1TB 5400rpm, Khe mở rộng: M.2 2280 (PCIe Gen3 x4, Sata)', N'2', N'Led_KB', N'2', NULL, N'Windows 10 Home SL 64bit', N'Laptop    ', N'Acer      ', N'Multimedia', N'Đen', N'Intel Core i5 7th Gen                                                                                                                                                                                                                                          ', N'15.6"', N'1920 x 1080', N'HD', N'15.6"', N'2.37 Kg   ', 12, 0, N'19.790.000', N'Kiểu thiết kế kẻ sọc tinh xảo cung cấp một kết thúc tinh tế kết thúc nhấn mạnh vỏ bọc nhôm cao cấp.



Cấu hình :

Cpu Core i5-7300HQ - Ram 8GB - HDD 1 TB - NVIDIA GeForce GTX 1050 // Intel HD Graphics 630 - 15.6" - fingerprint - Led KB .

Tính năng  Laptop Acer A715-71G-57LL

Offline Charging - USB 3.1 Type-C™

Cổng USB 3.0 cho phép bạn nạp tiền một cách tiện lợi các thiết bị bên ngoài ngay cả khi máy tính xách tay tắt hoặc ngủ .

Chuẩn USB mới nhất có tốc độ 5Gbps cung cấp truyền dữ liệu và truyền dữ liệu nhanh hơn.



Giao tiếp với tính rõ ràng
Thưởng thức các cuộc gọi điện video chất lượng cao đến gia đình và bạn bè bằng máy ảnh HD và hệ thống microphone kép được tích hợp sẵn với công nghệ giảm tiếng ồn. Có thể nâng cấp dễ dàng , tháo rời tiện lợi cho phép thêm bộ nhớ RAM  nhanh chóng và nâng cấp ổ cứng với việc chỉ tháo nắp thôi.

')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (10, N'Laptop Dell Inspiron 13 5378-26W972', N'Máy tính xách tay Laptop Dell Inspiron 13 5378-26W972.jpg', N'Core i5, 7200U, 2.5 GHz, 3M, Up to: 3.1 GHz', N'4GB', N'Intel HD Graphics 620, SHARE', N'4 GB, DDR4, 2133(2400) MHz, 2 Slots, 500GB 5400rpm', N'2', N'Led_KB', N'2', NULL, N'Windows 10 Home SL 64bits', N'Laptop    ', N'Dell      ', N'Multimedia', N'Xám', N'Intel Core i5 7th Gen                                                                                                                                                                                                                                          ', N'13.3"', N'1920 x 1080', N'Full HD', N'13.3"', N'1.68 KG   ', 12, 0, N'18.490.000', N'Máy xách tay/ Laptop Dell Inspiron 13 5378-26W972

Dell Inspiron 5378 được tạo nên từ chất liệu nhựa với các cạnh thiết kế vuông vức và được phủ một lớp xám .


dell inspiron 5378

Máy được thiết kế với màn hình 13.3 inch Full HD (1920 x 1080)  với công nghệ tấm nền IPS cho góc nhìn rộng, độ sáng cao, màu sắc chân thật và sắc nét. Ngoài ra, màn hình cảm ứng giúp hỗ trợ sâu hơn các thao tác của người dùng trên Windows 10 dễ dàng hơn, máy được thiết kế với độ dày chỉ 20,4 mm và trọng lượng là 1,7 kg.

 

')
SET IDENTITY_INSERT [dbo].[Computer] OFF
SET IDENTITY_INSERT [dbo].[CPU] ON 

INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (1, N'Bộ vi xử lý/ CPU Pentium Dual Core-G4600 (3.6GHz)', N'Bộ vi xử lý CPU Pentium Dual Core-G4600.jpg', 36, N'Intel     ', N'Pentium', N'Pentium Dual Core-G4600', 2, 4, N'Kaby Lake', N'3.6 GHz', N'3.6 GHz', N'3MB', N'14nm', N'CPU Intel Pentium G4600 thật sự đã cao hơn khá nhiều so với model đang rất hot hiện nay, Pentium G4560; và đã tiến rất sát đến sản phẩm cao cấp hơn - Core i3 6100, từng là lựa chọn hàng đầu của những người muốn build một chiếc PC giá hợp lý để chơi game. Bước cờ tích hợp vào dòng sản phẩm phổ thông của mình một công nghệ đã từng làm nên thương hiệu của Intel - HyperThreading, đã thật sự hồi sinh dòng sản phẩm Pentium, và chính vì đó đã khiến cho việc lựa chọn CPU của các game thủ hiện nay trở nên dễ dàng hơn.  

Chip Dual-Core
Chạy hai nhân xử lý độc lập trong một gói vật lý ở cùng một tần số. 

Bộ nhớ Intel® Smart Cache
Bộ nhớ cache chia sẻ được phân bổ tự động cho mỗi lõi của bộ xử lý, dựa trên khối lượng công việc. Sử dụng bộ nhớ cache cấp độ hiệu quả cao và giao tiếp tức thời giữa lõi và bộ nhớ.', 0, N'2.710.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (2, N'Bộ vi xử lý/ CPU Pentium G5500 (3.8GHz)', N'Bộ vi xử lý CPU Pentium G5500.jpg', 36, N'Intel     ', N'Pentium', N'Khong', 2, 4, N'Coffee Lake', N'3.8 GHz', N'3.8 GHz', N'4MB', N'14nm', N'Bộ vi xử lý/ CPU Pentium G5500 (3.8GHz)
CPU Intel Pentium Gold G5500 3.8Ghz / 4MB / Socket 1151 là thế hệ vi xử lý mới nhất của nhà sản xuất danh tiếng intel được chạy trên nền tảng Coffee Lake mới nhất hiện nay, tối ưu hóa về giải trí, chơi game, hay xử lý đồ họa ở mức cao. sản phầm đang được bán tại Phong Vũ.Bộ vi xử lý CPU Pentium G5500 (3.8GHz)', 0, N'2.710.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (3, N'Bộ vi xử lý/ CPU Core I3-7100 (3.9GHz)', N'Bộ vi xử lý CPU Core I3-7100.jpg', 36, N'Intel     ', N'Core i3 7th Gen', N'Core i3-7100', 2, 4, N'Kaby Lake', N'3.9 GHz', N'3.9 GHz', N'3MB', N'14nm', N'Đánh giá Bộ vi xử lý/ CPU Core I3-7100 (3.9GHz)
Sơ lược

INTEL đã chính thức ra mắt dòng CPU thế hệ thứ 7 của mình với tên mã Kaby Lake. Đây vẫn là dòng CPU được sản xuất trên công nghệ 14nm của Intel, nhưng đã được cải tiến đáng kể về hiệu năng xử lý đồ họa và tiết kiệm điện năng. Các CPU Kaby Lake sẽ tập trung rất nhiều vào khả năng xử lý đồ họa, đặc biệt là video với độ phân giải 4K, các video 360 độ và công nghệ thực tế ảo. Đồng thời hiệu năng xử lý các ứng dụng cũng được tăng lên 12%, còn hiệu năng duyệt web cao hơn 19% so với Skylake. Đặc biệt các dòng CPU sử dụng cho laptop mỏng, nhẹ sẽ đem lại hiệu năng và thời lượng pin được cải thiện rất nhiều.

bo-vi-xu-ly-cpu-intel-core-i3-7100-3m-cache-3-90ghz-hd-graphics-630-socket-1151-kaby-lake', 0, N'3.425.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (4, N'Bộ vi xử lý / CPU AMD Ryzen 7 2700X (3.7/4.3 GHz)', N'Bộ vi xử lý CPU AMD Ryzen 7 2700X.png', 36, N'AMD       ', N'Ryzen 7', N'Ryzen 7 2700x', 8, 16, N'Khong', N'3.7 GHz', N'4.3 GHz', N'16MB', N'12nm', N'ĐÁNH GIÁ SẢN PHẨM BỘ VI XỬ LÝ/ CPU AMD RYZEN 7 2700X (3.7/4.3 GHz)
GIỚI THIỆU SẢN PHẨM
Bộ vi xử lý/ CPU AMD Ryzen 7 2700X (3.7/4.3 GHz) là một sản phẩm thành công của AMD với nhân đồ họa Vega tích hợp, hướng tới đối tượng khách hàng game thủ chủ yếu chơi game online và một vài game eSport có thể tiết kiệm được khá nhiều chi phí cho chiếc PC của bản thân. Sản phẩm này phù hợp các hệ thống máy Gaming, Stream, giải trí Hi-End cao cấp. Đây là dòng CPU đa nhân, đa nhiệm có mức xung nhịp cao phù hợp các hệ thống máy WORKSTATION như dựng hình 3D (3DS MAX, MAYA, Blender, Sketchup...), Render 3D, dựng phim (Adobe Premiere, After Effect, Sony Vegas, Corel Studio...), ứng dụng biên tập ảnh (Photoshop, Lightroom...) và các ứng dụng khác... BỘ VI XỬ LÝ/ CPU AMD RYZEN 7 2700G (3.7/4.3 GHz)', 0, N'9.100.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (5, N'Bộ vi xử lý/ CPU AMD Ryzen R7 1700X (3.4/3.8GHz)', N'Bộ vi xử lý CPU AMD Ryzen R7 1700X.jpg', 36, N'AMD       ', N'Ryzen 7', N'Ryzen R7 1700X', 8, 16, N'Summit Ridge', N'3.4 GHz', N'3.8 GHz', N'16MB', N'14nm', N'Mô tả:

CPU máy tính AMD Ryzen 7 1700x 3.4 GHz (Up to 3.8GHz)

- Công nghệ AMD SenseMI
- Công nghệ AMD XFR (dải tần số)
- Cơ chế làm mát hiệu quả
- AMD Ryzen Master cho việc ép xung





 1.1. Tổng quan về sản phẩm

CPU máy tính Ryzen 7 1700x 3.4 GHz hỗ trợ dual-channel DDR4 với tốc độ tối đa 3200 MHz kèm theo đó là một loạt các tập lệnh như AVX2, AES, FMA3, AMD-V SSE 4.1, 4.2 ... Một công nghệ rất nổi bật trên Ryzen là kết nối liên đới mới được AMD gọi là Infinity Fabric. Đây là một gia', 0, N'8.499.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (6, N'Bộ vi xử lý/ CPU Core I7-7700K (4.2GHz)
', N'Bộ vi xử lý CPU Core I7-7700K.jpg', 36, N'Intel     ', N'Core i5 7th Gen', N'Core i7-7700K', 4, 8, N'Kaby Lake', N'4.2 GHz', N'4.5 GHz', N'8MB', N'14nm', N'Bộ vi xử lý/ CPU Core I7-7700K (4.2GHz)
Bộ vi xử lý/ CPU Core I7-7700K

Bộ xử lý Core i7 7700K cho nền tảng máy tính để bàn đã được phát hành. Mặc dù bạn nghĩ rằng đó là một con chip mới, nhưng nó chỉ là một cách nhìn nhận từ Skylake, có nghĩa là bộ vi xử lý hàng loạt là Socket 1151. Điều này cũng có nghĩa là nếu bạn đang ở trong thị trường cho một bộ xử lý 7000 series mới, H170 hoặc Z170 của bạn Bo mạch chủ có thể tương thích với hồ Kaby sau khi nâng cấp BIOS bo mạch chủ. Bộ vi xử lý Kaby Lake mới này có hiệu quả năng lượng khá cao, vẫn mạnh mẽ như những năm trước. Nếu bạn quan tâm đến các công nghệ mới như Intel Optane, bạn sẽ cần nâng cấp lên bo mạch chủ Z270 hoặc H270. Trong bài đánh giá này, chúng tôi kiểm tra Core i7 7700K; Một bộ xử lý Kaby Lake mở khóa có bốn lõi và một TDP mỏng 91W, tương tự như Skylake TDP khôn ngoan, một lần nữa một bộ xử lý đã được chế tạo trên quy trình sản xuất 14nm.

', 0, N'9.650.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (7, N'Bộ vi xử lý/ CPU Core I7-7740X (4.30GHz)', N'Bộ vi xử lý CPU Core I7-7740X.jpg', 36, N'Intel     ', N'Ryzen Threadripper', N'Core i7-7740X', 4, 8, N'Skylake', N'4.3 GHz', N'4.5 GHz', N'8MB', N'14nm', N'Bộ vi xử lý/ CPU Core I7-7740X
Sử dụng socket 2066 chạy trên mainboard X299 mới nhất và rất nhiều nâng cấp. Số lane PCIe hỗ trợ là 16, cùng 2 kênh RAM DDR4 tại 2666. Mức tiêu thụ điện năng chỉ 112W. Sản phẩm này nhắm tới phân khúc người dụng máy trạm làm việc sản xuất nội dung số, game thủ và cộng đồng OC.

CPU Core I7-7740X', 0, N'9.325.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (8, N'Bộ vi xử lý/ CPU Core I7-8700 (3.2GHz)', N'Bộ vi xử lý CPU Core I7-8700.jpg', 36, N'Intel     ', N'Core i7 8th Gen', N'Core i7-8700', 6, 12, N'Coffee Lake', N'3.2 GHz', N'4.6 GHz', N'12MB', N'14nm', N'Bộ vi xử lý/ CPU Core I7-8700 (3.2GHz)
CPU Intel Core i7 8700 3.2Ghz Turbo Up to 4.6Ghz / 12MB / 6 Cores, 12 Threads  là thế hệ vi xử lý mới nhất của nhà sản xuất danh tiếng intel được chạy trên nền tảng Coffee Lake mới nhất hiện nay, tối ưu hóa về giải trí, chơi game, hay xử lý đồ họa ở mức cao. sản phầm đang được bán tại Phong Vũ



○ Thế hệ thứ 8 của dòng Core i với tên gọi Coffee Lake. Sử dụng socket 1151V2 và chạy trên các mainboard 300 series chipset.', 0, N'9.950.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (9, N'Bộ vi xử lý/ CPU Core I7-7700 (3.6GHz)', N'Bộ vi xử lý CPU Core I7-7700.jpg', 36, N'Intel     ', N'Core i7 7th Gen', N'Core i7-7700', 4, 8, N'Kaby Lake', N'3.6 GHz', N'4.2 GHz', N'8MB', N'14nm', N'CPU Intel Core i7-7700 3.6 GHz / 8MB / HD 630 Series Graphics / Socket 1151 (Kabylake)
Thiết yếu:

Bộ Sưu Tập Sản Phẩm 7th Generation Intel® Core™ i7 Processors
Tên mã Kaby Lake trước đây của các sản phẩm
Phân đoạn thẳng Desktop
Số hiệu Bộ xử lý i7-7700
Tình trạng Launched
Ngày phát hành Q1''17
Thuật in thạch bản 14 nm
Giá đề xuất cho khách hàng

Hiệu suất:

Số lõi 4
Số luồng 8
Tần số cơ sở của bộ xử lý 3.60 GHz
Tần số turbo tối đa 4.20 GHz', 0, N'9.500.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (10, N'Bộ vi xử lý/ CPU Core I7-7800X (3.50 GHz)', N'Bộ vi xử lý CPU Core I7-7800X.jpg', 36, N'Intel     ', N'Ryzen Threadripper', N'Core i7-7800X', 6, 12, N'Skylake', N'3.5 GHz', N'4.0 GHz', N'8.25MB', N'14nm', N'Đang cập nhật', 0, N'10.420.000')
SET IDENTITY_INSERT [dbo].[CPU] OFF
SET IDENTITY_INSERT [dbo].[Hardware] ON 

INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (1, N'Ổ cứng HDD WD 6TB WD6003FZBX Sata 3 (Đen)', N'Ổ cứng HDD WD 6TB WD6003FZBX Sata 3.jpg', N'Đang cập nhật', 60, N'Western Digital', N'6TB       ', N'WD6003FZBX', N'Chưa xác định', N'Chưa xác định', N'3.5"', 0, N'6.944.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (2, N'Ổ cứng NAS Seagate Ironwolf 6TB 3.5" Sata 3 (ST6000VN0033)', N'Ổ cứng NAS Seagate Ironwolf 6TB 3.5" Sata 3.jpg', N'ĐIỂM NỔI BẬT CỦA SẢN PHẨM
Được thiết kế đi kèm Phần mềm AgileArray tối ưu Tốc độ và độ bền cho ổ cứng chạy tốt với tốc độ ổn định trong thời gian dài.
Công nghệ đa người dùng giúp cho tối ưu số lượng người sử dụng cho hệ thống NAS của bạn.
Quản lí điện năng tiên tiến giúp cho hệ thống của bạn hoạt động tốt mà vẫn tiết kiệm năng lượng.
 
hdd seagate ironwolf

AgileArray Firmware – Linh hồn của IronWolf có thể giữ lại sự nhanh nhẹn và nhạy bén về những gì hệ thống NAS cần để đáp ứng các nhu cầu lưu trữ cho người dùng của mình. AgileArray cho phép các ổ đĩa được NAS được tối ưu hóa bằng cách tập trung vào sự cân bằng ổ đĩa, tối ưu hóa RAID và quản lý điện năng.', 36, N'Seagate', N'6TB       ', N'Không     ', N'Chưa xác định', N'Chưa xác định', N'Không     ', 0, N'6.300.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (3, N'Ổ cứng SSD IBM 2.5'''' 120GB (00AJ171)', N'Ổ cứng SSD IBM 2.5'''' 120GB.jpg', N'Đang cập nhật', 12, N'IBM', N'120GB     ', N'N/A       ', N'N/A', N'600 MBps', N'N/A', 0, N'5.820.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (4, N'Ổ cứng SSD WD 512GB My Passport External', N'Ổ cứng SSD WD 512GB My Passport External.png', N'Đánh giá sản phẩm Ổ cứng SSD WD 512GB My Passport External
Mô tả sản phẩm
Ổ SSD WD 512GB My Passport External là bộ lưu trữ di động với tốc độ cực nhanh. Bảo vệ mật khẩu bằng mã hóa phần cứng giúp bảo mật nội dung của bạn một cách an toàn. Dễ sử dụng, sản phẩm còn có khả năng chống sốc, thiết kế nhỏ gọn,thời gian sử dụng bền lâu.Ổ cứng SSD WD 512GB My Passport External

Tốc độ nhanh nhất
Ổ SSD WD 512GB My Passport External cho đến thời điểm hiện tại được coi là ổ cứng di động nhanh nhất với tốc độ đọc giữ liệu lên đến 515MB/s. Việc sử dụng cổng  USB Type-C giúp truyền tải dữ liệu một cách nhanh chóng. Tốc độ của SSD WD 512GB My Passpor', 36, N'Western', N'512GB     ', N'Không     ', N'Chưa xác định', N'515 MBps', N'Không     ', 0, N'5.390.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (5, N'Ổ cứng HDD WD 6TB WD60EFRX Sata 3 (Đỏ)', N'Ổ cứng HDD WD 6TB WD60EFRX Sata 3.jpg', N'Ổ cứng WD Red 6TB chuyên dụng cho NAS
Ổ cứng WD Red 6TB cho khả năng tương thích tối ưu với hệ thống NAS gia đình, văn phòng, doanh nghiệp vừa và nhỏ trong hệ thống từ 1 đến 8 bay ổ đĩa.
Công nghệ NASware 3.0 tích hợp trên HDD WD Red 6TB cho phép dễ dàng tích hợp vào nas, tăng độ tin cậy và hiệu năng sử dụng, giảm thiểu downtime (thời gian chết), kiểm soát khắc phục lỗi trong môi trường RAID chạy nhiều khay ổ cứng. Công nghệ 3D Active Balance Plus – công nghệ kiểm soát cân bằng nâng cao, giúp nâng cao đáng kể hiệu năng và độ tin cậy toàn ổ.
Được thiết kế và thử nghiệm để đáp ứng những yêu cầu đặc biệt về hệ thống trong môi trường NAS, ổ cứng nas WD Red cho độ tin cậy cao lên tới 1 triệu giờ (MTBF), hoạt động bền bỉ 24x7 trong môi trường NAS.', 36, N'Western', N'6TB       ', N'Không     ', N'Chưa xác định', N'Chưa xác định', N'N/A', 0, N'5.150.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (6, N'Ổ cứng HDD Seagate 4TB Backup Plus 3.0, 2.5'''' (Đen)', N'Ổ cứng HDD Seagate 4TB Backup Plus 3.0, 2.5.png', N'Seagate Backup Plus Portable Drive 4TB có thiết kế hoàn toàn mới, lớp vỏ bên ngoài bằng nhựa bề mặt phẳng với logo đặc trưng của hãng Seagate ( logo mới năm 2015)

 

Kết nối USB 3.0 tốc độ nhanh gập 10 lần chuẩn 2.0, đây là dòng ổ cứng di động seagate thích hợp lưu trữ dung lượng lớn với dung lượng của ổ cứng 4TB mà chỉ nhỏ 2.5 inches nó không cần dùng thêm ngồn điện phụ trợ bên ngoài như các ổ cứng 3.5 inches - dây USB 3.0 kèm theo dài 45.72cm

Ổ cứng di động Seagate Backup Plus Portable dễ dàng sao lưu dữ liệu điện thoại di động thông qua ứng dụng Seagate Mobile Backup , có thể dùng cho cả PC và MAC.', 36, N'Seagate', N'4TB       ', N'Không     ', N'Chưa xác định', N'Chưa xác định', N'Không     ', 0, N'4.650.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (8, N'Ổ cứng HDD HP 3.5'''' 1TB 6G SATA 7.2K (861691-B21)', N'Ổ cứng HDD HP 3.5'''' 1TB 6G SATA 7.2K.jpg', N'Đang cập nhật', 12, N'HP', N'1TB       ', N'861691-B21', N'Chưa xác định', N'Chưa xác định', N'3.5"', 0, N'4.860.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (7, N'Ổ cứng SSD Corsair Force LE 480GB-F480GBLE200B', N'Ổ cứng SSD Corsair Force LE 480GB-F480GBLE200B.jpg', N' Khởi động và tắt máy tính của bạn nhanh hơn, bắt đầu các ứng dụng của bạn trong nháy mắt và tìm tập tin và tài liệu của bạn và ngay lập tức.
- Nó dễ dàng hơn bao giờ hết để nâng cấp lên tốc độ và độ tin cậy của công nghệ ổ trạng thái rắn.
- Rất nhiều dung lượng lưu trữ để đáp ứng của bạn mỗi ngày cần - làm việc, chơi, tạo ra và giữ tất cả các video của bạn, âm nhạc, tài liệu và nhiều hơn nữa.
- Sử dụng đáng kể ít năng lượng hơn so với ổ cứng truyền thống, cho hiệu quả năng lượng tốt hơn cho máy tính để bàn và tuổi thọ pin lâu hơn cho máy tính xách tay.
- SmartECC và SmartRefresh cho các dữ liệu đáng tin cậy lưu trữ và lỗi sửa chữa.
- Cải thiện tuổi thọ ổ đĩa, độ tin cậy và hiệu suất.
- Một bộ mạnh mẽ công cụ cho nhận được nhiều nhất của SSD.
- Độ tin cậy lâu dài từ một thương hiệu mà bạn có thể tin tưởng', 24, N'Corsair', N'480GB     ', N'LE200     ', N'560 MBps', N'530 MBps', N'N/A', 0, N'4.950.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (9, N'Ổ cứng HDD Transcend 4TB Cloud 110K+Box 3.5"', N'Ổ cứng HDD Transcend 4TB Cloud 110K+Box.png', N'StoreJet® Cloud 110

Thay vì dựa vào các dịch vụ lưu trữ đám mây công cộng dựa trên phí để lưu trữ dữ liệu cá nhân của bạn, hãy chọn Cloud StoreJet của Transcend để có được tối đa 4TB không gian lưu trữ cá nhân và sự yên tâm mà đi kèm với toàn quyền kiểm soát dữ liệu của bạn. Tính năng StoreJet Cloud của Transcend mang đến tốc độ truyền dữ liệu cực nhanh với tốc độ 110 MB / s và quản lý dữ liệu tập trung, cho phép lưu trữ hiệu quả và truy cập ngay vào tất cả dữ liệu của bạn ngay cả khi bạn cách xa.

Cài đặt thiết bị di động theo ba bước:
Cửa hàng StoreJet Cloud của Transcend được thiết kế từ nền tảng trở thành thiết bị thân thiện với điện thoại thông minh. Thiết lập Cloud StoreJet của bạn từ điện thoại thông minh hoặc máy tính bảng của bạn bằng ba bước đơn giản
   - Bước 1: Bật Cloud StoreJet của bạn và kết nối với Internet
   - Bước 2: Tải xuống và mở ứng dụng Transcend StoreJet Cloud - khả dụng cho cả Android và iOS - để tự động kết nối với cùng một mạng Wi-Fi
   - Bước 3: Đăng ký tài khoản và mật khẩu. 
', 24, N'Không', N'4TB       ', N'N/A       ', N'N/A', N'Chưa xác định', N'3.5"', 0, N'4.470.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (10, N'Ổ cứng SSD Samsung 860 EVO 500GB M.2 Sata (Mz-N6E500BW)', N'Ổ cứng SSD Samsung 860 EVO 500GB M.2 Sata.png', N'Đang cập nhật', 60, N'Samsung', N'500GB     ', N'860Evo M2 ', N'550 MBps', N'520 MBps', N'Không', 0, N'4.090.000')
SET IDENTITY_INSERT [dbo].[Hardware] OFF
SET IDENTITY_INSERT [dbo].[Keyboard] ON 

INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (1, N'Bàn phím Logitech Gaming G213 (Đen)', N'Bàn phím Logitech Gaming G213.png', N'Mô tả
- Bàn phím sử dụng nút bấm cao su (rubber dome) không gây tiếng ồn.
- Led RGB 16,8 triệu màu tuỳ chỉnh bằng phần mềm Logitech Gaming Software.
- Thiết kế kê tay liền phím chống mỏi.
- Tích hợp các phím đa chức năng.
- Nút khoá phím Window (window lock) phục vụ chơi game tránh bấm nhầm.
- Tần số quét / tốc độ phản hồi 1000Hz / 1ms.
- Layout ANSI tiêu chuẩn.', N'Logitech', 24, 0, N'990.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (2, N'Bàn phím cơ Zidli CK300 đen', N'Bàn phím cơ Zidli CK300 đen.png', N'Mô tả
- Bàn phím full Cơ Jixian switches, switch có thêm 2 phần nhựa cố định
- Case vuông kim loại bo cover 4 góc
- Layout ANSI, chân nâng cố định.
- Keycap ABS, single orange LED, 
- Kết nối USB 2.0, độ hoàn thiện tốt.', N'Zidli', 12, 0, N'990.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (3, N'Bàn phím cơ Fuhlen M87s Blue Kailh đen', N'Bàn phím cơ Fuhlen M87s Blue Kailh đen.jpg', N'Mô tả
- Phím cơ cho cảm giác gõ hoàn hảo, tốc độ phản hồi cực nhanh với Kailh swtich
- Dễ điều chỉnh tốc độ và độ sáng của đèn nềnC
- Công nghệ phím đúc 2 màu nhựa cho độ bền tuyệt đối
- Thiết kế với 87 phím cơ nhỏ gọn, dễ dàng sử dụng.
- Sử dụng dây dù chống nhiễu và cổng USB mạ vàng, đèn nền led RGB với nhiều chế độ điều chỉnh', N'Fuhlen', 24, 0, N'899.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (4, N'Bàn phím Logitech K400 Plus không dây (Trắng)', N'Bàn phím Logitech K400 Plus không dây.jpg', N'Mô tả
Không dây - Receive siêu nhỏ, có Touch Pad, tương thích Windows 7, 8, 10, Android 5.0, Chrome OS. Bảo hành 12 tháng', N'Logitech', 12, 0, N'830.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (5, N'Bàn phím Trust Us GXT285 ADVANCED', N'Bàn phím Trust Us GXT285 ADVANCED.jpg', N'Mô tả
- Chế độ gaming : vô hiệu hoá phím windows.
- Bộ nhớ trong có thể ghi nhớ 3 profile.
- Chức năng Anti-Ghosting: nhận tối đa 12 phím cùng lúc.
- Led tuỳ chỉnh.
- Tích hợp hàng phím đa phương tiện.
- Độ dài dây USB : 1,8m', N'Trust', 24, 0, N'799.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (6, N'Bàn phím cơ Dareu CK525 Switch xanh', N'Bàn phím cơ Dareu CK525 Switch xanh', N'Mô tả
- Led 7 màu được phân bổ từng hàng phím.
- Sử dụng "D" blue switch cho khấc phản hồi ở đỉnh hành trình.
- Tính năng Anti-ghosting : Có thể nhận cùng lúc mọi phím bấm.
- Các chức năng đa phương tiện được tích hợp.', N'DareU', 12, 0, N'707.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (7, N'Bàn phím cơ gaming Zic ZK1102 blue switch', N'Bàn phím cơ gaming Zic ZK1102 blue switch.jpg', N'Mô tả
- Bàn phím Cơ ZIC ZK1102
- Chống nước, Keycap tháo lắp
- Blue switches, tự tháo lắp, thay thế. Switch có thêm 2 phần nhựa cố định
- Case vuông kim loại bo cover 4 góc
- Chân nâng kiểu gập, Gaming
- Keycap ABS, Mix LED, 
- Kết nối USB 2.0, độ hoàn thiện tốt.', N'Zic', 12, 0, N'750.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (8, N'Bàn phím cơ Sumtax Bingo RGB (Đen)', N'Bàn phím cơ Sumtax Bingo RGB (Đen).jpg', N'Mô tả
- Led màu, đa sắc
- Outemu Blue Switch
- Giao tiếp USB
- Dây bọc chống tính điện, 1.6m', N'Sumtax', 12, 0, N'780.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (9, N'Bàn phím Logitech Bluetooth K480 (Đen)', N'Bàn phím Logitech Bluetooth K480 (Đen).png', N'Mô tả
- Kiểu bàn phím: Không dây
- Chức năng Bluetooth  kết nối được với các thiết bị di động, máy tính có Bluetooth.
- 2 pin AAA (được cài đặt sẵn)', N'Logitech', 12, 0, N'800.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (10, N'Bàn phím Logitech Bluetooth K380 (Xanh)', N'Bàn phím Logitech Bluetooth K380 (Xanh).jpg', N'Mô tả
- Thiết kế mỏng, sang trọng với màu xanh cá tính
- Kết nối một lúc nhiều thiết bị
- Truyền dữ liệu với khoảng cách xa thông qua công nghệ bluetooth
- Sử dụng công nghệ tiết kiệm năng lượng gia hạn thời gian sử dụng
- Tương thích với nhiều thiết bị kết nối', N'Logitech', 12, 0, N'693.000')
SET IDENTITY_INSERT [dbo].[Keyboard] OFF
SET IDENTITY_INSERT [dbo].[MainBoard] ON 

INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (1, N'Bo mạch chủ MSI B350 TOMAHAWK PLUS', N'Bo mạch chủ MSI B350 TOMAHAWK PLUS.jpg', N'Mô tả
- Supports AMD RYZEN Series
- Supports DDR4-3200+(OC) Memory
- Mystic Light and Mystic Light Sync
- Turbo M.2
- Audio Boost with Nahimic 
- GAMING LAN with LAN Protect', N'MSI', N'ATX       ', N'B350 TOMAHAWK PLUS', N'AMD B350', N'64GB      ', N'DDR4 2133, DDR4 2400, DDR4 3200', 4, N'1', 36, 0, N'3.268.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (2, N'Bo mạch chính/ Mainboard Msi Z170A PC MATE', N'Bo mạch chính Mainboard Msi Z170A PC MATE.png', N'Mô tả
Chipset: Intel® Z170
Socket LGA1151 
Bộ nhớ: Tối đa 64GB
Lưu trữ: M.2 x1, SATA3 x6
Cổng USB: Tối đa 8 USB 3.1, 4 USB 2.0
Âm thanh: 7.1
Kích thước: ATX', N'MSI', N'ATX       ', N'Z170A PC MATE', N'Intel Z170', N'64GB      ', N'DDR4 2400, DDR4 2800, DDR4 3000, DDR4 3200, DDR4 3600', 4, N'1', 36, 0, N'3.050.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (3, N'Bo mạch chính/ Mainboard Msi X370 Gaming Plus', N'Bo mạch chính Mainboard Msi X370 Gaming Plus', N'Bo mạch chính/ Mainboard Msi X370 Gaming Plus
TẢN NHIỆT MÁT MẺ NGAY CẢ KHI CHƠI GAMEBo mạch chính/ Mainboard Msi X370 Gaming Plus
Tản nhiệt máy tính là điều quan trọng nhất nếu muốn hệ thống làm việc ổn định khi hoạt động với cường độ cao, Chúng tôi cam đoan mang lại cho bạn số lượng cổng cắm quạt tản nhiệt đầy đủ giúp tản nhiệt tốt nhất cho bất kỳ hệ thống nào.

TÍNH NĂNG CHUYÊN GAME MANG LỢI THẾ ĐẾN VỚI BẠN
Vược qua đối thủ của bạn trong trò chơi và tạo dựng lợi thế của mình bằng một loạt các công cụ MSI GAMING. Phần cứng thông minh & công cụ phần mềm hỗ trợ tối đa và tăng cưởng kỹ năng cho bạn.

Bo mạch chính/ Mainboard Msi X370 Gaming Plus', N'MSI', N'ATX       ', N'X370 GAMING PLUS', N'Không', N'64GB      ', N'	DDR4 1866, DDR4 2133, DDR4 2400, DDR4 2666, DDR4 2800, DDR4 3000, DDR4 3200', 4, N'1', 36, 0, N'3.199.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (4, N'Bo mạch chính/ Mainboard Asrock Z370 Pro4', N'Bo mạch chính Mainboard Asrock Z370 Pro4.jpg', N'Mô tả
Chipset: Intel® Z370
Socket LGA1151 v2
Bộ nhớ: Tối đa 64GB
Lưu trữ: M.2 x2, SATA3 x6
Cổng USB: Tối đa 1 USB Type-C, 7 USB 3.1
Âm thanh: 7.1
Kích thước: ATX', N'Asrock', N'ATX       ', N'Z370 Pro4', N'Intel Z370', N'64GB      ', N'DDR4 2133, DDR4 2400, DDR4 2666, DDR4 2800, DDR4 3200, DDR4 3600, DDR4 3733, DDR4 3800, DDR4 3866, DDR4 4000, DDR4 4133, DRR4 4266', 4, N'1', 36, 0, N'3.100.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (5, N'Bo mạch chính/ Mainboard Gigabyte X150-Plus WS (Rev 1.0)', N'Bo mạch chính Mainboard Gigabyte X150-Plus WS.jpg', N'Mô tả
- Hỗ trợ bộ vi xử lý Intel Xeon E3-1200 v5 / Intel Core thế hệ thứ 6 và 7 / Pentium / Celeron
- Hỗ trợ tối đa 4 khe ram DDR4,tối ưu 2 khe
- Nhiều cổng kết nối thông dụng', N'Gigabyte', N'ATX       ', N'GA-X150-PLUS WS', N'Intel C232', N'64GB      ', N'Không', 4, N'Không', 36, 0, N'2.736.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (6, N'Bo mạch chính/ Mainboard Gigabyte H87M-D3H', N'Bo mạch chính Mainboard Gigabyte H87M-D3H.jpg', N'Mô tả
Chipset: Intel® H87 Express 
Socket LGA1150
Bộ nhớ: Tối đa 32GB
Lưu trữ: SATA3 x6
Cổng USB: Tối đa 6 USB 3.0, 8 USB 2.0
Âm thanh: 7.1
Kích thước: M-ATX', N'Gigabyte', N'ATX       ', N'Không', N'Không', N'Không     ', N'DDR3 1333, DDR3 1600', 4, N'1', 36, 0, N'2.690.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (7, N'Bo mạch chính/ Mainboard Gigabyte AB350-Gaming 3', N'Bo mạch chính Mainboard Gigabyte AB350-Gaming 3.jpg', N'Mô tả
- Socket: AM4 (1331)
- CPU hỗ trợ: Ryzen, APU thế hệ thứ 7
- Chipset: AMD B350
- Hỗ trợ ép xung: Có
- Số khe cắm RAM: 4 x DDR4 (max 3200 MHz)/kênh đôi', N'Gigabyte', N'ATX       ', N'AB350-Gaming 3', N'Không', N'64GB      ', N'DDR4 2133, DDR4 2400, DDR4 3200', 4, N'1', 36, 0, N'2.849.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (8, N'Bo mạch chính/ Mainboard Msi B350 Tomahawk', N'Bo mạch chính Mainboard Msi B350 Tomahawk.jpg', N'Mô tả
 - Hỗ trợ các bộ vi xử lý AMD® RYZEN Series và các bộ vi xử lý thế hệ 7 A-series / Athlon™ cho socket AM4
- Hỗ trợ bộ nhớ DDR4-3200+(OC)
- DDR4 Boost: Tăng cường hiệu năng cho bộ nhớ DDR4 của bạn
- VR Ready: Trải nghiệm game thực tế ảo tốt nhất mà không bị trễ
- GAMING LED: Đèn LED đem lại cảm giác ấn tượng
- Trải nghiệm game siêu nhanh: Turbo M.2', N'MSI', N'ATX       ', N'B350 Tomahawk', N'AMD B350', N'64GB      ', N'DDR4 1866, DDR4 2133, DDR4 2400, DDR4 3200', 4, N'1', 36, 0, N'3.102.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (9, N'Bo mạch chính/ Mainboard Asus Strix B350-F Gaming', N'Bo mạch chính Mainboard Asus Strix B350-F Gaming.jpg', N'Mô tả
- Aura Sync RGB LED: Hiệu ứng đồng bộ choáng ngợp và hai đầu cắm dải RGB Aura 4 pin
- Âm thanh SupremeFX: Hiệu suất âm thanh lừng danh với Sonic Studio III và Sonic Radar III đầy trực quan
- Tối ưu 5 Chiều: Ép xung toàn hệ thống với một nhấp chuột.
', N'Asus', N'ATX       ', N'Strix B350-F Gaming', N'AMD B350', N'64GB      ', N'DDR4 2133, DDR4 2400', 4, N'1', 36, 0, N'3.290.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (10, N'Bo mạch chính/ Mainboard Gigabyte B360 Aorus Gaming 3', N'Bo mạch chính Mainboard Gigabyte B360 Aorus Gaming 3.png', N'Mô tả
Chipset: Intel® B360 Express 
Socket LGA1151 v2
Bộ nhớ: Tối đa 64GB
Lưu trữ: M.2 x2, SATA3 x6
Cổng USB: Tối đa 1 USB Type-C, 5 USB 3.1, 6 USB 2.0
Âm thanh: 7.1
Kích thước: ATX', N'Gigabyte', N'ATX       ', N'Aorus Gaming 3', N'Intel B360', N'64GB      ', N'DDR4 2133, DDR4 2400, DDR4 2666', 4, N'1', 36, 0, N'3.150.000')
SET IDENTITY_INSERT [dbo].[MainBoard] OFF
SET IDENTITY_INSERT [dbo].[Radiator] ON 

INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (1, N'Quạt CPU Gigabyte Aorus ATC700', N'Quạt CPU Gigabyte Aorus ATC700.png', N'Mô tả
- Đèn RGB 16.8 triệu màu tùy chỉnh
- Quạt tản nhiệt 120mm 2 ball bearing (PWM) 
- Kích thước 139 x 109 x 169 mm
- Tốc độ 1,700 ± 10 % RPM
- Độ ồn 31 dBA
- Lưu lượng gió 53 CFM ±10%
- Tương thích 
+ Intel 2066 / 2011 / 1366 / 1156 / 1155 / 1151 / 1150 / 775
+ AMD FM2+, FM2, FM1, AM4, AM3+, AM3, AM2+, AM2, 939, 754', N'Gigabyte', N'ATC700', N'Nhôm', N'500-1700 RPM±10%', N'Cao 169.4mm', N'120mm', N'LGA 1150, LGA 1151, LGA 1155, LGA 1156, LGA 1366, LGA 2011, LGA 2011-v3, LGA 775, Socket 754, Socket 939, Socket AM2, Socket AM2+, Socket AM3, Socket AM3+, Socket AM4, Socket FM1, Socket FM2, Socket FM2+', 0, N'2.250.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (2, N'Quạt CPU Deepcool Captain 240 EX', N'Quạt CPU Deepcool Captain 240 EX.png', N'Mô tả
- Kích thước tản CPU 92.5 x 93 x 85 mm
- Kích thước 274 x 120 x 27 mm
- Tốc độ 1800 ± 10 % RPM
- Độ ồn 31 dBA
- Lưu lượng gió 153.04 CFM ±10%
- Tương thích 
+ Intel LGA20XX / LGA1366 / LGA115X
+ AMD AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1', N'Deepcool', N'Captain 240 EX', N'Nhôm', N'500±200-1800 RPM ± 10%', N'274X120X27mm', N'120mm', N'	LGA 1150, LGA 1151, LGA 1155, LGA 1156, LGA 1366, LGA 2011, LGA 2011-v3, LGA 2066, Socket AM2, Socket AM2+, Socket AM3, Socket AM3+, Socket AM4, Socket FM1, Socket FM2, Socket FM2+', 0, N'2.450.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (3, N'Quạt CPU Corsair Hydro H80i v2', N'Quạt CPU Corsair Hydro H80i v2.png', N'Mô tả
- Bộ tản nhiệt dày đặc,sang trongj.
- Hiệu suất làm lạnh tùy biến.
- Cổng kết hợp Corsair.
- Làm mát CPU hiệu năng cao làm đơn giản.', N'Corsair', N'Hydro H80i v2', N'Đồng nguyên chất, Nhôm', N'2435 +/- 10% RPM', N'Đang cập nhật', N'120mm', N'LGA 1150, LGA 1151, LGA 1155, LGA 1156, LGA 1366, LGA 2011, LGA 2011-v3, Socket AM2, Socket AM3, Socket FM1, Socket FM2', 0, N'2.539.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (4, N'Quạt CPU Deepcool Captain 240EX RGB verison (Đen)', N'Quạt CPU Deepcool Captain 240EX RGB verison.jpg', N'Mô tả
- Kích thước rad : 240mm
- Socket phù hợp : Intel LGA 115x, 2011, 2066 / AMD AM4, AM3
- Led : RGB', N'Deepcool', N'Captain 240EX RGB', N'chất lỏng', N'Không', N'Không', N'120mm', N'LGA 1151, LGA 2011, LGA 2011-v3, LGA 2066, Socket AM3, Socket AM4', 0, N'2.750.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (5, N'Quạt case Corsair LL120 RGB 120mm (3 fan + Lighting) (CO-9050072-WW)', N'Quạt case Corsair LL120 RGB 120mm.png', N'Mô tả
- Fan RGB led ring độc đáo, tuỳ chỉnh 16.8 triệu màu.
- Số vòng quay: 600 RPM - 1500 RPM.
- Thiết kế phù hợp với mọi loại case.
- Kích thước quạt: 120mm x 25mm.', N'Corsair', N'LL120', N'Nhựa', N'600 - 1500 +/- 10% RPM', N'120 mm x 25 mm', N'120mm', N'N/A', 0, N'2.599.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (6, N'Quạt CPU Deepcool Captain 240EX RGB verison (Trắng)', N'Quạt CPU Deepcool Captain 240EX RGB verison.jpg', N'Mô tả
Kích thước rad : 240mm
Socket hỗ trợ : Intel LGA 115X, 2011, 2066 / AMD AM4, AM3', N'Deepcool', N'Captain 240EX RGB', N'chất lỏng', N'Không', N'Không', N'240mm', N'LGA 1151, LGA 2011, LGA 2011-v3, LGA 2066, Socket AM3, Socket AM4
', 0, N'2.600.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (7, N'Quạt case Aigo Aurora R5 (5PCS/Pack)', N'Quạt case Aigo Aurora R5.png', N'Mô tả
- Kích thước fan: 120x120x25mm
- Trọng lượng: 150g
- Tốc độ: 1500 (+/-10%)RPM
- Độ ồn: 23.5dBA
- Sức gió: 33CFM
- Hydro Bearing Fan
- Điện thế 0.35A/ 12V/ 4.2W
- Tuổi thọ: 20.000 giờ
- Gồm 5 Fan + 1 Power Hub', N'Aigo', N'Không', N'Không', N'1500 (+/-10%)RPM', N'120 x 120 x 25 mm', N'Không', N'Không', 0, N'890.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (8, N'Quạt CPU CM Hyper 212 LED Turbo (Đỏ)', N'Quạt CPU CM Hyper 212 LED Turbo.jpg', N'Mô tả
- Kích thước 120 x 108 x 163 mm
- Tốc độ 1,600 ± 10 % RPM
- Độ ồn 31 dBA
- Lưu lượng gió 66.3 CFM ±10%
- Tương thích 
+ Intel LGA 2066 / 2011-3 / 2011 / 1366 / 1156 / 1155 / 1151 / 1150 / 775
+ AMD AM4 / AM3+ / AM3 / AM2+ / FM2+ / FM2 / FM1', N'Cooler Master', N'Hyper 212 LED Turbo', N'Nhôm', N'600-1,600 RPM ± 10%', N'120 x 108 x 163 mm', N'120mm', N'LGA 1150, LGA 1151, LGA 1155, LGA 1156, LGA 1366, LGA 2011, LGA 2011-v3, LGA 2066, LGA 775, Socket AM2, Socket AM2+, Socket AM3, Socket AM3+, Socket AM4, Socket FM1, Socket FM2, Socket FM2+', 0, N'820.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (12, N'Tản nhiệt CPU Corsair Hydro Cooler H150i Pro RGB - 360mm - Tripple', N'Tản nhiệt CPU Corsair Hydro Cooler H150i Pro RGB - 360mm - Tripple.jpg', N'Mô tả
- Đèn Lighting RGB
- Kích thước Rad 360mm
- Fan Corsair ML120 x3
- Tương thích 
+ Intel 115x, Intel 2011/2066
+ AMD AM2, AM3, AM4', N'Corsair', N'Hydro Cooler H150i Pro', N'Nhôm', N'Không', N'Rad 360 mm', N'120mm', N'LGA 1150, LGA 1151, LGA 1155, LGA 1156, LGA 2011, LGA 2066, Socket AM2, Socket AM3, Socket AM4', 0, N'5.290.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (14, N'Quạt CPU Deepcool Gammaxx 400 (Xanh)', N'Quạt CPU Deepcool Gammaxx 400 (Xanh).jpg', N'Mô tả
- Kích thước 135 x 80 x 154.5 mm
- Tốc độ 1,500 ± 10% RPM
- Độ ồn 30 dBA
- Lưu lượng gió 74.34 CFM
- Tương thích 
+ Intel 20XX, LGA1366, LGA115X, LGA775
+ AMD AM4, AM3+, AM3, AM2+, AM2, FM2+, FM2, FM1', N'Deepcool', N'Gammaxx 400', N'Nhôm', N'900 ± 150 ~ 1500 RPM ± 10%', N'135X80X154.5mm', N'120mm', N'LGA 1150, LGA 1151, LGA 1155, LGA 1156, LGA 1366, LGA 2011, LGA 2011-v3, LGA 775, Socket AM2, Socket AM2+, Socket AM3, Socket AM3+, Socket AM4, Socket FM1, Socket FM2, Socket FM2+', 0, N'524.000')
SET IDENTITY_INSERT [dbo].[Radiator] OFF
SET IDENTITY_INSERT [dbo].[RAM] ON 

INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (1, N'Bộ nhớ DDR4 Adata 8GB (2400) AX4U240038G16-SRZ', N'Bộ nhớ DDR4 Adata 8GB (2400) AX4U240038G16-SRZ.jpg', N'Mô tả
- Loại: DDR4
- Dung lượng: 1x 8GB
- Xung nhịp: 2400 MHz
- Độ trễ (cas): 16', N'ADATA', N'Đỏ        ', N'XPG       ', N'8GB       ', N'400MHz', 36, 0, N'1.950.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (3, N'Bộ nhớ DDR4 Adata 8GB (1600) AD3U1600W8G11-S', N'Bộ nhớ DDR4 Adata 8GB (1600) AD3U1600W8G11-S.png', N'Mô tả
- Kiểu bộ nhớ: DDR3
- Dung lượng: 8GB (1x8GB) 
- Tốc độ: 1600MHz 
- Tản nhiệt: Không có', N'ADATA', N'Xanh Lá   ', N'AD3U160-S ', N'8GB       ', N'1600MHz', 36, 0, N'1.799.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (4, N'Bộ nhớ DDR4 Adata 8GB (2400) AD4U240038G17-R', N'Bộ nhớ DDR4 Adata 8GB (2400) AD4U240038G17-R.jpg', N'Mô tả
- Kiểu bộ nhớ: DDR4 
- Dung lượng: 8GB (1x8GB) 
- Tốc độ: 2400MHz 
- Tản nhiệt: Không có', N'ADATA', N'Đỏ        ', N'W8G16-BRZ ', N'8GB       ', N'400MHz', 36, 0, N'1.650.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (7, N'Bộ nhớ DDR3 Kingmax 8GB (1600)', N'Bộ nhớ DDR3 Kingmax 8GB.jpg', N'Mô tả
Loại: DDR3
Dung lượng: 8GB x1
Xung bộ nhớ: 1600MHz', N'Kingmax', N'Xanh      ', N'KINGMAX™  ', N'8GB       ', N'1600MHz', 36, 0, N'1.520.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (9, N'Bộ nhớ DDR3 G.Skill 8GB (1600) F3-1600C11S-8GNT', N'Bộ nhớ DDR3 G.Skill 8GB (1600) F3-1600C11S-8GNT.jpg', N'Mô tả
 
Công nghệ tiên tiến, mang lại nhiều tiện ích cho khách hàng', N'G.Skill', N'Đen       ', N'bus 1600  ', N'8GB       ', N'1600MHz', 36, 0, N'1.460.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (11, N'Bộ nhớ/ Ram Team Vulcan 8GB DDR3 1600 Heatsink (Gold)', N'Bộ nhớ/ Ram Team Vulcan 8GB DDR3 1600 Heatsink.jpg', N'Mô tả
- Loại RAM: DDR3
- Dung lượng: 8GB
- Xung nhịp: 1600MHz
- Độ trễ (cas): 10', N'TEAM', N'Vàng      ', N'VULCAN    ', N'8GB       ', N'1600MHz', 60, 0, N'1.450.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (12, N'Bộ nhớ laptop DDR3 G.Skill 8GB (1600) F3-1600C11S-8GRSL', N'Bộ nhớ laptop DDR3 G.Skill 8GB (1600) F3-1600C11S-8GRSL.jpg', N'Mô tả
 


- Bảo hành (tháng) 36
- Thương hiệu G.Skill
- Label N/A
- Màu sắc Đen phối đỏ
- Kiểu RAM DDR3
- Dung lượng Không
- Tốc độ bus DDR3 1600MH', N'G.Skill', N'Đen       ', N'Không     ', N'8GB       ', N'1600MHz', 36, 0, N'1.540.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (13, N'Bộ nhớ DDR3 G.Skill 8GB (1600) F3-1600C11S-8GIS', N'Bộ nhớ DDR3 G.Skill 8GB (1600) F3-1600C11S-8GIS.jpg', N'Mô tả
- Dung Lượng : 8GB (1 x 8GB)
- Tốc độ : DDR3 1600
- Voltage : 1.5V .', N'G.Skill', N'Đỏ        ', N'AEGIS     ', N'8GB       ', N'1600MHz', 36, 0, N'1.694.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (15, N'Bộ nhớ DDR3 Kingston 8GB (1600) Hyper X Fury (HX316C10FB/8) (Đen)', N'Bộ nhớ DDR3 Kingston 8GB (1600) Hyper X Fury (HX316C10FB/8) (Đen).jpg', N'Mô tả
- Hãng sản xuất: Kingston
- Dung lượng: 8GB
- Kiểu Ram: DDR3
- Bus:1600Mhz
- Tản nhiệt: Có
- Điện áp:1.5V', N'Kingston', N'Đen       ', N'HyperX    ', N'8GB       ', N'1600MHz', 36, 0, N'1.820.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (16, N'Bộ nhớ DDR4 Apacer 8GB (2400) Panther Golden Heatsink (EK.08G2T.GEC)', N'Bộ nhớ DDR4 Apacer 8GB (2400) Panther Golden Heatsink (EK.08G2T.GEC).jpg', N'Mô tả
- Loại: DDR4
- Dung lượng: 1x 8GB
- Xung nhịp: 2400 MHz
- Độ trễ (cas): 16', N'APACER', N'Đen       ', N'Không     ', N'8GB       ', N'400MHz', 36, 0, N'1.990.000')
SET IDENTITY_INSERT [dbo].[RAM] OFF
SET IDENTITY_INSERT [dbo].[VGA] ON 

INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (1, N'Card màn hình Asus 4GB CERBERUS-GTX1050TI-O4G', N'Card màn hình Asus 4GB CERBERUS-GTX1050TI-O4G.png', N'Asus      ', N'CERBERUS', N'NVIDIA', N'CERBERUS-GTX1050TI-O4G', N'GeForce GTX 1050 Ti', N'1455 MHz / 1341 MHz', N'4GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'4.694.000')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (2, N'Card màn hình Asus 2GB EX-GTX1050-02G', N'Card màn hình Asus 2GB EX-GTX1050-02G.jpg', N'Asus      ', N'Không', N'NVIDIA', N'EX-GTX1050-02G', N'GeForce GTX 1050', N'1354 MHz', N'2GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'4.586.000')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (3, N'Card màn hình Msi 4GB GTX1050Ti 4GT OCV1', N'Card màn hình Msi 4GB GTX1050Ti 4GT OCV1.jpg', N'MSI       ', N'Không', N'NVIDIA', N'GTX1050Ti 4GT OCV1', N'GeForce GTX 1050 Ti', N'1455 MHz / 1341 MHz', N'4GB', N'GDDR5', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'4.890.000')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (4, N'Card màn hình Gigabyte 4GB N105TWF2OC-4GD', N'Card màn hình Gigabyte 4GB N105TWF2OC-4GD.jpg', N'GIGABYTE  ', N'Không', N'NVIDIA', N'N105TWF2OC-4GD', N'GeForce GTX 1050 Ti', N'Boost: 1468 MHz/ Base: 1354 MHz in OC Mode. Boost: 1442 MHz/ Base: 1328 MHz in Gaming', N'4GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'4.975.000')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (5, N'Card màn hình Asus 4GB PH-GTX1050TI-4G', N'Card màn hình Asus 4GB PH-GTX1050TI-4G.jpg', N'Asus      ', N'Phoenix', N'NVIDIA', N'PH-GTX1050TI-4G', N'GeForce GTX 1050 Ti', N'1392 MHz / 1290 MHz', N'4GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'5.120.000')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (6, N'Card màn hình Asus 4GB Strix-GTX1050TI-DC2O4G-Gaming', N'Card màn hình Asus 4GB Strix-GTX1050TI-DC2O4G-Gaming.jpg', N'Asus      ', N'STRIX', N'NVIDIA', N'Strix-GTX1050TI-DC2O4G-Gaming', N'GeForce GTX 1050 Ti', N'Boots Clock 1455 MHz, Base Clock 1341 MHz', N'4GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'5.450.000')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (7, N'Card màn hình Gigabyte 4GB N105TG1 Gaming-4GD', N'Card màn hình Gigabyte 4GB N105TG1 Gaming-4GD.png', N'GIGABYTE  ', N'G1 Gaming', N'NVIDIA', N'N105TG1 Gaming-4GD', N'GeForce GTX 1050 Ti', N'Boost: 1506 MHz/ Base: 1392 MHz in OC Mode. Boost: 1480 MHz/ Base: 1366 MHz in Gaming', N'4GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'5.450.000')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (8, N'Card màn hình Msi 4GB GTX1050Ti Gaming X 4G', N'Card màn hình Msi 4GB GTX1050Ti Gaming X 4G.jpg', N'MSI       ', N'1050 TI gaming X', N'NVIDIA', N'1050 TI gaming X', N'GeForce GTX 1050 Ti', N'1392 MHz', N'4GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'5.690.000')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (9, N'Card màn hình Asus 8GB Strix GTX1070Ti-A8G-Gaming', N'Card màn hình Asus 8GB Strix GTX1070Ti-A8G-Gaming.jpg', N'Asus      ', N'Strix Gaming', N'NVIDIA', N'GTX1070Ti-A8G-Gaming', N'GeForce GTX 1070 Ti', N'1683 MHz', N'8GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'14.530.000')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (10, N'Card màn hình Asus 8GB Dual-GTX1070-O8G', N'Card màn hình Asus 8GB Dual-GTX1070-O8G.png', N'Asus      ', N'Dual', N'NVIDIA', N'Dual-GTX1070-O8G', N'GeForce GTX 1070', N'Boost: 1797 MHz/ Base: 1607 MHz in OC Mode, Boost: 1771 MHz/ Base: 1582 MHz in Gaming Mode', N'8GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'12.295.000')
SET IDENTITY_INSERT [dbo].[VGA] OFF
