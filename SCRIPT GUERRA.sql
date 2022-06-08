CREATE DATABASE galaxia;
USE galaxia;

CREATE TABLE sistemas_solares(
ID INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (45)
);

CREATE TABLE sol(
ID INT AUTO_INCREMENT,
nome VARCHAR (45),
temperatura DECIMAL (8,2),
FK_sistema INT,
FOREIGN KEY (FK_sistema) REFERENCES sistemas_solares(ID),
PRIMARY KEY(ID, FK_sistema)
);

CREATE TABLE planetas(
ID INT AUTO_INCREMENT,
nome VARCHAR (45),
cor VARCHAR (45),
tamanho DECIMAL (15,2),
FK_sol INT,
FOREIGN KEY (FK_sol) REFERENCES sol(ID),
aliado INT,
FOREIGN KEY (aliado) REFERENCES planetas(ID),
PRIMARY KEY(ID, FK_sol)
);

CREATE TABLE satelites(
ID INT AUTO_INCREMENT,
nome VARCHAR (45),
tamanho DECIMAL (15,2),
FK_planeta INT,
FOREIGN KEY (FK_planeta) REFERENCES planetas(ID),
PRIMARY KEY(ID, FK_planeta)
);