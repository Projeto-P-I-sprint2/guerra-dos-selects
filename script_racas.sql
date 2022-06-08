-- CREATE TABLE exercito (
-- 	ID INT PRIMARY KEY AUTO_INCREMENT,
--     qtd_soldados INT,
--     fk_Planetas INT, FOREIGN KEY (fk_Planetas) REFERENCES planetas(ID)
-- );

-- INSERT INTO exercito VALUES
-- ( NULL, 10000, 1 ),
-- ( NULL, 20000, 2 ),
-- ( NULL, 20000, 3 ),
-- ( NULL, 20000, 4 );

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