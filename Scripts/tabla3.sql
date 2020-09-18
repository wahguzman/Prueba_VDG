USE [_VDG]
GO

/****** Object:  Table [dbo].[CatalogoConsola]    Script Date: 18/09/2020 05:01:40 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CatalogoConsola](
	[IdConsola] [int] IDENTITY(1,1) NOT NULL,
	[NombreConsola] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CatalogoConsola] PRIMARY KEY CLUSTERED 
(
	[IdConsola] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


