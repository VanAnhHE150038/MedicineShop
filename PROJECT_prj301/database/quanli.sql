USE [QL_Banhang]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/22/2021 2:52:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Username] [nchar](15) NOT NULL,
	[MaSP] [int] NOT NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Username] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/22/2021 2:52:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [nchar](10) NOT NULL,
	[CategoryName] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 7/22/2021 2:52:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaSP] [int] NOT NULL,
	[SoLuongMua] [int] NULL,
	[DonGia] [float] NULL,
	[MaHD] [int] NOT NULL,
 CONSTRAINT [PK] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 7/22/2021 2:52:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[KhachHang] [nchar](15) NOT NULL,
	[NgayDatHang] [datetime] NULL,
	[StatusID] [int] NOT NULL,
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[TongTien] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 7/22/2021 2:52:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Username] [nchar](15) NOT NULL,
	[MatKhau] [nchar](8) NOT NULL,
	[DiaChi1] [nchar](30) NULL,
	[DiaChi2] [nchar](30) NULL,
	[Diachi3] [nchar](30) NULL,
	[SĐT] [nchar](11) NULL,
	[Email] [char](30) NULL,
	[GioiTinh] [bit] NULL,
	[linkAnh] [nchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SaleOff]    Script Date: 7/22/2021 2:52:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleOff](
	[MaSP] [int] NOT NULL,
	[GiaMoi] [float] NULL,
 CONSTRAINT [PK_SaleOff] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/22/2021 2:52:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] NOT NULL,
	[CategoryID] [nchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[Gia] [float] NULL,
	[Script] [varchar](max) NULL,
	[Subcate] [nchar](30) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[MaThuongHieu] [nchar](5) NOT NULL DEFAULT ('SA'),
	[linkAnh] [nchar](200) NULL,
	[DaBan] [int] NULL DEFAULT ((0)),
 CONSTRAINT [PK_MaSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 7/22/2021 2:52:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[CategoryID] [nchar](10) NOT NULL,
	[Subcate] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Subcate] PRIMARY KEY CLUSTERED 
(
	[Subcate] ASC,
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinhTrangDonHang]    Script Date: 7/22/2021 2:52:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangDonHang](
	[TinhTrang] [nchar](15) NULL,
	[ID] [int] NOT NULL DEFAULT ((1)),
 CONSTRAINT [PK_TinhTrangDH] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 7/22/2021 2:52:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[Ten] [nvarchar](50) NULL,
	[XuatXu] [nchar](15) NULL,
	[Ma] [nchar](5) NOT NULL,
	[linkAnh] [nchar](200) NULL,
 CONSTRAINT [PK_MaThuongHieu] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([KhachHang])
REFERENCES [dbo].[KhachHang] ([Username])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([StatusID])
REFERENCES [dbo].[TinhTrangDonHang] ([ID])
GO
ALTER TABLE [dbo].[SaleOff]  WITH CHECK ADD  CONSTRAINT [FK_MaSP_Sale] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[SaleOff] CHECK CONSTRAINT [FK_MaSP_Sale]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_MaTH] FOREIGN KEY([MaThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([Ma])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_MaTH]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_Subcate] FOREIGN KEY([Subcate], [CategoryID])
REFERENCES [dbo].[SubCategory] ([Subcate], [CategoryID])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_Subcate]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD CHECK  (([quantity]>(0)))
GO
ALTER TABLE [dbo].[TinhTrangDonHang]  WITH CHECK ADD CHECK  (([ID]>=(1) AND [ID]<=(4)))
GO
