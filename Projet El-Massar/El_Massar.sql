USE [gestion_hôtel_db]
GO
/****** Object:  Table [dbo].[categorie]    Script Date: 23/02/2022 00:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorie](
	[id_cat] [int] NOT NULL,
	[descriptions] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chambres]    Script Date: 23/02/2022 00:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chambres](
	[Id_cham] [int] NOT NULL,
	[Tél_cham] [varchar](20) NOT NULL,
	[id_cat] [int] NULL,
	[Id_hotel] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_cham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[classes]    Script Date: 23/02/2022 00:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classes](
	[id_etoile] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_etoile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 23/02/2022 00:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[id_client] [int] NOT NULL,
	[nom] [varchar](100) NOT NULL,
	[prenom] [varchar](100) NOT NULL,
	[adresse] [varchar](100) NOT NULL,
	[ville] [varchar](45) NOT NULL,
	[CP] [varchar](20) NOT NULL,
	[pays] [varchar](30) NOT NULL,
	[Tél] [varchar](100) NOT NULL,
	[e_mail] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consommations]    Script Date: 23/02/2022 00:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consommations](
	[Id_conso] [int] NOT NULL,
	[date_conso] [varchar](100) NOT NULL,
	[heure_conso] [varchar](20) NOT NULL,
	[id_client] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_conso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotels]    Script Date: 23/02/2022 00:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotels](
	[Id_hotel] [int] NOT NULL,
	[nomH] [varchar](100) NOT NULL,
	[adresseH] [varchar](100) NOT NULL,
	[CPH] [varchar](20) NOT NULL,
	[TélH] [varchar](100) NOT NULL,
	[id_etoile] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_hotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offres]    Script Date: 23/02/2022 00:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offres](
	[id_prest] [int] NULL,
	[id_hotel] [int] NULL,
	[tarifer_unitaire] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prestations]    Script Date: 23/02/2022 00:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestations](
	[id_prest] [int] NOT NULL,
	[designation_prest] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_prest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rervations]    Script Date: 23/02/2022 00:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rervations](
	[Id_Reserv] [int] NOT NULL,
	[date_debut] [varchar](100) NOT NULL,
	[date_fin] [varchar](100) NOT NULL,
	[date_paye_Arrhes] [varchar](100) NOT NULL,
	[montant_Arrhes] [varchar](20) NOT NULL,
	[id_cham] [int] NULL,
	[id_client] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Reserv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tarifer]    Script Date: 23/02/2022 00:06:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tarifer](
	[id_cat] [int] NULL,
	[id_etoile] [int] NULL,
	[tarifer_unitaire] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chambres]  WITH CHECK ADD  CONSTRAINT [fkcat] FOREIGN KEY([id_cat])
REFERENCES [dbo].[categorie] ([id_cat])
GO
ALTER TABLE [dbo].[Chambres] CHECK CONSTRAINT [fkcat]
GO
ALTER TABLE [dbo].[Chambres]  WITH CHECK ADD  CONSTRAINT [fkhtel] FOREIGN KEY([Id_hotel])
REFERENCES [dbo].[hotels] ([Id_hotel])
GO
ALTER TABLE [dbo].[Chambres] CHECK CONSTRAINT [fkhtel]
GO
ALTER TABLE [dbo].[consommations]  WITH CHECK ADD  CONSTRAINT [fkclients] FOREIGN KEY([id_client])
REFERENCES [dbo].[clients] ([id_client])
GO
ALTER TABLE [dbo].[consommations] CHECK CONSTRAINT [fkclients]
GO
ALTER TABLE [dbo].[hotels]  WITH CHECK ADD  CONSTRAINT [fkcla] FOREIGN KEY([id_etoile])
REFERENCES [dbo].[classes] ([id_etoile])
GO
ALTER TABLE [dbo].[hotels] CHECK CONSTRAINT [fkcla]
GO
ALTER TABLE [dbo].[Offres]  WITH CHECK ADD  CONSTRAINT [fkhot] FOREIGN KEY([id_hotel])
REFERENCES [dbo].[hotels] ([Id_hotel])
GO
ALTER TABLE [dbo].[Offres] CHECK CONSTRAINT [fkhot]
GO
ALTER TABLE [dbo].[Offres]  WITH CHECK ADD  CONSTRAINT [fkpresta] FOREIGN KEY([id_prest])
REFERENCES [dbo].[prestations] ([id_prest])
GO
ALTER TABLE [dbo].[Offres] CHECK CONSTRAINT [fkpresta]
GO
ALTER TABLE [dbo].[Rervations]  WITH CHECK ADD  CONSTRAINT [fkchbre] FOREIGN KEY([id_cham])
REFERENCES [dbo].[Chambres] ([Id_cham])
GO
ALTER TABLE [dbo].[Rervations] CHECK CONSTRAINT [fkchbre]
GO
ALTER TABLE [dbo].[Rervations]  WITH CHECK ADD  CONSTRAINT [fkclt] FOREIGN KEY([id_client])
REFERENCES [dbo].[clients] ([id_client])
GO
ALTER TABLE [dbo].[Rervations] CHECK CONSTRAINT [fkclt]
GO
ALTER TABLE [dbo].[tarifer]  WITH CHECK ADD  CONSTRAINT [fkcate] FOREIGN KEY([id_cat])
REFERENCES [dbo].[categorie] ([id_cat])
GO
ALTER TABLE [dbo].[tarifer] CHECK CONSTRAINT [fkcate]
GO
ALTER TABLE [dbo].[tarifer]  WITH CHECK ADD  CONSTRAINT [fkcst] FOREIGN KEY([id_etoile])
REFERENCES [dbo].[classes] ([id_etoile])
GO
ALTER TABLE [dbo].[tarifer] CHECK CONSTRAINT [fkcst]
GO
