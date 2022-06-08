create table armamento(
FK_exercito int,
FK_arma int,
foreign key (FK_exercito) references exercito(ID),
foreign key (FK_arma) references armas(idarmas),
qtd_armas int);

insert into armamento (FK_exercito, FK_arma, qtd_armas)
value (1,02,1000),
(2,03,5000),
(4,01,500),
(3,08,900000),
(1,09,5000),
(2,05,400),
(3,07,5000000000),
(4,10,10000),
(1,06,50);

