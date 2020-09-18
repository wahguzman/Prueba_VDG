USE [_VDG]
GO

/****** Object:  Table [dbo].[CatalogoGenero]    Script Date: 18/09/2020 05:01:48 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CatalogoGenero](
	[IdGenero] [int] IDENTITY(1,1) NOT NULL,
	[NombreGenero] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CatalogoGenero] PRIMARY KEY CLUSTERED 
(
	[IdGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


