USE [_VDG]
GO

/****** Object:  StoredProcedure [dbo].[INSERTAR_PRODUCTO]    Script Date: 18/09/2020 05:03:42 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERTAR_PRODUCTO] 
	-- Add the parameters for the stored procedure here
	@Titulo varchar(150),
	@Descripcion varchar(150),
	@anio int,
	@Calificacion int,
	@IdConsola int,
	@IdGenero int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    BEGIN TRANSACTION;  
  
	BEGIN TRY  
		
	INSERT INTO [dbo].[Juegos]
			   ([Titulo]
			   ,[Descripcion]
			   ,[Year]
			   ,[Calificacion]
			   ,[IdConsola]
			   ,[IdGenero])
     VALUES
           (@Titulo
           ,@Descripcion
           ,@anio
           ,@Calificacion
           ,@IdConsola
           ,@IdGenero)


	END TRY  
	BEGIN CATCH  
		SELECT   
			ERROR_NUMBER() AS ErrorNumber  
			,ERROR_SEVERITY() AS ErrorSeverity  
			,ERROR_STATE() AS ErrorState  
			,ERROR_PROCEDURE() AS ErrorProcedure  
			,ERROR_LINE() AS ErrorLine  
			,ERROR_MESSAGE() AS ErrorMessage;  
  
		IF @@TRANCOUNT > 0  
			ROLLBACK TRANSACTION;  
	END CATCH;  
  
	IF @@TRANCOUNT > 0  
		COMMIT TRANSACTION;  
	  
END
GO


