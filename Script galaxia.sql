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

CREATE TABLE racas (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    nomeRaca VARCHAR(45),
    altura_media DECIMAL(4,2)
);

CREATE TABLE populacao (
	ID INT PRIMARY KEY AUTO_INCREMENT,
	qtd_populacao INT,
    caracteristicas VARCHAR(250),
	fk_Planetas INT, FOREIGN KEY (fk_Planetas) REFERENCES planetas(ID),
	fk_racas INT, FOREIGN KEY (fk_racas) REFERENCES racas(ID)    
);

INSERT INTO racas VALUES 
( NULL, 'vulcana', 1.75 ),
( NULL, 'Salarianos', 3.12 ),
( NULL, 'Turianos', 1.9 ),
( NULL, 'Geth', 1.1 ),
( NULL, 'Quarians', 4.3 );

INSERT INTO populacao VALUES 
( NULL, 2000000, 'Orelhas pontudas', 1, 1 ),
( NULL, 100000, 'Olhos grandes', 1, 2 ),
( NULL, 1000000, 'Pele cinza', 2, 3 ),
( NULL, 352000, 'Um olho', 2, 4 ),
( NULL, 3000000, 'Baixa imunidade', 3, 1 );

CREATE TABLE exercito (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    qtd_soldados INT,
    fk_Planetas INT, FOREIGN KEY (fk_Planetas) REFERENCES planetas(ID)
);

INSERT INTO exercito VALUES
( NULL, 10000, 1 ),
( NULL, 20000, 2 ),
( NULL, 20000, 3 ),
( NULL, 20000, 4 );

create table naves(
idnave int primary key auto_increment,
nome varchar(45),
tipo varchar(45),
velocidade varchar(45),
peso varchar(45)
);

insert into naves values
(null, 'liset', 'nave de assalto', '38 anos-luz por hora', '490kg'),
(null, 'mantis', 'nave de assalto', '42 anos-luz por hora', '440kg'),
(null, 'scimitar', 'nave de assalto', '47 anos-luz por hora', '380kg'),
(null, 'xiphos', 'nave de assalto', '44 anos-luz por hora', '420kg'),
(null, 'amesha', 'interceptador', '52 anos-luz por hora', '310kg'),
(null, 'elython', 'interceptador', '58 anos-luz por hora', '280kg'),
(null, 'itzal', 'interceptador', '71 anos-luz por hora', '195kg'),
(null, 'odonata prime', 'interceptador', '64 anos-luz por hora', '225kg'),
(null, 'beaky', 'caça estelar', '61 anos-luz por hora', '245kg'),
(null, 'nodulite', 'caça estelar', '65 anos-luz por hora', '237kg'),
(null, 'gristlebuck', 'caça estelar', '69 anos-luz por hora', '228kg'),
(null, 'arc gurren', 'hangar', ' 27 anos-luz por hora', '872kg'),
(null, 'daykaiser', 'hangar', ' 29 anos-luz por hora', '867kg'),
(null, 'phalanx', 'hangar', ' 30 anos-luz por hora', '821kg'),
(null, 'basaran', 'hangar', ' 25 anos-luz por hora', '930kg');

create table hangar(
fkexercito int, 
fknave int,
foreign key (fkexercito) references exercito(ID),
foreign key (fknave) references naves(idnave),
qtdnaves int
);

insert into hangar values 
(1, 12, 35),
(2, 13, 42),
(3, 14, 46),
(4, 15, 54);

create table armas(
idarma int primary key auto_increment,
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

create table armamento(
FK_exercito int,
FK_arma int,
foreign key (FK_exercito) references exercito(ID),
foreign key (FK_arma) references armas(idarma),
qtd_armas int);

insert into armamento (FK_exercito, FK_arma, qtd_armas)
value 
(1,2,1000),
(2,3,5000),
(4,1,500),
(3,8,900000),
(1,9,5000),
(2,5,400),
(3,7,500000),
(1,6,50);


-- FACEIS --
-- Mostre os planetas que são brancos --
SELECT * FROM planetas WHERE cor = 'branco';
-- Mostre os satelites que têm o numero 0 no final do nome --
SELECT * FROM satelites WHERE nome LIKE '%0';
-- Mostre os planetas do maior até o menor ==
SELECT * FROM planetas ORDER BY tamanho DESC;
-- Mostre os satelites do menor até o maior ==
SELECT * FROM satelites ORDER BY tamanho;
-- Mostre as armas que têm tier lendário --
SELECT * FROM armas WHERE tier = 'lendário';

-- MEDIAS --
-- Mostre o tamanho médio dos planetas --
SELECT AVG(tamanho) FROM planetas;
-- Mostre o nome dos planetas e seus respectivos satelites --
SELECT planetas.nome AS 'nome do planeta', satelites.nome AS 'satelite' FROM planetas
JOIN satelites ON planetas.ID = satelites.FK_planeta;
-- Mostre os sistemas planetarios e seu correspondente sol --
SELECT sistemas.nome AS 'Sistema', sol.nome AS sol FROM sistemas_planetarios AS sistemas
JOIN sol ON sistemas.ID = sol.FK_sistema;

-- DIFICEIS --
-- Mostre os sistemas planetarios com seu sol e seus planetas --
SELECT sistemas.nome AS 'Sistema', sol.nome AS sol, planetas.nome AS planeta FROM sistemas_planetarios AS sistemas
JOIN sol ON sistemas.ID = sol.FK_sistema
JOIN planetas ON sol.ID = planetas.FK_sol;
-- Mostre os planetas não populados --
SELECT planetas.nome AS planeta, populacao.qtd_populacao AS população FROM planetas
LEFT JOIN populacao ON planetas.ID = populacao.FK_planetas WHERE qtd_populacao IS NULL;
-- Mostre as raças extintas --
SELECT racas.nomeRaca AS raça, populacao.qtd_populacao AS população FROM racas
LEFT JOIN populacao ON racas.ID = populacao.FK_racas WHERE qtd_populacao IS NULL;

-- CHALLENGE --
-- Mostre a nave mais pesada de cada planeta agrupada da mais até a menos pesada --
SELECT planetas.nome AS planeta, naves.nome AS nave, max(naves.peso) AS velocidade FROM hangar
JOIN naves ON naves.idnave = hangar.fknave
JOIN exercito ON exercito.ID = hangar.fkexercito
JOIN planetas ON planetas.ID = exercito.fk_Planetas GROUP BY(planetas.nome) ORDER BY naves.peso DESC;