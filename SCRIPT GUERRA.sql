CREATE DATABASE galaxia;
USE galaxia;

CREATE TABLE sistemas_planetarios(
ID INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (45)
);

CREATE TABLE sol(
ID INT AUTO_INCREMENT,
nome VARCHAR (45),
temperatura DECIMAL (8,2),
FK_sistema INT,
FOREIGN KEY (FK_sistema) REFERENCES sistemas_planetarios(ID),
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

INSERT INTO sistemas_planetarios
VALUES
(NULL, 'Nexus'),
(NULL, 'Gliese 667 C');

INSERT INTO sol
VALUES
(NULL, 'Vargos 265', 2562.50, 1),
(NULL, 'Mercuros 69', 6549.50, 2);

INSERT INTO planetas
VALUES
(NULL, 'Krypton', 'Branco', 1525478921.25, 2, NULL),
(NULL, 'Rarculo-92', 'Vermelho', 25416.00, 1, NULL),
(NULL, 'Charmila-30', 'Verde', 2598712.92, 1, 2),
(NULL, 'Nirmilan', 'Dourado', 256987.32, 2, 1),
(NULL, 'Mordokun', 'Azul', 12364475.00, 2, NULL);

INSERT INTO satelites
VALUES
(NULL, 'Kwanza-98', 2365.20, 1),
(NULL, 'Girgon-12', 1254.20, 2),
(NULL, 'Burgagon-30', 15876.29, 1),
(NULL, 'Wargin', 1236.00, 3),
(NULL, 'Quadcaar', 3265.75, 4),
(NULL, 'zargzon-30', 658.60, 5),
(NULL, 'Churza-70', 4236.00, 5),
(NULL, 'Kirki-9', 2365.20, 1);