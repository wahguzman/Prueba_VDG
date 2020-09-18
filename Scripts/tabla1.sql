USE [_VDG]
GO

/****** Object:  Table [dbo].[Juegos]    Script Date: 18/09/2020 05:01:53 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Juegos](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](150) NOT NULL,
	[Descripcion] [nvarchar](150) NOT NULL,
	[Year] [int] NOT NULL,
	[Calificacion] [int] NOT NULL,
	[IdConsola] [int] NOT NULL,
	[IdGenero] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Juegos] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Juegos] ADD  CONSTRAINT [DF_Juegos_Status]  DEFAULT ((1)) FOR [Status]
GO


