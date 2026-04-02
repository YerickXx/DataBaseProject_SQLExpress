CREATE DATABASE Empresa_IT;

USE [Empresa_IT];
GO

CREATE TABLE [dbo].[Funcionario] (
[ID_Usuario] INT PRIMARY KEY,
[Nombre] NVARCHAR (100) NOT NULL,
[Departamento] NVARCHAR(100) NOT NULL,
[Telefono] NVARCHAR (100) NOT NULL UNIQUE,
[Email] NVARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE [dbo].[Tecnicos] (
[ID_Tecnico] INT PRIMARY KEY,
[Nombre] NVARCHAR (80) NOT NULL,
[Especialidad] NVARCHAR (100) NOT NULL,
[Telefono] NVARCHAR (100) UNIQUE NOT NULL,
[Email] NVARCHAR (100) UNIQUE NOT NULL
);

CREATE TABLE [dbo].[Equipo_Organizacion](
[ID_Equipo] INT  PRIMARY KEY,
[tipo] NVARCHAR (100) NOT NULL,
[Ubicacion] NVARCHAR (110) NOT NULL,
[Numero_Serie] VARCHAR (100) UNIQUE NOT NULL
);

CREATE TABLE [dbo].[Estado_Solicitud](
[ID_Estado] INT PRIMARY KEY,
[Nombre_Estado] VARCHAR (20) NOT NULL
);

CREATE TABLE [dbo].[Orden_Servicio](
[ID_Orden] INT PRIMARY KEY,
[Descripcion] NVARCHAR (250) NOT NULL,
[Fecha_Creacion] DATETIME DEFAULT CURRENT_TIMESTAMP, -- la fecha y hora se ponen de manera automatica
[Fecha_Finalizacion] DATE NOT NULL,
[ID_Usuario] INT,
[ID_Estado] INT,
[ID_Equipo] INT,
FOREIGN KEY (ID_Usuario) REFERENCES Funcionario(ID_Usuario),
foreign key (ID_Estado) REFERENCES Estado_Solicitud(ID_Estado),
foreign key (ID_Equipo) REFERENCES Equipo_Organizacion(ID_Equipo)
);

CREATE TABLE [dbo].[Asignacion_Tecnicos](
[ID_Asignacion] INT PRIMARY KEY,
[ID_Orden] INT,
[ID_Tecnico] INT,
FOREIGN KEY (ID_Orden) REFERENCES Orden_Servicio(ID_Orden),
FOREIGN KEY (ID_Tecnico) REFERENCES Tecnicos(ID_Tecnico)
);

CREATE TABLE [dbo].[Historial_Ordenes](
[ID_Historial] INT PRIMARY KEY,
[Descripcion] VARCHAR (250) NOT NULL,
[Fecha_Actualizacion] DATETIME DEFAULT CURRENT_TIMESTAMP, -- la fecha y hora se ponen de manera automatica
[ID_Tecnico] INT,
[ID_Orden] INT,
FOREIGN KEY (ID_Tecnico) REFERENCES Tecnicos(ID_Tecnico),
FOREIGN KEY (ID_Orden) REFERENCES Orden_Servicio(ID_Orden)); 
