CREATE DATABASE NationalBasketballAssociation_DB;

USE NationalBasketballAssociation_DB;

--Creacion de tablas para el sistema 
CREATE TABLE Sexos
(
	CodigoSexo INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Sexos PRIMARY KEY,
	NombreSexo VARCHAR(20) NOT NULL
);
GO
CREATE TABLE Paises
(
	CodigoPais INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Paises PRIMARY KEY,
	ISO_Pais CHAR(2) NOT NULL,
	NombrePais VARCHAR(50) NOT NULL 
);
CREATE TABLE EstadosPaises 
(
	CodigoEstado INT NOT NULL CONSTRAINT PK_EstadosPaises PRIMARY KEY,
	NombreEstado VARCHAR(50) NOT NULL,
	CodigoPais INT NOT NULL CONSTRAINT FK_PaisesEstados FOREIGN KEY REFERENCES Paises(CodigoPais)
);
GO
CREATE TABLE Estados 
(
	CodigoEstado INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Estados PRIMARY KEY,
	DescripcionEstado VARCHAR(30) NOT NULL
);
GO 
CREATE TABLE Jugadores
(
	CodigoJugador INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Jugadores PRIMARY KEY,
	NombreJugador VARCHAR(50) NOT NULL,
	ApellidoJugador VARCHAR(50) NOT NULL,
	PaisJugador INT CONSTRAINT FK_Paises_Jugadores FOREIGN KEY REFERENCES Paises(CodigoPais),
	FechaNacimiento DATE, 
	StatsAllTimePlayer INT NOT NULL CONSTRAINT FK_StatsAllTimePlayer F
)
GO
CREATE TABLE StatsAllTimePlayer
(
	CodigoStats INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_StatsAllTimePlayer PRIMARY KEY,
	CodigoJugador INT NOT NULL CONSTRAINT FK_Jugador_StatAllTimePlayer FOREIGN KEY REFERENCES Jugadores(CodigoJugador),
	PuntosTotales INT NOT NULL,
	AsistenciasTotales INT NOT NULL,
	RebotesTotales INT NOT NULL,
	TirosDeCampoIntentados INT NOT NULL,
	TirosDeCampoEncestados INT NOT NULL,
	PerdidasDeBalon INT NOT NULL,
	JuegosTotales INT NOT NULL,
	JuegosIniciados INT NOT NULL,
)
GO
CREATE TABLE Equipos
(
	CodigoEquipo INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Equipos PRIMARY KEY,
	NombreEquipo VARCHAR(80) NOT NULL, 

)