USE [BakkalDb2]
GO
/****** Object:  Table [dbo].[kategori]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategori](
	[kategori_id] [int] IDENTITY(1,1) NOT NULL,
	[k_adi] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_kategori] PRIMARY KEY CLUSTERED 
(
	[kategori_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kategori_log_ins_del]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategori_log_ins_del](
	[kalid_id] [int] IDENTITY(1,1) NOT NULL,
	[kategori_id] [int] NOT NULL,
	[k_adi] [nvarchar](255) NULL,
	[islem_tarihi] [date] NOT NULL,
	[islem_turu] [nvarchar](3) NOT NULL,
	[islem_ip] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_kategori_log_ins_del] PRIMARY KEY CLUSTERED 
(
	[kalid_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kategori_log_up]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategori_log_up](
	[kalu_ip] [int] IDENTITY(1,1) NOT NULL,
	[eski_k_adi] [nvarchar](255) NULL,
	[yeni_k_adi] [nvarchar](255) NULL,
	[islem_tarihi] [date] NOT NULL,
	[islem_ip] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_kategori_log_up] PRIMARY KEY CLUSTERED 
(
	[kalu_ip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kullanici]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kullanici](
	[kullanici_id] [int] IDENTITY(1,1) NOT NULL,
	[k_kullaniciadi] [nvarchar](255) NOT NULL,
	[k_parola] [nvarchar](50) NOT NULL,
	[k_adi] [nvarchar](50) NOT NULL,
	[k_soyadi] [nvarchar](50) NOT NULL,
	[k_eposta] [nvarchar](255) NULL,
	[k_telefon] [nvarchar](50) NULL,
	[k_durum] [bit] NOT NULL,
	[rol_id] [int] NOT NULL,
 CONSTRAINT [PK_kullanici] PRIMARY KEY CLUSTERED 
(
	[kullanici_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kullanici_log_ins_del]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kullanici_log_ins_del](
	[klid_ip] [int] IDENTITY(1,1) NOT NULL,
	[kullanici_id] [int] NOT NULL,
	[k_kullaniciadi] [nvarchar](255) NULL,
	[k_parola] [nvarchar](50) NULL,
	[k_adi] [nvarchar](50) NULL,
	[k_soyadi] [nvarchar](50) NULL,
	[k_eposta] [nvarchar](255) NULL,
	[k_telefon] [nvarchar](50) NULL,
	[k_durum] [bit] NULL,
	[rol_id] [int] NULL,
	[islem_tarihi] [date] NOT NULL,
	[islem_turu] [nvarchar](3) NOT NULL,
	[islem_ip] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_kullanici_log_ins_del] PRIMARY KEY CLUSTERED 
(
	[klid_ip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kullanici_log_up]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kullanici_log_up](
	[klu_id] [int] IDENTITY(1,1) NOT NULL,
	[eski_k_kullaniciadi] [nvarchar](255) NULL,
	[yeni_k_kullaniciadi] [nvarchar](255) NULL,
	[eski_k_parola] [nvarchar](50) NULL,
	[yeni_k_parola] [nvarchar](50) NULL,
	[eski_k_adi] [nvarchar](50) NULL,
	[yeni_k_adi] [nvarchar](50) NULL,
	[eski_k_soyadi] [nvarchar](50) NULL,
	[yeni_k_soyadi] [nvarchar](50) NULL,
	[eski_k_eposta] [nvarchar](255) NULL,
	[yeni_k_eposta] [nvarchar](255) NULL,
	[eski_k_telefon] [nvarchar](50) NULL,
	[yeni_k_telefon] [nvarchar](50) NULL,
	[eski_k_durum] [bit] NULL,
	[yeni_k_durum] [bit] NULL,
	[eski_rol_id] [int] NULL,
	[yeni_rol_id] [int] NULL,
	[islem_tarihi] [date] NOT NULL,
	[islem_ip] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_kullanici_log_up] PRIMARY KEY CLUSTERED 
(
	[klu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[marka]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marka](
	[marka_id] [int] IDENTITY(1,1) NOT NULL,
	[m_adi] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_marka] PRIMARY KEY CLUSTERED 
(
	[marka_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[marka_log_ins_del]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marka_log_ins_del](
	[mlid_id] [int] IDENTITY(1,1) NOT NULL,
	[marka_id] [int] NOT NULL,
	[m_adi] [nvarchar](255) NULL,
	[islem_tarihi] [date] NOT NULL,
	[islem_turu] [nvarchar](3) NOT NULL,
	[islem_ip] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_marka_log_ins_del] PRIMARY KEY CLUSTERED 
(
	[mlid_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[marka_log_up]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marka_log_up](
	[mlu_id] [int] IDENTITY(1,1) NOT NULL,
	[eski_m_adi] [nvarchar](255) NULL,
	[yeni_m_adi] [nvarchar](255) NULL,
	[islem_tarihi] [date] NOT NULL,
	[islem_ip] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_marka_log_up] PRIMARY KEY CLUSTERED 
(
	[mlu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol](
	[rol_id] [int] IDENTITY(1,1) NOT NULL,
	[r_adi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_rol] PRIMARY KEY CLUSTERED 
(
	[rol_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol_log_ins_del]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol_log_ins_del](
	[rlid_id] [int] IDENTITY(1,1) NOT NULL,
	[rol_id] [int] NOT NULL,
	[r_adi] [nvarchar](50) NULL,
	[islem_tarihi] [date] NOT NULL,
	[islem_turu] [nvarchar](3) NOT NULL,
	[islem_ip] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_rol_log_ins_del] PRIMARY KEY CLUSTERED 
(
	[rlid_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol_log_up]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol_log_up](
	[rlu_id] [int] IDENTITY(1,1) NOT NULL,
	[eski_r_adi] [nvarchar](50) NULL,
	[yeni_r_adi] [nvarchar](50) NULL,
	[islem_tarihi] [date] NOT NULL,
	[islem_ip] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_rol_log_up] PRIMARY KEY CLUSTERED 
(
	[rlu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[satis]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[satis](
	[satis_id] [int] IDENTITY(1,1) NOT NULL,
	[s_tarih] [date] NOT NULL,
	[s_durum] [nvarchar](50) NULL,
	[kullanici_id] [int] NOT NULL,
 CONSTRAINT [PK_satis] PRIMARY KEY CLUSTERED 
(
	[satis_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[satis_log_ins_del]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[satis_log_ins_del](
	[slid_id] [int] IDENTITY(1,1) NOT NULL,
	[satis_id] [int] NOT NULL,
	[s_tarih] [date] NULL,
	[s_durum] [nvarchar](50) NULL,
	[kullanici_id] [int] NULL,
	[islem_tarihi] [date] NOT NULL,
	[islem_turu] [nvarchar](3) NOT NULL,
	[islem_ip] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_satis_log_ins_del] PRIMARY KEY CLUSTERED 
(
	[slid_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[satis_log_up]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[satis_log_up](
	[slu_id] [int] IDENTITY(1,1) NOT NULL,
	[eski_s_tarih] [date] NULL,
	[yeni_s_tarih] [date] NULL,
	[eski_s_durum] [nvarchar](50) NULL,
	[yeni_s_durum] [nvarchar](50) NULL,
	[eski_kullanici_id] [int] NULL,
	[yeni_kullanici_id] [int] NULL,
	[islem_tarihi] [date] NOT NULL,
	[islem_ip] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_satis_log_up] PRIMARY KEY CLUSTERED 
(
	[slu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[satis_maddeleri]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[satis_maddeleri](
	[sm_id] [int] IDENTITY(1,1) NOT NULL,
	[si_miktar] [float] NOT NULL,
	[si_fiyat] [float] NOT NULL,
	[si_iskonto] [float] NULL,
	[satis_id] [int] NOT NULL,
	[urun_id] [int] NOT NULL,
 CONSTRAINT [PK_satis_maddeleri] PRIMARY KEY CLUSTERED 
(
	[sm_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[smaddeleri_log_ins_del]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[smaddeleri_log_ins_del](
	[smlid_id] [int] IDENTITY(1,1) NOT NULL,
	[sm_id] [int] NOT NULL,
	[si_miktar] [float] NULL,
	[si_fiyat] [float] NULL,
	[si_iskonto] [float] NULL,
	[satis_id] [int] NULL,
	[urun_id] [int] NULL,
	[islem_tarihi] [date] NOT NULL,
	[islem_turu] [nvarchar](3) NOT NULL,
	[islem_ip] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_smaddeleri_log_ins_del] PRIMARY KEY CLUSTERED 
(
	[smlid_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[smaddeleri_log_up]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[smaddeleri_log_up](
	[smlu_id] [int] IDENTITY(1,1) NOT NULL,
	[eski_si_miktar] [float] NULL,
	[yeni_si_miktar] [float] NULL,
	[eski_si_fiyat] [float] NULL,
	[yeni_si_fiyat] [float] NULL,
	[eski_si_iskonto] [float] NULL,
	[yeni_si_iskonto] [float] NULL,
	[eski_satis_id] [int] NULL,
	[yeni_satis_id] [int] NOT NULL,
	[eski_urun_id] [int] NULL,
	[yeni_urun_id] [int] NULL,
	[islem_tarihi] [date] NOT NULL,
	[islem_ip] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_smaddeleri_log_up] PRIMARY KEY CLUSTERED 
(
	[smlu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stok]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stok](
	[s_adedi] [int] NOT NULL,
	[s_giris_tarihi] [date] NOT NULL,
	[s_bitis_tarihi] [date] NULL,
	[stok_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_stok] PRIMARY KEY CLUSTERED 
(
	[stok_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stok_log_ins_del]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stok_log_ins_del](
	[stlid_id] [int] IDENTITY(1,1) NOT NULL,
	[stok_id] [int] NOT NULL,
	[s_adedi] [int] NULL,
	[s_giris_tarihi] [date] NULL,
	[s_bitis_tarihi] [date] NULL,
	[islem_tarihi] [date] NOT NULL,
	[islem_turu] [nvarchar](3) NOT NULL,
	[islem_ip] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_stok_log_ins_del] PRIMARY KEY CLUSTERED 
(
	[stlid_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stok_log_up]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stok_log_up](
	[stlu_ip] [int] IDENTITY(1,1) NOT NULL,
	[eski_s_adedi] [int] NULL,
	[yeni_s_adedi] [int] NULL,
	[eski_s_giris_tarihi] [date] NULL,
	[yeni_s_giris_tarihi] [date] NULL,
	[eski_s_bitis_tarihi] [date] NULL,
	[yeni_s_bitis_tarihi] [date] NULL,
	[islem_tarihi] [date] NOT NULL,
	[islem_ip] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_stok_log_up] PRIMARY KEY CLUSTERED 
(
	[stlu_ip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[urun]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[urun](
	[urun_id] [int] IDENTITY(1,1) NOT NULL,
	[u_adi] [nvarchar](255) NOT NULL,
	[u_barkodu] [nvarchar](255) NOT NULL,
	[u_uretim_tarihi] [date] NULL,
	[u_tuketim_tarihi] [date] NULL,
	[u_fiyat] [float] NOT NULL,
	[u_agirlik] [float] NULL,
	[u_rengi] [nvarchar](50) NULL,
	[marka_id] [int] NOT NULL,
	[kategori_id] [int] NOT NULL,
	[stok_id] [int] NOT NULL,
 CONSTRAINT [PK_urun] PRIMARY KEY CLUSTERED 
(
	[urun_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[urun_log_ins_del]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[urun_log_ins_del](
	[u_adi] [nvarchar](255) NULL,
	[u_barkodu] [nvarchar](255) NULL,
	[u_uretim_tarihi] [date] NULL,
	[u_tuketim_tarihi] [date] NULL,
	[u_fiyat] [float] NULL,
	[u_agirlik] [float] NULL,
	[u_rengi] [nvarchar](50) NULL,
	[marka_id] [int] NULL,
	[kategori_id] [int] NULL,
	[stok_id] [int] NULL,
	[islem_tarihi] [date] NOT NULL,
	[islem_turu] [nvarchar](3) NOT NULL,
	[islem_ip] [nvarchar](50) NOT NULL,
	[ulid_id] [int] IDENTITY(1,1) NOT NULL,
	[urun_id] [int] NULL,
 CONSTRAINT [PK_urun_log_ins_del] PRIMARY KEY CLUSTERED 
(
	[ulid_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[urun_log_up]    Script Date: 6.04.2022 13:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[urun_log_up](
	[ulu_id] [int] IDENTITY(1,1) NOT NULL,
	[eski_u_adi] [nvarchar](255) NULL,
	[yeni_u_adi] [nvarchar](255) NULL,
	[eski_u_barkodu] [nvarchar](255) NULL,
	[yeni_u_barkodu] [nvarchar](255) NULL,
	[eski_u_uretim_tarihi] [date] NULL,
	[yeni_u_uretim_tarihi] [date] NULL,
	[eski_u_tuketim_tarihi] [date] NULL,
	[yeni_u_tuketim_tarihi] [date] NULL,
	[eski_u_fiyat] [float] NULL,
	[yeni_u_fiyat] [float] NULL,
	[eski_u_agirlik] [float] NULL,
	[yeni_u_agirlik] [float] NULL,
	[eski_u_rengi] [nvarchar](50) NULL,
	[yeni_u_rengi] [nvarchar](50) NULL,
	[eski_marka_id] [int] NULL,
	[yeni_marka_id] [int] NULL,
	[eski_kategori_id] [int] NULL,
	[yeni_kategori_id] [int] NULL,
	[eski_stok_id] [int] NULL,
	[yeni_stok_id] [int] NULL,
	[islem_tarihi] [date] NOT NULL,
	[islem_ip] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_urun_log_up] PRIMARY KEY CLUSTERED 
(
	[ulu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[kategori] ON 

INSERT [dbo].[kategori] ([kategori_id], [k_adi]) VALUES (2, N'yiyecek')
SET IDENTITY_INSERT [dbo].[kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[kategori_log_ins_del] ON 

INSERT [dbo].[kategori_log_ins_del] ([kalid_id], [kategori_id], [k_adi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (1, 1, N'Yiyecek', CAST(N'2022-02-15' AS Date), N'ins', N'')
INSERT [dbo].[kategori_log_ins_del] ([kalid_id], [kategori_id], [k_adi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (3, 1, N'İçecek', CAST(N'2022-02-15' AS Date), N'del', N'')
INSERT [dbo].[kategori_log_ins_del] ([kalid_id], [kategori_id], [k_adi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (1002, 2, N'yiyecek', CAST(N'2022-02-27' AS Date), N'ins', N'')
INSERT [dbo].[kategori_log_ins_del] ([kalid_id], [kategori_id], [k_adi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (1003, 3, N'Kişisel Bakım', CAST(N'2022-03-15' AS Date), N'ins', N'')
INSERT [dbo].[kategori_log_ins_del] ([kalid_id], [kategori_id], [k_adi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (1004, 3, N'Saç Bakım ', CAST(N'2022-03-15' AS Date), N'del', N'')
SET IDENTITY_INSERT [dbo].[kategori_log_ins_del] OFF
GO
SET IDENTITY_INSERT [dbo].[kategori_log_up] ON 

INSERT [dbo].[kategori_log_up] ([kalu_ip], [eski_k_adi], [yeni_k_adi], [islem_tarihi], [islem_ip]) VALUES (1, N'Yiyecek', N'İçecek', CAST(N'2022-02-15' AS Date), N'')
INSERT [dbo].[kategori_log_up] ([kalu_ip], [eski_k_adi], [yeni_k_adi], [islem_tarihi], [islem_ip]) VALUES (2, N'Kişisel Bakım', N'Saç Bakım ', CAST(N'2022-03-15' AS Date), N'')
SET IDENTITY_INSERT [dbo].[kategori_log_up] OFF
GO
SET IDENTITY_INSERT [dbo].[kullanici] ON 

INSERT [dbo].[kullanici] ([kullanici_id], [k_kullaniciadi], [k_parola], [k_adi], [k_soyadi], [k_eposta], [k_telefon], [k_durum], [rol_id]) VALUES (1, N'iremaltnz', N'123', N'İrem', N'ALTINÖZ', N'iremaltnz@gmail.com', N'123', 1, 1)
INSERT [dbo].[kullanici] ([kullanici_id], [k_kullaniciadi], [k_parola], [k_adi], [k_soyadi], [k_eposta], [k_telefon], [k_durum], [rol_id]) VALUES (2, N'irem2', N'123', N'iremm', N'altınöz', N'123', N'123', 1, 1)
SET IDENTITY_INSERT [dbo].[kullanici] OFF
GO
SET IDENTITY_INSERT [dbo].[kullanici_log_ins_del] ON 

INSERT [dbo].[kullanici_log_ins_del] ([klid_ip], [kullanici_id], [k_kullaniciadi], [k_parola], [k_adi], [k_soyadi], [k_eposta], [k_telefon], [k_durum], [rol_id], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (1, 2, N'irem2', N'123', N'iremm', N'altınöz', N'123', N'123', 1, 1, CAST(N'2022-02-27' AS Date), N'ins', N'')
SET IDENTITY_INSERT [dbo].[kullanici_log_ins_del] OFF
GO
SET IDENTITY_INSERT [dbo].[marka] ON 

INSERT [dbo].[marka] ([marka_id], [m_adi]) VALUES (1004, N'ülker')
SET IDENTITY_INSERT [dbo].[marka] OFF
GO
SET IDENTITY_INSERT [dbo].[marka_log_ins_del] ON 

INSERT [dbo].[marka_log_ins_del] ([mlid_id], [marka_id], [m_adi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (1, 3, N'ülker', CAST(N'2022-02-15' AS Date), N'ins', N'')
INSERT [dbo].[marka_log_ins_del] ([mlid_id], [marka_id], [m_adi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (2, 1, N'eti', CAST(N'2022-02-15' AS Date), N'del', N'')
INSERT [dbo].[marka_log_ins_del] ([mlid_id], [marka_id], [m_adi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (1002, 1003, N'ülker', CAST(N'2022-02-15' AS Date), N'ins', N'')
INSERT [dbo].[marka_log_ins_del] ([mlid_id], [marka_id], [m_adi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (1003, 1003, N'ülker', CAST(N'2022-02-15' AS Date), N'del', N'')
INSERT [dbo].[marka_log_ins_del] ([mlid_id], [marka_id], [m_adi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (1004, 1, N'eti', CAST(N'2022-02-15' AS Date), N'del', N'')
INSERT [dbo].[marka_log_ins_del] ([mlid_id], [marka_id], [m_adi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (1005, 1004, N'eti', CAST(N'2022-02-15' AS Date), N'ins', N'')
INSERT [dbo].[marka_log_ins_del] ([mlid_id], [marka_id], [m_adi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (2002, 2003, N'Nestle', CAST(N'2022-03-15' AS Date), N'ins', N'')
INSERT [dbo].[marka_log_ins_del] ([mlid_id], [marka_id], [m_adi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (2003, 2003, N'Eker', CAST(N'2022-03-15' AS Date), N'del', N'')
SET IDENTITY_INSERT [dbo].[marka_log_ins_del] OFF
GO
SET IDENTITY_INSERT [dbo].[marka_log_up] ON 

INSERT [dbo].[marka_log_up] ([mlu_id], [eski_m_adi], [yeni_m_adi], [islem_tarihi], [islem_ip]) VALUES (1, N'ülker', N'sütaş', CAST(N'2022-02-15' AS Date), N'')
INSERT [dbo].[marka_log_up] ([mlu_id], [eski_m_adi], [yeni_m_adi], [islem_tarihi], [islem_ip]) VALUES (2, N'eti', N'ülker', CAST(N'2022-02-15' AS Date), N'')
INSERT [dbo].[marka_log_up] ([mlu_id], [eski_m_adi], [yeni_m_adi], [islem_tarihi], [islem_ip]) VALUES (1002, N'Nestle', N'Eker', CAST(N'2022-03-15' AS Date), N'')
SET IDENTITY_INSERT [dbo].[marka_log_up] OFF
GO
SET IDENTITY_INSERT [dbo].[rol] ON 

INSERT [dbo].[rol] ([rol_id], [r_adi]) VALUES (1, N'yönetici')
SET IDENTITY_INSERT [dbo].[rol] OFF
GO
SET IDENTITY_INSERT [dbo].[rol_log_ins_del] ON 

INSERT [dbo].[rol_log_ins_del] ([rlid_id], [rol_id], [r_adi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (1, 2, N'kasiyer', CAST(N'2022-02-27' AS Date), N'ins', N'')
INSERT [dbo].[rol_log_ins_del] ([rlid_id], [rol_id], [r_adi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (2, 2, N'Reon görevlisi', CAST(N'2022-02-27' AS Date), N'del', N'')
INSERT [dbo].[rol_log_ins_del] ([rlid_id], [rol_id], [r_adi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (3, 3, N'Basit Kullanıcı', CAST(N'2022-03-15' AS Date), N'ins', N'')
INSERT [dbo].[rol_log_ins_del] ([rlid_id], [rol_id], [r_adi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (4, 3, N'Kasiyer', CAST(N'2022-03-15' AS Date), N'del', N'')
SET IDENTITY_INSERT [dbo].[rol_log_ins_del] OFF
GO
SET IDENTITY_INSERT [dbo].[rol_log_up] ON 

INSERT [dbo].[rol_log_up] ([rlu_id], [eski_r_adi], [yeni_r_adi], [islem_tarihi], [islem_ip]) VALUES (1, N'kasiyer', N'Reon görevlisi', CAST(N'2022-02-27' AS Date), N'')
INSERT [dbo].[rol_log_up] ([rlu_id], [eski_r_adi], [yeni_r_adi], [islem_tarihi], [islem_ip]) VALUES (2, N'Basit Kullanıcı', N'Kasiyer', CAST(N'2022-03-15' AS Date), N'')
SET IDENTITY_INSERT [dbo].[rol_log_up] OFF
GO
SET IDENTITY_INSERT [dbo].[satis] ON 

INSERT [dbo].[satis] ([satis_id], [s_tarih], [s_durum], [kullanici_id]) VALUES (2, CAST(N'2022-02-12' AS Date), N'durum', 1)
INSERT [dbo].[satis] ([satis_id], [s_tarih], [s_durum], [kullanici_id]) VALUES (4, CAST(N'2022-02-19' AS Date), N'durumm', 1)
SET IDENTITY_INSERT [dbo].[satis] OFF
GO
SET IDENTITY_INSERT [dbo].[satis_log_ins_del] ON 

INSERT [dbo].[satis_log_ins_del] ([slid_id], [satis_id], [s_tarih], [s_durum], [kullanici_id], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (1, 0, CAST(N'2022-02-16' AS Date), N'durum', 1, CAST(N'2022-02-28' AS Date), N'ins', N'')
INSERT [dbo].[satis_log_ins_del] ([slid_id], [satis_id], [s_tarih], [s_durum], [kullanici_id], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (2, 2, CAST(N'2022-02-12' AS Date), N'durum', 1, CAST(N'2022-02-28' AS Date), N'ins', N'')
INSERT [dbo].[satis_log_ins_del] ([slid_id], [satis_id], [s_tarih], [s_durum], [kullanici_id], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (3, 3, CAST(N'2022-02-20' AS Date), N'durum', 1, CAST(N'2022-02-28' AS Date), N'ins', N'')
INSERT [dbo].[satis_log_ins_del] ([slid_id], [satis_id], [s_tarih], [s_durum], [kullanici_id], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (4, 4, CAST(N'2022-02-19' AS Date), N'durum', 1, CAST(N'2022-02-28' AS Date), N'ins', N'')
INSERT [dbo].[satis_log_ins_del] ([slid_id], [satis_id], [s_tarih], [s_durum], [kullanici_id], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (5, 3, CAST(N'2022-02-20' AS Date), N'durum', 1, CAST(N'2022-02-28' AS Date), N'del', N'')
INSERT [dbo].[satis_log_ins_del] ([slid_id], [satis_id], [s_tarih], [s_durum], [kullanici_id], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (6, 5, CAST(N'2022-03-17' AS Date), N'durum', 1, CAST(N'2022-03-15' AS Date), N'ins', N'')
INSERT [dbo].[satis_log_ins_del] ([slid_id], [satis_id], [s_tarih], [s_durum], [kullanici_id], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (7, 5, CAST(N'2022-03-17' AS Date), N'durum', 1, CAST(N'2022-03-15' AS Date), N'del', N'')
INSERT [dbo].[satis_log_ins_del] ([slid_id], [satis_id], [s_tarih], [s_durum], [kullanici_id], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (8, 1, CAST(N'2022-03-17' AS Date), N'durum', 1, CAST(N'2022-03-15' AS Date), N'del', N'')
SET IDENTITY_INSERT [dbo].[satis_log_ins_del] OFF
GO
SET IDENTITY_INSERT [dbo].[satis_log_up] ON 

INSERT [dbo].[satis_log_up] ([slu_id], [eski_s_tarih], [yeni_s_tarih], [eski_s_durum], [yeni_s_durum], [eski_kullanici_id], [yeni_kullanici_id], [islem_tarihi], [islem_ip]) VALUES (1, CAST(N'2022-02-16' AS Date), CAST(N'2022-02-18' AS Date), N'durum', N'okeyy', 1, 1, CAST(N'2022-02-28' AS Date), N'')
INSERT [dbo].[satis_log_up] ([slu_id], [eski_s_tarih], [yeni_s_tarih], [eski_s_durum], [yeni_s_durum], [eski_kullanici_id], [yeni_kullanici_id], [islem_tarihi], [islem_ip]) VALUES (2, CAST(N'2022-02-18' AS Date), CAST(N'2022-02-10' AS Date), N'okeyy', N'durum', 1, 1, CAST(N'2022-02-28' AS Date), N'')
INSERT [dbo].[satis_log_up] ([slu_id], [eski_s_tarih], [yeni_s_tarih], [eski_s_durum], [yeni_s_durum], [eski_kullanici_id], [yeni_kullanici_id], [islem_tarihi], [islem_ip]) VALUES (3, CAST(N'2022-02-10' AS Date), CAST(N'2022-02-17' AS Date), N'durum', N'okeyy', 1, 1, CAST(N'2022-02-28' AS Date), N'')
INSERT [dbo].[satis_log_up] ([slu_id], [eski_s_tarih], [yeni_s_tarih], [eski_s_durum], [yeni_s_durum], [eski_kullanici_id], [yeni_kullanici_id], [islem_tarihi], [islem_ip]) VALUES (4, CAST(N'2022-02-17' AS Date), CAST(N'2022-03-17' AS Date), N'okeyy', N'durum', 1, 1, CAST(N'2022-03-15' AS Date), N'')
INSERT [dbo].[satis_log_up] ([slu_id], [eski_s_tarih], [yeni_s_tarih], [eski_s_durum], [yeni_s_durum], [eski_kullanici_id], [yeni_kullanici_id], [islem_tarihi], [islem_ip]) VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-03-15' AS Date), N'')
INSERT [dbo].[satis_log_up] ([slu_id], [eski_s_tarih], [yeni_s_tarih], [eski_s_durum], [yeni_s_durum], [eski_kullanici_id], [yeni_kullanici_id], [islem_tarihi], [islem_ip]) VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-03-15' AS Date), N'')
INSERT [dbo].[satis_log_up] ([slu_id], [eski_s_tarih], [yeni_s_tarih], [eski_s_durum], [yeni_s_durum], [eski_kullanici_id], [yeni_kullanici_id], [islem_tarihi], [islem_ip]) VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-03-15' AS Date), N'')
INSERT [dbo].[satis_log_up] ([slu_id], [eski_s_tarih], [yeni_s_tarih], [eski_s_durum], [yeni_s_durum], [eski_kullanici_id], [yeni_kullanici_id], [islem_tarihi], [islem_ip]) VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-03-15' AS Date), N'')
INSERT [dbo].[satis_log_up] ([slu_id], [eski_s_tarih], [yeni_s_tarih], [eski_s_durum], [yeni_s_durum], [eski_kullanici_id], [yeni_kullanici_id], [islem_tarihi], [islem_ip]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-03-15' AS Date), N'')
INSERT [dbo].[satis_log_up] ([slu_id], [eski_s_tarih], [yeni_s_tarih], [eski_s_durum], [yeni_s_durum], [eski_kullanici_id], [yeni_kullanici_id], [islem_tarihi], [islem_ip]) VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-03-15' AS Date), N'')
INSERT [dbo].[satis_log_up] ([slu_id], [eski_s_tarih], [yeni_s_tarih], [eski_s_durum], [yeni_s_durum], [eski_kullanici_id], [yeni_kullanici_id], [islem_tarihi], [islem_ip]) VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-03-15' AS Date), N'')
INSERT [dbo].[satis_log_up] ([slu_id], [eski_s_tarih], [yeni_s_tarih], [eski_s_durum], [yeni_s_durum], [eski_kullanici_id], [yeni_kullanici_id], [islem_tarihi], [islem_ip]) VALUES (12, CAST(N'2022-02-19' AS Date), CAST(N'2022-02-19' AS Date), N'durum', N'durumm', 1, 1, CAST(N'2022-03-15' AS Date), N'')
INSERT [dbo].[satis_log_up] ([slu_id], [eski_s_tarih], [yeni_s_tarih], [eski_s_durum], [yeni_s_durum], [eski_kullanici_id], [yeni_kullanici_id], [islem_tarihi], [islem_ip]) VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-03-15' AS Date), N'')
INSERT [dbo].[satis_log_up] ([slu_id], [eski_s_tarih], [yeni_s_tarih], [eski_s_durum], [yeni_s_durum], [eski_kullanici_id], [yeni_kullanici_id], [islem_tarihi], [islem_ip]) VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-03-15' AS Date), N'')
INSERT [dbo].[satis_log_up] ([slu_id], [eski_s_tarih], [yeni_s_tarih], [eski_s_durum], [yeni_s_durum], [eski_kullanici_id], [yeni_kullanici_id], [islem_tarihi], [islem_ip]) VALUES (15, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-03-15' AS Date), N'')
SET IDENTITY_INSERT [dbo].[satis_log_up] OFF
GO
SET IDENTITY_INSERT [dbo].[satis_maddeleri] ON 

INSERT [dbo].[satis_maddeleri] ([sm_id], [si_miktar], [si_fiyat], [si_iskonto], [satis_id], [urun_id]) VALUES (4, 12, 123, 20, 4, 3)
SET IDENTITY_INSERT [dbo].[satis_maddeleri] OFF
GO
SET IDENTITY_INSERT [dbo].[smaddeleri_log_ins_del] ON 

INSERT [dbo].[smaddeleri_log_ins_del] ([smlid_id], [sm_id], [si_miktar], [si_fiyat], [si_iskonto], [satis_id], [urun_id], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (1, 4, 12, 123, 2, 4, 3, CAST(N'2022-02-28' AS Date), N'ins', N'')
INSERT [dbo].[smaddeleri_log_ins_del] ([smlid_id], [sm_id], [si_miktar], [si_fiyat], [si_iskonto], [satis_id], [urun_id], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (3, 4, 12, 123, 2, 4, 3, CAST(N'2022-02-28' AS Date), N'del', N'')
INSERT [dbo].[smaddeleri_log_ins_del] ([smlid_id], [sm_id], [si_miktar], [si_fiyat], [si_iskonto], [satis_id], [urun_id], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (4, 5, 2, 12, 5, 5, 3, CAST(N'2022-03-15' AS Date), N'ins', N'')
INSERT [dbo].[smaddeleri_log_ins_del] ([smlid_id], [sm_id], [si_miktar], [si_fiyat], [si_iskonto], [satis_id], [urun_id], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (5, 4, 12, 123, 2, 4, 3, CAST(N'2022-03-15' AS Date), N'del', N'')
INSERT [dbo].[smaddeleri_log_ins_del] ([smlid_id], [sm_id], [si_miktar], [si_fiyat], [si_iskonto], [satis_id], [urun_id], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (6, 4, 12, 123, 2, 4, 3, CAST(N'2022-03-15' AS Date), N'del', N'')
INSERT [dbo].[smaddeleri_log_ins_del] ([smlid_id], [sm_id], [si_miktar], [si_fiyat], [si_iskonto], [satis_id], [urun_id], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (8, 4, 12, 123, 2, 4, 3, CAST(N'2022-03-15' AS Date), N'del', N'')
SET IDENTITY_INSERT [dbo].[smaddeleri_log_ins_del] OFF
GO
SET IDENTITY_INSERT [dbo].[smaddeleri_log_up] ON 

INSERT [dbo].[smaddeleri_log_up] ([smlu_id], [eski_si_miktar], [yeni_si_miktar], [eski_si_fiyat], [yeni_si_fiyat], [eski_si_iskonto], [yeni_si_iskonto], [eski_satis_id], [yeni_satis_id], [eski_urun_id], [yeni_urun_id], [islem_tarihi], [islem_ip]) VALUES (12, 12, 12, 123, 123, 2, 20, 4, 4, 123, 3, CAST(N'2022-03-15' AS Date), N'')
SET IDENTITY_INSERT [dbo].[smaddeleri_log_up] OFF
GO
SET IDENTITY_INSERT [dbo].[stok] ON 

INSERT [dbo].[stok] ([s_adedi], [s_giris_tarihi], [s_bitis_tarihi], [stok_id]) VALUES (20, CAST(N'2010-10-10' AS Date), CAST(N'2020-10-20' AS Date), 1)
SET IDENTITY_INSERT [dbo].[stok] OFF
GO
SET IDENTITY_INSERT [dbo].[stok_log_ins_del] ON 

INSERT [dbo].[stok_log_ins_del] ([stlid_id], [stok_id], [s_adedi], [s_giris_tarihi], [s_bitis_tarihi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (1, 2, 10, CAST(N'2022-02-11' AS Date), CAST(N'2022-02-28' AS Date), CAST(N'2022-02-27' AS Date), N'ins', N'')
INSERT [dbo].[stok_log_ins_del] ([stlid_id], [stok_id], [s_adedi], [s_giris_tarihi], [s_bitis_tarihi], [islem_tarihi], [islem_turu], [islem_ip]) VALUES (2, 2, 25, CAST(N'2022-02-09' AS Date), CAST(N'2022-02-28' AS Date), CAST(N'2022-02-27' AS Date), N'del', N'')
SET IDENTITY_INSERT [dbo].[stok_log_ins_del] OFF
GO
SET IDENTITY_INSERT [dbo].[stok_log_up] ON 

INSERT [dbo].[stok_log_up] ([stlu_ip], [eski_s_adedi], [yeni_s_adedi], [eski_s_giris_tarihi], [yeni_s_giris_tarihi], [eski_s_bitis_tarihi], [yeni_s_bitis_tarihi], [islem_tarihi], [islem_ip]) VALUES (1, 10, 25, CAST(N'2022-02-11' AS Date), CAST(N'2022-02-09' AS Date), CAST(N'2022-02-28' AS Date), CAST(N'2022-02-28' AS Date), CAST(N'2022-02-27' AS Date), N'')
SET IDENTITY_INSERT [dbo].[stok_log_up] OFF
GO
SET IDENTITY_INSERT [dbo].[urun] ON 

INSERT [dbo].[urun] ([urun_id], [u_adi], [u_barkodu], [u_uretim_tarihi], [u_tuketim_tarihi], [u_fiyat], [u_agirlik], [u_rengi], [marka_id], [kategori_id], [stok_id]) VALUES (3, N'süt', N'123', CAST(N'2022-02-17' AS Date), CAST(N'2022-02-17' AS Date), 12, 50, N'beyaz', 1004, 2, 1)
SET IDENTITY_INSERT [dbo].[urun] OFF
GO
SET IDENTITY_INSERT [dbo].[urun_log_ins_del] ON 

INSERT [dbo].[urun_log_ins_del] ([u_adi], [u_barkodu], [u_uretim_tarihi], [u_tuketim_tarihi], [u_fiyat], [u_agirlik], [u_rengi], [marka_id], [kategori_id], [stok_id], [islem_tarihi], [islem_turu], [islem_ip], [ulid_id], [urun_id]) VALUES (N'Ülker ', N'123', CAST(N'2022-02-17' AS Date), CAST(N'2022-02-22' AS Date), 4, 10, N'kırmızı', 1004, 2, 1, CAST(N'2022-02-27' AS Date), N'del', N'', 1, 1)
INSERT [dbo].[urun_log_ins_del] ([u_adi], [u_barkodu], [u_uretim_tarihi], [u_tuketim_tarihi], [u_fiyat], [u_agirlik], [u_rengi], [marka_id], [kategori_id], [stok_id], [islem_tarihi], [islem_turu], [islem_ip], [ulid_id], [urun_id]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-02-27' AS Date), N'ins', N'', 2, NULL)
INSERT [dbo].[urun_log_ins_del] ([u_adi], [u_barkodu], [u_uretim_tarihi], [u_tuketim_tarihi], [u_fiyat], [u_agirlik], [u_rengi], [marka_id], [kategori_id], [stok_id], [islem_tarihi], [islem_turu], [islem_ip], [ulid_id], [urun_id]) VALUES (N'süt', N'123', CAST(N'2022-02-17' AS Date), CAST(N'2022-02-17' AS Date), 12, 50, N'beyaz', 1004, 2, 1, CAST(N'2022-02-28' AS Date), N'ins', N'', 3, 3)
INSERT [dbo].[urun_log_ins_del] ([u_adi], [u_barkodu], [u_uretim_tarihi], [u_tuketim_tarihi], [u_fiyat], [u_agirlik], [u_rengi], [marka_id], [kategori_id], [stok_id], [islem_tarihi], [islem_turu], [islem_ip], [ulid_id], [urun_id]) VALUES (N'Eker Süt', N'123', CAST(N'2022-03-17' AS Date), CAST(N'2022-03-20' AS Date), 10, 1, N'Beyaz', 1004, 2, 1, CAST(N'2022-03-15' AS Date), N'ins', N'', 4, 4)
INSERT [dbo].[urun_log_ins_del] ([u_adi], [u_barkodu], [u_uretim_tarihi], [u_tuketim_tarihi], [u_fiyat], [u_agirlik], [u_rengi], [marka_id], [kategori_id], [stok_id], [islem_tarihi], [islem_turu], [islem_ip], [ulid_id], [urun_id]) VALUES (N'Eker Yoğurt', N'123', CAST(N'2022-03-10' AS Date), CAST(N'2022-03-18' AS Date), 10, 1, N'Beyaz', 1004, 2, 1, CAST(N'2022-03-15' AS Date), N'del', N'', 5, 4)
SET IDENTITY_INSERT [dbo].[urun_log_ins_del] OFF
GO
SET IDENTITY_INSERT [dbo].[urun_log_up] ON 

INSERT [dbo].[urun_log_up] ([ulu_id], [eski_u_adi], [yeni_u_adi], [eski_u_barkodu], [yeni_u_barkodu], [eski_u_uretim_tarihi], [yeni_u_uretim_tarihi], [eski_u_tuketim_tarihi], [yeni_u_tuketim_tarihi], [eski_u_fiyat], [yeni_u_fiyat], [eski_u_agirlik], [yeni_u_agirlik], [eski_u_rengi], [yeni_u_rengi], [eski_marka_id], [yeni_marka_id], [eski_kategori_id], [yeni_kategori_id], [eski_stok_id], [yeni_stok_id], [islem_tarihi], [islem_ip]) VALUES (1, N'Ülker gofret', N'Ülker ', N'123', N'123', CAST(N'2022-02-09' AS Date), CAST(N'2022-02-17' AS Date), CAST(N'2022-02-28' AS Date), CAST(N'2022-02-22' AS Date), 4, 4, 10, 10, N'kırmızı', N'kırmızı', 1004, 1004, 1, 1, 2, 2, CAST(N'2022-02-27' AS Date), N'')
INSERT [dbo].[urun_log_up] ([ulu_id], [eski_u_adi], [yeni_u_adi], [eski_u_barkodu], [yeni_u_barkodu], [eski_u_uretim_tarihi], [yeni_u_uretim_tarihi], [eski_u_tuketim_tarihi], [yeni_u_tuketim_tarihi], [eski_u_fiyat], [yeni_u_fiyat], [eski_u_agirlik], [yeni_u_agirlik], [eski_u_rengi], [yeni_u_rengi], [eski_marka_id], [yeni_marka_id], [eski_kategori_id], [yeni_kategori_id], [eski_stok_id], [yeni_stok_id], [islem_tarihi], [islem_ip]) VALUES (2, N'Eker Süt', N'Eker Yoğurt', N'123', N'123', CAST(N'2022-03-17' AS Date), CAST(N'2022-03-10' AS Date), CAST(N'2022-03-20' AS Date), CAST(N'2022-03-18' AS Date), 10, 10, 1, 1, N'Beyaz', N'Beyaz', 1004, 1004, 1, 1, 2, 2, CAST(N'2022-03-15' AS Date), N'')
SET IDENTITY_INSERT [dbo].[urun_log_up] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_kullaniciadi_kullanici]    Script Date: 6.04.2022 13:23:52 ******/
ALTER TABLE [dbo].[kullanici] ADD  CONSTRAINT [UK_kullaniciadi_kullanici] UNIQUE NONCLUSTERED 
(
	[k_kullaniciadi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[kullanici] ADD  CONSTRAINT [DF_kullanici_k_durum]  DEFAULT ((0)) FOR [k_durum]
GO
ALTER TABLE [dbo].[kullanici]  WITH CHECK ADD  CONSTRAINT [FK_kullanici_rol] FOREIGN KEY([rol_id])
REFERENCES [dbo].[rol] ([rol_id])
GO
ALTER TABLE [dbo].[kullanici] CHECK CONSTRAINT [FK_kullanici_rol]
GO
ALTER TABLE [dbo].[satis]  WITH CHECK ADD  CONSTRAINT [FK_satis_kullanici] FOREIGN KEY([kullanici_id])
REFERENCES [dbo].[kullanici] ([kullanici_id])
GO
ALTER TABLE [dbo].[satis] CHECK CONSTRAINT [FK_satis_kullanici]
GO
ALTER TABLE [dbo].[satis_maddeleri]  WITH CHECK ADD  CONSTRAINT [FK_satis_maddeleri_satis] FOREIGN KEY([satis_id])
REFERENCES [dbo].[satis] ([satis_id])
GO
ALTER TABLE [dbo].[satis_maddeleri] CHECK CONSTRAINT [FK_satis_maddeleri_satis]
GO
ALTER TABLE [dbo].[satis_maddeleri]  WITH CHECK ADD  CONSTRAINT [FK_satis_maddeleri_urun] FOREIGN KEY([urun_id])
REFERENCES [dbo].[urun] ([urun_id])
GO
ALTER TABLE [dbo].[satis_maddeleri] CHECK CONSTRAINT [FK_satis_maddeleri_urun]
GO
ALTER TABLE [dbo].[urun]  WITH CHECK ADD  CONSTRAINT [FK_urun_kategori] FOREIGN KEY([kategori_id])
REFERENCES [dbo].[kategori] ([kategori_id])
GO
ALTER TABLE [dbo].[urun] CHECK CONSTRAINT [FK_urun_kategori]
GO
ALTER TABLE [dbo].[urun]  WITH CHECK ADD  CONSTRAINT [FK_urun_marka] FOREIGN KEY([marka_id])
REFERENCES [dbo].[marka] ([marka_id])
GO
ALTER TABLE [dbo].[urun] CHECK CONSTRAINT [FK_urun_marka]
GO
/****** Object:  StoredProcedure [dbo].[Brand_Add]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Brand_Add]
(@Brand_Name as nvarchar (255)
)
as
begin 
insert into dbo.marka(m_adi) values(@Brand_Name)
end 
GO
/****** Object:  StoredProcedure [dbo].[Brand_Delete]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Brand_Delete]
(
@Brand_Id as int
)
as
begin 
delete from dbo.marka where  marka_id= @Brand_Id
end 
GO
/****** Object:  StoredProcedure [dbo].[Brand_Id]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Brand_Id]
(@Brand_Id as int)
as begin
select * from marka where marka_id=@Brand_Id
end
GO
/****** Object:  StoredProcedure [dbo].[Brand_List]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Brand_List]

as
begin 
select*from dbo.marka
end 
GO
/****** Object:  StoredProcedure [dbo].[Brand_Update]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Brand_Update]
(@Brand_Name as nvarchar (255),
@Brand_Id as int
)
as
begin 
update dbo.marka set m_adi= @Brand_Name where marka_id= @Brand_Id
end 
GO
/****** Object:  StoredProcedure [dbo].[Category_Add]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Category_Add](
@Category_Name as nvarchar(255))
as
begin
insert into dbo.kategori(k_adi) values(@Category_Name)
end
GO
/****** Object:  StoredProcedure [dbo].[Category_Delete]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Category_Delete](
@Id as int)
as
begin
delete from dbo.kategori where kategori_id = @Id
end
GO
/****** Object:  StoredProcedure [dbo].[Category_Id]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Category_Id](
@id as int)
as
begin
select*from dbo.kategori where kategori_id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[Category_List]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Category_List]
as
begin
select * from dbo.kategori
end
GO
/****** Object:  StoredProcedure [dbo].[Category_Update]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Category_Update](
@Id as int,
@Category_Name as nvarchar(255))
as
begin
update dbo.kategori set k_adi= @Category_Name where kategori_id= @Id
end
GO
/****** Object:  StoredProcedure [dbo].[Product_Add]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Product_Add](


 @Product_Name nvarchar(255),
	@Product_Barcode nvarchar(255),
 @Product_Prod_Date date,
 @Product_Cons_Date date,
 @Product_Price float,
 @Product_Weight float,
 @Product_Color nvarchar(50),
 @Product_Brand_Id int,
 @Product_Category_Id int,
	@Product_Stock_Id int
)

as
begin

insert  dbo.urun(u_adi,u_barkodu,u_uretim_tarihi,u_tuketim_tarihi,u_fiyat,u_agirlik,u_rengi,kategori_id,stok_id,marka_id)
values (@Product_Name,@Product_Barcode,@Product_Prod_Date,@Product_Cons_Date,@Product_Price,@Product_Weight,@Product_Color,@Product_Category_Id,@Product_Stock_Id,@Product_Brand_Id)
end
GO
/****** Object:  StoredProcedure [dbo].[Product_Delete]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Product_Delete](
@Product_Id as int 
)
as begin
delete from dbo.urun where urun_id = @Product_Id
end 
GO
/****** Object:  StoredProcedure [dbo].[Product_Id]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Product_Id]
(@Product_Id as int)
as begin
select * from urun
where urun_id=@Product_Id
end
GO
/****** Object:  StoredProcedure [dbo].[Product_List]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Product_List]
as begin 
select * from dbo.urun
end
GO
/****** Object:  StoredProcedure [dbo].[Product_Update]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Product_Update](
 @Product_Id int,
 @Product_Name nvarchar(255),
	@Product_Barcode nvarchar(255),
 @Product_Prod_Date date,
 @Product_Cons_Date date,
 @Product_Price float,
 @Product_Weight float,
 @Product_Color nvarchar(50),
 @Product_Brand_Id int,
 @Product_Category_Id int,
	@Product_Stock_Id int
)

as begin 
update dbo.urun set u_adi= @Product_Name, u_barkodu=@Product_Barcode, u_uretim_tarihi=@Product_Prod_Date, u_tuketim_tarihi=@Product_Cons_Date, 
u_rengi=@Product_Color, u_fiyat=@Product_Price,u_agirlik=@Product_Weight, stok_id=@Product_Stock_Id, marka_id=@Product_Brand_Id, kategori_id=@Product_Category_Id
where urun_id= @Product_Id
end 
GO
/****** Object:  StoredProcedure [dbo].[Role_Add]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Role_Add](
@Role_Name as nvarchar(50)
)
as begin tran begin
insert into dbo.rol(r_adi) values(@Role_Name)
end commit tran
GO
/****** Object:  StoredProcedure [dbo].[Role_Delete]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Role_Delete](
@Role_Id as int 
)
as begin tran begin 
delete from dbo.rol where rol_id = @Role_Id
end 
commit tran
GO
/****** Object:  StoredProcedure [dbo].[Role_Id]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Role_Id]
(@Role_Id as int)
as begin
select * from rol where rol_id=@Role_Id
end
GO
/****** Object:  StoredProcedure [dbo].[Role_List]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Role_List]
as begin tran begin
select * from dbo.rol
end
commit tran
GO
/****** Object:  StoredProcedure [dbo].[Role_Update]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Role_Update](
@Role_Id as int,
@Role_Name as nvarchar(50)
)
as begin tran begin
update dbo.rol set r_adi= @Role_Name where rol_id= @Role_Id
end 
commit tran
GO
/****** Object:  StoredProcedure [dbo].[Sale_Add]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Sale_Add](
@Date as date ,
@State as nvarchar(255) , 
@User_Id as nvarchar(255),
@Quantity as float,
@Price as float ,
@Discount as float,
@Product_Id as int


)

as

begin
insert  dbo.satis (s_durum,s_tarih,kullanici_id)
values (@State,@Date,@User_Id)

declare @Sale_Id as int

select @Sale_Id=satis_id from dbo.satis

insert dbo.satis_maddeleri (satis_id,si_fiyat,si_iskonto,si_miktar,urun_id)
values (@Sale_Id,@Price,@Discount,@Quantity,@Product_Id)
end
GO
/****** Object:  StoredProcedure [dbo].[Sale_Delete]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sale_Delete](
@Sale_Id as int 
)
as begin 
delete from dbo.satis_maddeleri where satis_id=@Sale_Id
delete from dbo.satis where satis_id = @Sale_Id


end 
GO
/****** Object:  StoredProcedure [dbo].[Sale_Id]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sale_Id]
(@Sale_Id as int)
as begin
select * from satis s inner join satis_maddeleri sm on s.satis_id=sm.satis_id where s.satis_id=@Sale_Id
end
GO
/****** Object:  StoredProcedure [dbo].[Sale_List]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sale_List]
as begin 
select * from dbo.satis s inner join dbo.satis_maddeleri sm on s.satis_id=sm.satis_id
end
GO
/****** Object:  StoredProcedure [dbo].[Sale_Update]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sale_Update](
@Sale_Id as int,
@Date as date ,
@State as nvarchar(255) , 
@User_Id as nvarchar(255),
@Quantity as float,
@Price as float ,
@Discount as float,
@Product_Id as int
)
as begin 
update dbo.satis set s_tarih= @Date, s_durum=@State, kullanici_id=@User_Id where satis_id=@Sale_Id


update dbo.satis_maddeleri set si_miktar=@Quantity,si_fiyat=@Price,si_iskonto=@Discount, urun_id=@Product_Id  where satis_id=@Sale_Id
end 
GO
/****** Object:  StoredProcedure [dbo].[Stock_Add]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Stock_Add](

 @Stock_Quantity int,
 @Stock_Entry_Date date,
 @Stock_End_Date date
)
as begin 
insert into dbo.stok(s_adedi,s_giris_tarihi,s_bitis_tarihi) values( @Stock_Quantity,@Stock_Entry_Date,@Stock_End_Date)
end 
GO
/****** Object:  StoredProcedure [dbo].[Stock_Delete]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Stock_Delete](
@Stock_Id as int 
)
as begin 
delete from dbo.stok where stok_id = @Stock_Id
end 
GO
/****** Object:  StoredProcedure [dbo].[Stock_Id]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Stock_Id]
(@Stock_Id as int)
as begin
select * from stok
where stok_id=@Stock_Id
end
GO
/****** Object:  StoredProcedure [dbo].[Stock_List]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Stock_List]
as begin tran begin
select * from dbo.stok
end
commit tran
GO
/****** Object:  StoredProcedure [dbo].[Stock_Update]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Stock_Update](
 @Stock_Id int,
 @Stock_Quantity int,
 @Stock_Entry_Date date,
 @Stock_End_Date date
)
as begin 
update dbo.stok set s_adedi= @Stock_Quantity, s_giris_tarihi=@Stock_Entry_Date, s_bitis_tarihi=@Stock_End_Date where stok_id= @Stock_Id
end 
GO
/****** Object:  StoredProcedure [dbo].[User_Add]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[User_Add](
@User_Name as nvarchar(255),
@Password as nvarchar(50),
@Name	as nvarchar(50),
@Surname as nvarchar(50),
@E_mail as nvarchar(255),
@Phone as nvarchar(50),
@State as bit,
@Role_Id as int
)
as begin 
insert into dbo.kullanici(k_kullaniciadi, k_parola, k_adi, k_soyadi, k_eposta, k_telefon, k_durum, rol_id) 
values(@User_Name, @Password, @Name, @Surname, @E_mail, @Phone, @State, @Role_Id)
end
GO
/****** Object:  StoredProcedure [dbo].[User_Check]    Script Date: 6.04.2022 13:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[User_Check](
@User_Name as nvarchar(255),
@Password as nvarchar(50),
@isVaid bit out
)
as begin
set @isVaid=(Select COUNT(*) from kullanici where k_kullaniciadi = @User_Name and k_parola = @Password )

end
GO
