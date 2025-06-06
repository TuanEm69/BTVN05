USE [btap5]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 23/04/2025 7:03:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[id_chitiet] [int] IDENTITY(1,1) NOT NULL,
	[id_don] [int] NULL,
	[id_ve] [int] NULL,
	[soluong] [int] NOT NULL,
	[gia_donvi] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_chitiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatVe]    Script Date: 23/04/2025 7:03:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatVe](
	[id_don] [int] IDENTITY(1,1) NOT NULL,
	[id_nguoidung] [int] NULL,
	[ngaydat] [datetime] NULL,
	[tongtien] [decimal](15, 2) NULL,
	[trangthai_thanhtoan] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_don] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 23/04/2025 7:03:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[id_nguoidung] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](100) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[matkhau] [nvarchar](255) NOT NULL,
	[sodienthoai] [nvarchar](15) NULL,
	[vaitro] [nvarchar](20) NULL,
	[tongdon] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_nguoidung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuKien]    Script Date: 23/04/2025 7:03:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuKien](
	[id_sukien] [int] IDENTITY(1,1) NOT NULL,
	[tieude] [nvarchar](200) NOT NULL,
	[mota] [nvarchar](max) NULL,
	[diadiem] [nvarchar](200) NULL,
	[thoigian_batdau] [datetime] NULL,
	[thoigian_ketthuc] [datetime] NULL,
	[id_nguoidung] [int] NULL,
	[tongve] [int] NULL,
	[tongve_daban] [int] NULL,
	[doanhthu] [decimal](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sukien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 23/04/2025 7:03:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[id_thanhtoan] [int] IDENTITY(1,1) NOT NULL,
	[id_don] [int] NULL,
	[ngay_thanhtoan] [datetime] NULL,
	[sotien] [decimal](15, 2) NULL,
	[phuongthuc] [nvarchar](50) NULL,
	[trangthai] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_thanhtoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 23/04/2025 7:03:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[id_ve] [int] IDENTITY(1,1) NOT NULL,
	[id_sukien] [int] NULL,
	[loaive] [nvarchar](50) NULL,
	[gia] [decimal](10, 2) NOT NULL,
	[soluong_conlai] [int] NOT NULL,
	[soluong_daban] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ve] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DonDatVe] ADD  DEFAULT (getdate()) FOR [ngaydat]
GO
ALTER TABLE [dbo].[DonDatVe] ADD  DEFAULT ('ChoThanhToan') FOR [trangthai_thanhtoan]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  DEFAULT ('nguoidung') FOR [vaitro]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  DEFAULT ((0)) FOR [tongdon]
GO
ALTER TABLE [dbo].[SuKien] ADD  DEFAULT ((0)) FOR [tongve]
GO
ALTER TABLE [dbo].[SuKien] ADD  DEFAULT ((0)) FOR [tongve_daban]
GO
ALTER TABLE [dbo].[SuKien] ADD  DEFAULT ((0.0)) FOR [doanhthu]
GO
ALTER TABLE [dbo].[ThanhToan] ADD  DEFAULT (getdate()) FOR [ngay_thanhtoan]
GO
ALTER TABLE [dbo].[Ve] ADD  DEFAULT ((0)) FOR [soluong_daban]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([id_don])
REFERENCES [dbo].[DonDatVe] ([id_don])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([id_ve])
REFERENCES [dbo].[Ve] ([id_ve])
GO
ALTER TABLE [dbo].[DonDatVe]  WITH CHECK ADD FOREIGN KEY([id_nguoidung])
REFERENCES [dbo].[NguoiDung] ([id_nguoidung])
GO
ALTER TABLE [dbo].[SuKien]  WITH CHECK ADD FOREIGN KEY([id_nguoidung])
REFERENCES [dbo].[NguoiDung] ([id_nguoidung])
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD FOREIGN KEY([id_don])
REFERENCES [dbo].[DonDatVe] ([id_don])
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD FOREIGN KEY([id_sukien])
REFERENCES [dbo].[SuKien] ([id_sukien])
GO
