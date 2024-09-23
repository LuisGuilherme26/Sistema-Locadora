CREATE TABLE Locadora (
LocadoraID SERIAL PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
Telefone VARCHAR(20)
);
CREATE TABLE Funcionario (
FuncionarioID SERIAL PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
CPF VARCHAR(11) NOT NULL UNIQUE,
Idade INTEGER,
Salario FLOAT(15),
Funcao VARCHAR(100),
Telefone VARCHAR(20),
LocadoraID INTEGER,
FOREIGN KEY (LocadoraID) REFERENCES Locadora(LocadoraID)
);
CREATE TABLE Usuario (
UsuarioID SERIAL PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
CPF VARCHAR(11) NOT NULL UNIQUE,
Telefone VARCHAR(20),
Idade INTEGER,
Reputacao INTEGER
);
CREATE TABLE Midia (
MidiaID SERIAL PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
Autor VARCHAR(255),
Disponibilidade BOOLEAN,
NotaGeral FLOAT(5)
);
CREATE TABLE Filme (
FilmeID SERIAL PRIMARY KEY,
MidiaID INTEGER,
Atores VARCHAR(255),
NotaIMDB FLOAT(5),
FOREIGN KEY (MidiaID) REFERENCES Midia(MidiaID)
);
CREATE TABLE Jogo (
JogoID SERIAL PRIMARY KEY,
MidiaID INTEGER,
NumeroDeJogadores INTEGER,
Plataforma VARCHAR(100),
FOREIGN KEY (MidiaID) REFERENCES Midia(MidiaID)
);
CREATE TABLE Aluguel (
AluguelID SERIAL PRIMARY KEY,
UsuarioID INTEGER,
MidiaID INTEGER,
DataAluguel DATE,
DataDevolucao DATE,
Avaliacao INTEGER,
FOREIGN KEY (UsuarioID) REFERENCES Usuario(UsuarioID),
FOREIGN KEY (MidiaID) REFERENCES Midia(MidiaID)
);


INSERT INTO Locadora (Nome, Telefone) VALUES ('MegaFilmes”', '1234-5678');
INSERT INTO Locadora (Nome, Telefone) VALUES ('DistriVídeo”', '2345-6789');
INSERT INTO Locadora (Nome, Telefone) VALUES ('MegaLocadora', '3456-7890');
INSERT INTO Locadora (Nome, Telefone) VALUES ('SuperLocadora', '4567-8901');
INSERT INTO Locadora (Nome, Telefone) VALUES ('AlugaFilmes', '5678-9012');
INSERT INTO Locadora (Nome, Telefone) VALUES ('LocadoraDemais', '6789-0123');
INSERT INTO Locadora (Nome, Telefone) VALUES ('UltimaLocadora', '7890-1234');
INSERT INTO Locadora (Nome, Telefone) VALUES ('UltimateLocadora', '8901-2345');
INSERT INTO Locadora (Nome, Telefone) VALUES ('LolaLocadoras”', '9012-3456');
INSERT INTO Locadora (Nome, Telefone) VALUES ('LocadoraDaVinte', '0123-4567');

