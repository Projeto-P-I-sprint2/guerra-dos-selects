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

create table armas(idarma int primary key auto_increment,
municao varchar (45),
nome varchar(45),
tipo varchar(45),
atributo varchar(45),
tier varchar(10),
check(tier = 'raro' or tier = 'épico' or tier = 'lendário' or tier = 'mistíco' or tier = 'moonlight'),
dano int);

insert into armas (municao, nome, tipo, atributo, tier,dano)
value (null,'wing drive weapon','la geas','destrói raças','moonlight',2000000),
(null,'eclipse','espada','causa sangramento','raro',40),
('magia','Primordial Jade Moon Blade','foice','suga vidas','lendário',100.000),
('almas','grandark','arma demoniaca','suga vidas','místico',null),
('poder demoniaco','crescente','espada divina','suga vidas','lendário',null),
('balas','M416 CQB','Fuzil de Assalto','arma humana','raro',200),
('balas','MK-16 SCAR-L','Rifles','arma humana','raro',150),
('ogiva','RPG-7','lançador de granadas','arma humana','raro',1000),
(null,'Antumbra, sombra dos cosmos','adagas','ficar invisível','épico',5000);