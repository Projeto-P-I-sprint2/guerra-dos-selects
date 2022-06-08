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
foreign key (fknave) references exercito(idnave),
qtdnaves int
);

insert into hangar values 
(1, 12, 35),
(2, 13, 42),
(3, 14, 46),
(4, 15, 54);