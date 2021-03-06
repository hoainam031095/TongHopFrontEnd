USE [master]
GO
CREATE DATABASE [QuanLyShopQuanAo1]
GO
USE [QuanLyShopQuanAo1]
GO
/****** Object:  Table [dbo].[tblChiTietHoaDonBan]    Script Date: 22/10/2018 21:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietHoaDonBan](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaSP] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_tblChiTietHoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblChiTietHoaDonNhap]    Script Date: 22/10/2018 21:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietHoaDonNhap](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaSP] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_tblChiTietHoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblChiTietSP]    Script Date: 22/10/2018 21:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietSP](
	[MaSP] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[ChiTiet] [nvarchar](max) NULL,
	[Gia] [int] NULL,
	[GiaMoi] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[SoLuong] [int] NULL,
	[Order] [int] NULL,
	[Status] [int] NULL,
	[IDNhomSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblChiTietSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblHoaDonBan]    Script Date: 22/10/2018 21:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDonBan](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaKH] [nvarchar](50) NOT NULL,
	[NgayBan] [date] NULL,
 CONSTRAINT [PK_tblHoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblHoaDonNhap]    Script Date: 22/10/2018 21:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDonNhap](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaTK] [nvarchar](50) NULL,
	[MaNCC] [nvarchar](50) NULL,
	[NgayNhap] [datetime] NULL,
 CONSTRAINT [PK_tblHoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblHuyen]    Script Date: 22/10/2018 21:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHuyen](
	[ID] [int] NOT NULL,
	[TenHuyen] [nvarchar](150) NULL,
	[IDTinh] [int] NULL,
 CONSTRAINT [PK_tblHuyen] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 22/10/2018 21:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[MaKH] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SDT] [nvarchar](20) NULL,
	[Email] [nvarchar](300) NULL,
 CONSTRAINT [PK_tblKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMenu]    Script Date: 22/10/2018 21:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMenu](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Link] [nvarchar](500) NULL,
	[Order] [int] NULL,
 CONSTRAINT [PK_tblMenu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMenuParent]    Script Date: 22/10/2018 21:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMenuParent](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Link] [nvarchar](500) NULL,
	[Order] [int] NULL,
	[MainMenuID] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblMenuParent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMenuParent2]    Script Date: 22/10/2018 21:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMenuParent2](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Link] [nvarchar](500) NULL,
	[Order] [int] NULL,
	[ParentID] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblMenuParent2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNhaCungCap]    Script Date: 22/10/2018 21:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhaCungCap](
	[MaNCC] [nvarchar](50) NOT NULL,
	[TenNCC] [nvarchar](150) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SDT] [nvarchar](20) NULL,
	[Email] [nvarchar](300) NULL,
 CONSTRAINT [PK_tblNhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNhomSP]    Script Date: 22/10/2018 21:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhomSP](
	[MaNhomSP] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Content] [nvarchar](max) NULL,
	[Images] [nvarchar](max) NULL,
	[Order] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tblNhomSP] PRIMARY KEY CLUSTERED 
(
	[MaNhomSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblQuangCao]    Script Date: 22/10/2018 21:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQuangCao](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Url] [nvarchar](500) NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[Link] [nvarchar](500) NULL,
	[Target] [int] NULL,
	[Postion] [int] NULL,
	[Order] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tblQuangCao] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTaiKhoan]    Script Date: 22/10/2018 21:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaiKhoan](
	[MaTK] [nvarchar](50) NOT NULL,
	[TaiKhoan] [nvarchar](150) NULL,
	[MatKhau] [nvarchar](150) NULL,
	[Rule] [int] NULL,
	[Ten] [nvarchar](150) NULL,
	[SDT] [nvarchar](20) NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [nvarchar](150) NULL,
 CONSTRAINT [PK_tblTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTinh]    Script Date: 22/10/2018 21:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTinh](
	[ID] [int] NOT NULL,
	[TenTinh] [nvarchar](150) NULL,
 CONSTRAINT [PK_tblTinh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblXa]    Script Date: 22/10/2018 21:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblXa](
	[ID] [int] NOT NULL,
	[TenXa] [nvarchar](150) NULL,
	[IDHuyen] [int] NULL,
 CONSTRAINT [PK_tblXa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblChiTietHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHoaDonBan_tblChiTietSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tblChiTietSP] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblChiTietHoaDonBan] CHECK CONSTRAINT [FK_tblChiTietHoaDonBan_tblChiTietSP]
GO
ALTER TABLE [dbo].[tblChiTietHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHoaDonBan_tblHoaDonBan] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tblHoaDonBan] ([MaHD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblChiTietHoaDonBan] CHECK CONSTRAINT [FK_tblChiTietHoaDonBan_tblHoaDonBan]
GO
ALTER TABLE [dbo].[tblChiTietHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHoaDonNhap_tblChiTietSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tblChiTietSP] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblChiTietHoaDonNhap] CHECK CONSTRAINT [FK_tblChiTietHoaDonNhap_tblChiTietSP]
GO
ALTER TABLE [dbo].[tblChiTietHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHoaDonNhap_tblHoaDonNhap] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tblHoaDonNhap] ([MaHD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblChiTietHoaDonNhap] CHECK CONSTRAINT [FK_tblChiTietHoaDonNhap_tblHoaDonNhap]
GO
ALTER TABLE [dbo].[tblChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietSP_tblNhomSP] FOREIGN KEY([IDNhomSP])
REFERENCES [dbo].[tblNhomSP] ([MaNhomSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblChiTietSP] CHECK CONSTRAINT [FK_tblChiTietSP_tblNhomSP]
GO
ALTER TABLE [dbo].[tblHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDonBan_tblKhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tblKhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblHoaDonBan] CHECK CONSTRAINT [FK_tblHoaDonBan_tblKhachHang]
GO
ALTER TABLE [dbo].[tblHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDonNhap_tblNhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[tblNhaCungCap] ([MaNCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblHoaDonNhap] CHECK CONSTRAINT [FK_tblHoaDonNhap_tblNhaCungCap]
GO
ALTER TABLE [dbo].[tblHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDonNhap_tblTaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[tblTaiKhoan] ([MaTK])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblHoaDonNhap] CHECK CONSTRAINT [FK_tblHoaDonNhap_tblTaiKhoan]
GO
ALTER TABLE [dbo].[tblHuyen]  WITH CHECK ADD  CONSTRAINT [FK_tblHuyen_tblTinh] FOREIGN KEY([IDTinh])
REFERENCES [dbo].[tblTinh] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblHuyen] CHECK CONSTRAINT [FK_tblHuyen_tblTinh]
GO
ALTER TABLE [dbo].[tblMenuParent]  WITH CHECK ADD  CONSTRAINT [FK_tblMenuParent_tblMenu] FOREIGN KEY([MainMenuID])
REFERENCES [dbo].[tblMenu] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblMenuParent] CHECK CONSTRAINT [FK_tblMenuParent_tblMenu]
GO
ALTER TABLE [dbo].[tblMenuParent2]  WITH CHECK ADD  CONSTRAINT [FK_tblMenuParent2_tblMenuParent] FOREIGN KEY([ParentID])
REFERENCES [dbo].[tblMenuParent] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblMenuParent2] CHECK CONSTRAINT [FK_tblMenuParent2_tblMenuParent]
GO
ALTER TABLE [dbo].[tblXa]  WITH CHECK ADD  CONSTRAINT [FK_tblXa_tblHuyen] FOREIGN KEY([IDHuyen])
REFERENCES [dbo].[tblHuyen] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblXa] CHECK CONSTRAINT [FK_tblXa_tblHuyen]
GO
