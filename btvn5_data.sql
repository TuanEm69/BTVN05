USE [btap5]
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([id_nguoidung], [hoten], [email], [matkhau], [sodienthoai], [vaitro], [tongdon]) VALUES (1, N'Nguyễn Văn A', N'vana@example.com', N'hashed_password_1', N'0909123456', N'nguoidung', 0)
INSERT [dbo].[NguoiDung] ([id_nguoidung], [hoten], [email], [matkhau], [sodienthoai], [vaitro], [tongdon]) VALUES (2, N'Trần Thị B', N'tranb@example.com', N'hashed_password_2', N'0909765432', N'nguoidung', 0)
INSERT [dbo].[NguoiDung] ([id_nguoidung], [hoten], [email], [matkhau], [sodienthoai], [vaitro], [tongdon]) VALUES (3, N'Admin', N'admin@example.com', N'hashed_admin_pass', N'0123456789', N'quantri', 0)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[SuKien] ON 

INSERT [dbo].[SuKien] ([id_sukien], [tieude], [mota], [diadiem], [thoigian_batdau], [thoigian_ketthuc], [id_nguoidung], [tongve], [tongve_daban], [doanhthu]) VALUES (1, N'Đại nhạc hội mùa hè', N'Sự kiện âm nhạc ngoài trời với nhiều nghệ sĩ nổi tiếng', N'Sân vận động Mỹ Đình', CAST(N'2025-07-01T18:00:00.000' AS DateTime), CAST(N'2025-07-01T23:00:00.000' AS DateTime), 1, 2000, 0, CAST(0.00 AS Decimal(15, 2)))
INSERT [dbo].[SuKien] ([id_sukien], [tieude], [mota], [diadiem], [thoigian_batdau], [thoigian_ketthuc], [id_nguoidung], [tongve], [tongve_daban], [doanhthu]) VALUES (2, N'Hội thảo công nghệ AI', N'Sự kiện về trí tuệ nhân tạo với các chuyên gia đầu ngành', N'Trung tâm Hội nghị Quốc gia', CAST(N'2025-08-15T09:00:00.000' AS DateTime), CAST(N'2025-08-15T17:00:00.000' AS DateTime), 3, 500, 0, CAST(0.00 AS Decimal(15, 2)))
SET IDENTITY_INSERT [dbo].[SuKien] OFF
GO
SET IDENTITY_INSERT [dbo].[DonDatVe] ON 

INSERT [dbo].[DonDatVe] ([id_don], [id_nguoidung], [ngaydat], [tongtien], [trangthai_thanhtoan]) VALUES (1, 1, CAST(N'2025-04-23T16:56:18.777' AS DateTime), CAST(1300000.00 AS Decimal(15, 2)), N'DaThanhToan')
INSERT [dbo].[DonDatVe] ([id_don], [id_nguoidung], [ngaydat], [tongtien], [trangthai_thanhtoan]) VALUES (2, 2, CAST(N'2025-04-23T16:56:18.777' AS DateTime), CAST(600000.00 AS Decimal(15, 2)), N'ChoThanhToan')
SET IDENTITY_INSERT [dbo].[DonDatVe] OFF
GO
SET IDENTITY_INSERT [dbo].[Ve] ON 

INSERT [dbo].[Ve] ([id_ve], [id_sukien], [loaive], [gia], [soluong_conlai], [soluong_daban]) VALUES (1, 1, N'Thường', CAST(300000.00 AS Decimal(10, 2)), 1500, 0)
INSERT [dbo].[Ve] ([id_ve], [id_sukien], [loaive], [gia], [soluong_conlai], [soluong_daban]) VALUES (2, 1, N'VIP', CAST(1000000.00 AS Decimal(10, 2)), 500, 0)
INSERT [dbo].[Ve] ([id_ve], [id_sukien], [loaive], [gia], [soluong_conlai], [soluong_daban]) VALUES (3, 2, N'Thường', CAST(200000.00 AS Decimal(10, 2)), 400, 0)
INSERT [dbo].[Ve] ([id_ve], [id_sukien], [loaive], [gia], [soluong_conlai], [soluong_daban]) VALUES (4, 2, N'Sinh viên', CAST(100000.00 AS Decimal(10, 2)), 100, 0)
SET IDENTITY_INSERT [dbo].[Ve] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([id_chitiet], [id_don], [id_ve], [soluong], [gia_donvi]) VALUES (1, 1, 1, 2, CAST(300000.00 AS Decimal(10, 2)))
INSERT [dbo].[ChiTietDonHang] ([id_chitiet], [id_don], [id_ve], [soluong], [gia_donvi]) VALUES (2, 1, 2, 1, CAST(1000000.00 AS Decimal(10, 2)))
INSERT [dbo].[ChiTietDonHang] ([id_chitiet], [id_don], [id_ve], [soluong], [gia_donvi]) VALUES (3, 2, 3, 3, CAST(200000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhToan] ON 

INSERT [dbo].[ThanhToan] ([id_thanhtoan], [id_don], [ngay_thanhtoan], [sotien], [phuongthuc], [trangthai]) VALUES (1, 1, CAST(N'2025-04-23T16:57:04.893' AS DateTime), CAST(1300000.00 AS Decimal(15, 2)), N'Thẻ tín dụng', N'ThanhCong')
INSERT [dbo].[ThanhToan] ([id_thanhtoan], [id_don], [ngay_thanhtoan], [sotien], [phuongthuc], [trangthai]) VALUES (2, 2, CAST(N'2025-04-23T16:57:04.893' AS DateTime), CAST(600000.00 AS Decimal(15, 2)), N'Momo', N'ThatBai')
INSERT [dbo].[ThanhToan] ([id_thanhtoan], [id_don], [ngay_thanhtoan], [sotien], [phuongthuc], [trangthai]) VALUES (3, 1, CAST(N'2025-04-23T17:12:42.320' AS DateTime), CAST(800000.00 AS Decimal(15, 2)), N'Momo', N'ThanhCong')
SET IDENTITY_INSERT [dbo].[ThanhToan] OFF
GO
