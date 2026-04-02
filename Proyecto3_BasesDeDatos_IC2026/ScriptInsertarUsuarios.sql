USE [Empresa_IT] -- para usar nuestra DB
GO

/*PROCESO PARA INSERTAR EN USUARIOS*/

--Creacion del procedimiento con nomenclatura estandarizada (uso el PA para: Procedimiento Alamacenado)
CREATE PROCEDURE [dbo].[PA_RegistroUsuario] 

	--Seteo de parametros
	@ID INT,
	@Nombre NVARCHAR(100),
	@Departamento NVARCHAR(100),
	@Telefono NVARCHAR(100),
	@Email NVARCHAR(100)
	AS 
	BEGIN -- inicio proceso
		SET NOCOUNT ON; -- para no enviar los menajes de columnas afectadas

		INSERT INTO [dbo].[Funcionario]([ID_Usuario],[Nombre],
		[Departamento],[Telefono],[Email]) 
		VALUES 
		(@ID,@Nombre,@Departamento,@Telefono,@Email);
	END -- fin proceso
	GO

	EXEC [dbo].[PA_RegistroUsuario] @ID = 1, @Nombre='Yerick', @Departamento='Software Development', @Telefono='86952669', @Email='yerick@test.com';

	SELECT [ID_Usuario],[Nombre],[Departamento],[Telefono],[Email] FROM [dbo].Funcionario;
