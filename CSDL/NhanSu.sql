USE [NhanSu]
GO
/****** Object:  Table [dbo].[BangLuong]    Script Date: 5/27/2018 12:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BangLuong](
	[maluong] [varchar](8) NOT NULL,
	[tienphucap] [int] NULL,
	[luongcoban] [int] NULL,
 CONSTRAINT [PK_BacLuong] PRIMARY KEY CLUSTERED 
(
	[maluong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 5/27/2018 12:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChucVu](
	[macv] [varchar](8) NOT NULL,
	[tencv] [nvarchar](50) NULL,
	[motacongviec] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[macv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChuongTrinhDaoTao]    Script Date: 5/27/2018 12:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuongTrinhDaoTao](
	[mactdt] [varchar](8) NOT NULL,
	[tenctdt] [nvarchar](50) NULL,
	[mota] [nvarchar](200) NULL,
	[diadiem] [nvarchar](200) NULL,
	[thoigianbd] [date] NULL,
	[thoigiankt] [date] NULL,
	[soluong] [int] NULL,
	[kinhphi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mactdt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChuyenMon]    Script Date: 5/27/2018 12:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuyenMon](
	[manv] [varchar](8) NOT NULL,
	[matdhv] [varchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[manv] ASC,
	[matdhv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HopDongLaoDong]    Script Date: 5/27/2018 12:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HopDongLaoDong](
	[mahopdong] [varchar](8) NOT NULL,
	[manv] [varchar](8) NULL,
	[loaihopdong] [nvarchar](20) NULL,
	[thoigian] [int] NULL,
	[tungay] [date] NULL,
	[denngay] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[mahopdong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LichSuCongTac]    Script Date: 5/27/2018 12:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LichSuCongTac](
	[manv] [varchar](8) NOT NULL,
	[macongtac] [varchar](8) NOT NULL,
	[tungay] [date] NULL,
	[denngay] [date] NULL,
	[diadiem] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[manv] ASC,
	[macongtac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LichSuVPQC]    Script Date: 5/27/2018 12:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LichSuVPQC](
	[manv] [varchar](8) NOT NULL,
	[mavipham] [varchar](8) NOT NULL,
	[ngayvipham] [date] NULL,
	[motavipham] [nvarchar](200) NULL,
 CONSTRAINT [PK_LichSuVPQC] PRIMARY KEY CLUSTERED 
(
	[mavipham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NgayNghi]    Script Date: 5/27/2018 12:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NgayNghi](
	[mangaynghi] [int] IDENTITY(1,1) NOT NULL,
	[ngaynghi] [date] NOT NULL,
 CONSTRAINT [PK_NgayNghi] PRIMARY KEY CLUSTERED 
(
	[mangaynghi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NgayNghiNhanVien]    Script Date: 5/27/2018 12:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NgayNghiNhanVien](
	[mangaynghi] [int] NOT NULL,
	[manv] [varchar](8) NOT NULL,
 CONSTRAINT [PK_NgayNghiNhanVien] PRIMARY KEY CLUSTERED 
(
	[mangaynghi] ASC,
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/27/2018 12:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[manv] [varchar](8) NOT NULL,
	[anh] [nvarchar](50) NULL,
	[honv] [nvarchar](30) NULL,
	[tennv] [nvarchar](20) NULL,
	[ngaysinh] [date] NULL,
	[quequan] [nvarchar](100) NULL,
	[diachithuongtru] [nvarchar](100) NULL,
	[gioitinh] [nvarchar](4) NULL,
	[dantoc] [nvarchar](10) NULL,
	[sdt] [varchar](11) NULL,
	[email] [varchar](50) NULL,
	[maphong] [varchar](8) NULL,
	[macv] [varchar](8) NULL,
	[bacluong] [float] NULL,
	[ngayvaocongty] [date] NULL,
	[diemmanh] [nvarchar](200) NULL,
	[diemyeu] [nvarchar](200) NULL,
	[matdhv] [varchar](8) NULL,
	[cmnd] [varchar](12) NULL,
	[maluong] [varchar](8) NULL,
	[bacphucap] [float] NULL,
 CONSTRAINT [PK__NhanVien__7A21B37D2D78256B] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 5/27/2018 12:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongBan](
	[mapb] [varchar](8) NOT NULL,
	[tenpb] [nvarchar](50) NULL,
	[sdtpb] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[mapb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuanHe]    Script Date: 5/27/2018 12:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuanHe](
	[maquanhe] [varchar](8) NOT NULL,
	[tenquanhe] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[maquanhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/27/2018 12:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[tentaikhoan] [varchar](8) NOT NULL,
	[matkhau] [varchar](20) NULL,
	[manv] [varchar](8) NOT NULL,
	[quyen] [varchar](16) NULL,
 CONSTRAINT [PK_TaiKhoan_1] PRIMARY KEY CLUSTERED 
(
	[tentaikhoan] ASC,
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThamGiaDaoTao]    Script Date: 5/27/2018 12:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThamGiaDaoTao](
	[manv] [varchar](8) NOT NULL,
	[mactdt] [varchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[manv] ASC,
	[mactdt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThanNhan]    Script Date: 5/27/2018 12:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanNhan](
	[manv] [varchar](8) NOT NULL,
	[mathannhan] [varchar](8) NOT NULL,
	[hothannhan] [nvarchar](30) NULL,
	[tenthannhan] [nvarchar](20) NULL,
	[sdt] [varchar](11) NULL,
	[email] [varchar](50) NULL,
	[diachi] [nvarchar](100) NULL,
	[maquanhe] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[mathannhan] ASC,
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThoiGianDiTre]    Script Date: 5/27/2018 12:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThoiGianDiTre](
	[thoigiantre] [int] NULL,
	[ngaytre] [date] NOT NULL,
	[manv] [varchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ngaytre] ASC,
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThoiGianTangCa]    Script Date: 5/27/2018 12:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThoiGianTangCa](
	[manv] [varchar](8) NOT NULL,
	[ngaytangca] [date] NOT NULL,
	[sogio] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[manv] ASC,
	[ngaytangca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrinhDoHocVan]    Script Date: 5/27/2018 12:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TrinhDoHocVan](
	[matdhv] [varchar](8) NOT NULL,
	[tentdhv] [nvarchar](20) NULL,
	[chuyennganh] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[matdhv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[ChuyenMon]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenMon_NhanVien] FOREIGN KEY([manv])
REFERENCES [dbo].[NhanVien] ([manv])
GO
ALTER TABLE [dbo].[ChuyenMon] CHECK CONSTRAINT [FK_ChuyenMon_NhanVien]
GO
ALTER TABLE [dbo].[ChuyenMon]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenMon_TrinhDoHocVan] FOREIGN KEY([matdhv])
REFERENCES [dbo].[TrinhDoHocVan] ([matdhv])
GO
ALTER TABLE [dbo].[ChuyenMon] CHECK CONSTRAINT [FK_ChuyenMon_TrinhDoHocVan]
GO
ALTER TABLE [dbo].[HopDongLaoDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDongLaoDong_NhanVien] FOREIGN KEY([manv])
REFERENCES [dbo].[NhanVien] ([manv])
GO
ALTER TABLE [dbo].[HopDongLaoDong] CHECK CONSTRAINT [FK_HopDongLaoDong_NhanVien]
GO
ALTER TABLE [dbo].[LichSuCongTac]  WITH CHECK ADD  CONSTRAINT [FK_LichSuCongTac_NhanVien] FOREIGN KEY([manv])
REFERENCES [dbo].[NhanVien] ([manv])
GO
ALTER TABLE [dbo].[LichSuCongTac] CHECK CONSTRAINT [FK_LichSuCongTac_NhanVien]
GO
ALTER TABLE [dbo].[LichSuVPQC]  WITH CHECK ADD  CONSTRAINT [FK_LichSuVPQC_NhanVien1] FOREIGN KEY([manv])
REFERENCES [dbo].[NhanVien] ([manv])
GO
ALTER TABLE [dbo].[LichSuVPQC] CHECK CONSTRAINT [FK_LichSuVPQC_NhanVien1]
GO
ALTER TABLE [dbo].[NgayNghiNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NgayNghiNhanVien_NgayNghi] FOREIGN KEY([mangaynghi])
REFERENCES [dbo].[NgayNghi] ([mangaynghi])
GO
ALTER TABLE [dbo].[NgayNghiNhanVien] CHECK CONSTRAINT [FK_NgayNghiNhanVien_NgayNghi]
GO
ALTER TABLE [dbo].[NgayNghiNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NgayNghiNhanVien_NhanVien] FOREIGN KEY([manv])
REFERENCES [dbo].[NhanVien] ([manv])
GO
ALTER TABLE [dbo].[NgayNghiNhanVien] CHECK CONSTRAINT [FK_NgayNghiNhanVien_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_BangLuong] FOREIGN KEY([maluong])
REFERENCES [dbo].[BangLuong] ([maluong])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_BangLuong]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([macv])
REFERENCES [dbo].[ChucVu] ([macv])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_PhongBan] FOREIGN KEY([maphong])
REFERENCES [dbo].[PhongBan] ([mapb])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_PhongBan]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TrinhDoHocVan] FOREIGN KEY([matdhv])
REFERENCES [dbo].[TrinhDoHocVan] ([matdhv])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TrinhDoHocVan]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVien] FOREIGN KEY([manv])
REFERENCES [dbo].[NhanVien] ([manv])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVien]
GO
ALTER TABLE [dbo].[ThamGiaDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_ThamGiaDaoTao_ChuongTrinhDaoTao] FOREIGN KEY([mactdt])
REFERENCES [dbo].[ChuongTrinhDaoTao] ([mactdt])
GO
ALTER TABLE [dbo].[ThamGiaDaoTao] CHECK CONSTRAINT [FK_ThamGiaDaoTao_ChuongTrinhDaoTao]
GO
ALTER TABLE [dbo].[ThamGiaDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_ThamGiaDaoTao_NhanVien] FOREIGN KEY([manv])
REFERENCES [dbo].[NhanVien] ([manv])
GO
ALTER TABLE [dbo].[ThamGiaDaoTao] CHECK CONSTRAINT [FK_ThamGiaDaoTao_NhanVien]
GO
ALTER TABLE [dbo].[ThanNhan]  WITH CHECK ADD  CONSTRAINT [FK_ThanNhan_NhanVien] FOREIGN KEY([manv])
REFERENCES [dbo].[NhanVien] ([manv])
GO
ALTER TABLE [dbo].[ThanNhan] CHECK CONSTRAINT [FK_ThanNhan_NhanVien]
GO
ALTER TABLE [dbo].[ThanNhan]  WITH CHECK ADD  CONSTRAINT [FK_ThanNhan_QuanHe] FOREIGN KEY([maquanhe])
REFERENCES [dbo].[QuanHe] ([maquanhe])
GO
ALTER TABLE [dbo].[ThanNhan] CHECK CONSTRAINT [FK_ThanNhan_QuanHe]
GO
ALTER TABLE [dbo].[ThoiGianDiTre]  WITH CHECK ADD  CONSTRAINT [FK_ThoiGianDiTre_NhanVien] FOREIGN KEY([manv])
REFERENCES [dbo].[NhanVien] ([manv])
GO
ALTER TABLE [dbo].[ThoiGianDiTre] CHECK CONSTRAINT [FK_ThoiGianDiTre_NhanVien]
GO
ALTER TABLE [dbo].[ThoiGianTangCa]  WITH CHECK ADD  CONSTRAINT [FK_ThoiGianTangCa_NhanVien] FOREIGN KEY([manv])
REFERENCES [dbo].[NhanVien] ([manv])
GO
ALTER TABLE [dbo].[ThoiGianTangCa] CHECK CONSTRAINT [FK_ThoiGianTangCa_NhanVien]
GO
