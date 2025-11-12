CREATE DATABASE IF NOT EXISTS criatorio;
USE criatorio;

CREATE TABLE Relatorios (
    idRelatorio INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    dataGeracao DATE NOT NULL
);

CREATE TABLE Backups (
    idBackup INT AUTO_INCREMENT PRIMARY KEY,
    caminho VARCHAR(255) NOT NULL,
    data DATE NOT NULL
);

CREATE TABLE Aves (
    idAve INT AUTO_INCREMENT PRIMARY KEY,
    anilha VARCHAR(50) UNIQUE NOT NULL,
    nome VARCHAR(100),
    linhagem VARCHAR(100),
    sexo ENUM('Macho','Fêmea') DEFAULT 'Fêmea',
    dataNascimento DATE,
    idade INT,
    peso DECIMAL(5,2),
    status VARCHAR(50),

    cor_bico VARCHAR(50),
    canelas VARCHAR(50),
    plumagem_pattern VARCHAR(50),
    caracteristicas TEXT,

    auricula_despig_percent TINYINT UNSIGNED DEFAULT 0,
    crista_tombamento ENUM('Nenhuma','TercoDistal','DoisTerços','Outro') DEFAULT 'Nenhuma',
    barbela_desigualdade_percent DECIMAL(5,2) DEFAULT 0,

    plumagem_barrada TINYINT(1) DEFAULT 0,
    plumagem_frisada TINYINT(1) DEFAULT 0,
    plumagem_carijo TINYINT(1) DEFAULT 0,
    pescoco_pelado TINYINT(1) DEFAULT 0,
    barbuda TINYINT(1) DEFAULT 0,
    olhos_vermelhos TINYINT(1) DEFAULT 0
);

CREATE TABLE Eventos (
    idEvento INT AUTO_INCREMENT PRIMARY KEY,
    idAve INT NOT NULL,
    tipoEvento VARCHAR(100) NOT NULL,
    data DATE NOT NULL,
    FOREIGN KEY (idAve) REFERENCES Aves(idAve)
);

CREATE TABLE Cruzamento (
    idCruzamento INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL
);

CREATE TABLE Cruzamento_Aves (
    idCruzamento INT NOT NULL,
    idAve INT NOT NULL,
    papel VARCHAR(50),
    PRIMARY KEY (idCruzamento, idAve),
    FOREIGN KEY (idCruzamento) REFERENCES Cruzamento(idCruzamento),
    FOREIGN KEY (idAve) REFERENCES Aves(idAve)
);
