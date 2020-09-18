USE [_VDG]
GO

/****** Object:  StoredProcedure [dbo].[ObtenerJuego]    Script Date: 18/09/2020 05:03:48 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ObtenerJuego]
	@ProductID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select
	J.ProductID,
	J.Titulo,
	J.Descripcion,
	J.Year,
	J.Calificacion,
	C.NombreConsola,
	G.NombreGenero
	from dbo.Juegos J
	inner join dbo.CatalogoConsola C on C.IdConsola = j.IdConsola
	inner join dbo.CatalogoGenero G on G.IdGenero = J.IdGenero
	where J.Status = 1 and J.ProductID = @ProductID
END
GO


