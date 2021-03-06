CREATE DATABASE clinicaPet;
GO


USE clinicaPet;
GO

CREATE TABLE clinica(
	idClinica INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Endereco VARCHAR(100) NOT NULL,
	
);

CREATE TABLE tipopet(
	idTipoPet INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(100) NOT NULL,

);

CREATE TABLE dono(
	idDono INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
);
CREATE TABLE veterinario(
	idVeterinario INT PRIMARY KEY IDENTITY NOT NULL,
	CRMV INT,
	Nome VARCHAR(100) NOT NULL,

	idClinica INT FOREIGN KEY REFERENCES clinica (idClinica),
);
CREATE TABLE raca(
	idRaca INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(100) NOT NULL,

	idTipoPet INT FOREIGN KEY REFERENCES tipopet (idTipoPet),
);

CREATE TABLE atendimento(
	idAtendimento INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	DataAtendimentos DATETIME,

	idPet INT FOREIGN KEY REFERENCES pet (idPet),
	idVeterinario INT FOREIGN KEY REFERENCES veterinario (idVeterinario),
);
CREATE TABLE pet(
	idPet INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Datanascimento DATETIME,

	
	idRaca INT FOREIGN KEY REFERENCES raca (idRaca),
	idDono INT FOREIGN KEY REFERENCES dono (idDono),
);
