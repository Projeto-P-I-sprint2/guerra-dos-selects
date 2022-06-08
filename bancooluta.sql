create database universo;
use universo;
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

