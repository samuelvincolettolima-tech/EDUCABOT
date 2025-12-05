CREATE DATABASE EducaBot;
GO

USE EducaBot;
GO

CREATE TABLE Alunos (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100),
    Email VARCHAR(120),
    Turma VARCHAR(10),
    Desempenho DECIMAL(5,2)
);
GO

CREATE TABLE Exercicios (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Titulo VARCHAR(100),
    Categoria VARCHAR(50),
    Descricao VARCHAR(300),
    Pontos INT
);
GO

CREATE TABLE Progresso (
    Id INT PRIMARY KEY IDENTITY(1,1),
    AlunoId INT,
    Materia VARCHAR(50),
    Semestre VARCHAR(20),
    DesempenhoFinal DECIMAL(5,2),
    FOREIGN KEY (AlunoId) REFERENCES Alunos(Id)
);
GO

CREATE TABLE ChatLog (
    Id INT PRIMARY KEY IDENTITY(1,1),
    AlunoId INT,
    Pergunta TEXT,
    Resposta TEXT,
    DataHora DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (AlunoId) REFERENCES Alunos(Id)
);
GO
