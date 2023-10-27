CREATE TABLE times(
	sigla varchar(3),
	nome varchar(50) not null,
	primary key(sigla)
)

INSERT INTO times(sigla, nome) VALUES('QAT', 'Qatar');
INSERT INTO times (sigla, nome) VALUES ('ECU', 'Equador');
INSERT INTO times (sigla, nome) VALUES ('SEN', 'Senegal');
INSERT INTO times (sigla, nome) VALUES ('NED', 'Holanda');
INSERT INTO times (sigla, nome) VALUES ('ENG', 'Inglaterra');
INSERT INTO times (sigla, nome) VALUES ('IRN', 'Irã');
INSERT INTO times (sigla, nome) VALUES ('USA', 'Estados Unidos');
INSERT INTO times (sigla, nome) VALUES ('WAL', 'País de Gales');
INSERT INTO times (sigla, nome) VALUES ('ARG', 'Argentina');
INSERT INTO times (sigla, nome) VALUES ('KSA', 'Arábia Saudita');
INSERT INTO times (sigla, nome) VALUES ('MEX', 'México');
INSERT INTO times (sigla, nome) VALUES ('POL', 'Polônia');
INSERT INTO times (sigla, nome) VALUES ('FRA', 'França');
INSERT INTO times (sigla, nome) VALUES ('DEN', 'Dinamarca');
INSERT INTO times (sigla, nome) VALUES ('TUN', 'Tunísia');
INSERT INTO times (sigla, nome) VALUES ('AUS', 'Austrália');
INSERT INTO times (sigla, nome) VALUES ('ESP', 'Espanha');
INSERT INTO times (sigla, nome) VALUES ('GER', 'Alemanha');
INSERT INTO times (sigla, nome) VALUES ('JPN', 'Japão');
INSERT INTO times (sigla, nome) VALUES ('CRC', 'Costa Rica');
INSERT INTO times (sigla, nome) VALUES ('BEL', 'Bélgica');
INSERT INTO times (sigla, nome) VALUES ('CAN', 'Canadá');
INSERT INTO times (sigla, nome) VALUES ('MAR', 'Marrocos');
INSERT INTO times (sigla, nome) VALUES ('CRO', 'Croácia');
INSERT INTO times (sigla, nome) VALUES ('BRA', 'Brasil');
INSERT INTO times (sigla, nome) VALUES ('SRB', 'Sérvia');
INSERT INTO times (sigla, nome) VALUES ('SUI', 'Suíça');
INSERT INTO times (sigla, nome) VALUES ('CMR', 'Camarões');
INSERT INTO times (sigla, nome) VALUES ('POR', 'Portugal');
INSERT INTO times (sigla, nome) VALUES ('GHA', 'Gana');
INSERT INTO times (sigla, nome) VALUES ('URU', 'Uruguai');
INSERT INTO times (sigla, nome) VALUES ('KOR', 'Coréia do Sul');

SELECT * FROM times;

SELECT nome FROM times WHERE sigla = 'KSA';
SELECT sigla FROM times WHERE nome = 'Gana';

SELECT * FROM times WHERE nome like 'E%';
SELECT * FROM times WHERE LOWER(nome) like 'e%';
SELECT * FROM times WHERE LOWER(nome) like 'e%' AND sigla like 'U%';

ALTER TABLE times ADD COLUMN grupo varchar(1);

UPDATE times SET grupo = 'A' WHERE nome IN ('Qatar', 'Equador', 'Senegal', 'Holanda');
UPDATE times SET grupo = 'B' WHERE nome IN ('Inglaterra', 'Irã', 'Estados Unidos', 'País de Gales');
UPDATE times SET grupo = 'C' WHERE nome IN ('Argentina', 'Arábia Saudita', 'México', 'Polônia');
UPDATE times SET grupo = 'D' WHERE nome IN ('França', 'Dinamarca', 'Tunísia', 'Austrália');
UPDATE times SET grupo = 'E' WHERE nome IN ('Espanha', 'Alemanha', 'Japão', 'Costa Rica');
UPDATE times SET grupo = 'F' WHERE nome IN ('Bélgica', 'Canadá', 'Marrocos', 'Croácia');
UPDATE times SET grupo = 'G' WHERE nome IN ('Brasil', 'Sérvia', 'Suíça', 'Camarões');
UPDATE times SET grupo = 'H' WHERE nome IN ('Portugal', 'Gana', 'Uruguai', 'Coréia do Sul');
commit;

SELECT * FROM times;

SELECT nome FROM times WHERE grupo = 'G';
SELECT sigla FROM times WHERE grupo = 'C';

-- Consultar todos os campos dos times do grupo 'E' e do grupo 'H', em ordem alfabética de grupo.
SELECT * FROM times WHERE grupo = 'E' OR grupo = 'H' ORDER BY grupo;
SELECT * FROM times WHERE grupo IN ('E', 'H') ORDER BY grupo; -- mesma coisa que o de cima
-- Consultar todos os campos dos times do grupo 'E' e do grupo 'H', em ordem alfabética de nome do time.
SELECT * FROM times WHERE grupo = 'E' OR grupo = 'H' ORDER BY nome;
SELECT * FROM times WHERE grupo IN ('E', 'H') ORDER BY nome; -- mesma coisa que o de cima


CREATE TABLE campeoes (
	ano int,
	sigla_time varchar(3),
primary key (ano),
foreign key (sigla_time) references times (sigla)
);


INSERT INTO campeoes (ano, sigla_time) VALUES (1930, 'URU');
INSERT INTO campeoes (ano, sigla_time) VALUES (1950, 'URU');
INSERT INTO campeoes (ano, sigla_time) VALUES (1954, 'GER');
INSERT INTO campeoes (ano, sigla_time) VALUES (1958, 'BRA');
INSERT INTO campeoes (ano, sigla_time) VALUES (1962, 'BRA');
INSERT INTO campeoes (ano, sigla_time) VALUES (1966, 'ENG');
INSERT INTO campeoes (ano, sigla_time) VALUES (1970, 'BRA');
INSERT INTO campeoes (ano, sigla_time) VALUES (1974, 'GER');
INSERT INTO campeoes (ano, sigla_time) VALUES (1978, 'ARG');
INSERT INTO campeoes (ano, sigla_time) VALUES (1986, 'ARG');
INSERT INTO campeoes (ano, sigla_time) VALUES (1990, 'GER');
INSERT INTO campeoes (ano, sigla_time) VALUES (1994, 'BRA');
INSERT INTO campeoes (ano, sigla_time) VALUES (1998, 'FRA');
INSERT INTO campeoes (ano, sigla_time) VALUES (2002, 'BRA');
INSERT INTO campeoes (ano, sigla_time) VALUES (2010, 'ESP');
INSERT INTO campeoes (ano, sigla_time) VALUES (2014, 'GER');
INSERT INTO campeoes (ano, sigla_time) VALUES (2018, 'FRA');
INSERT INTO campeoes (ano, sigla_time) VALUES (2022, 'ARG');
commit;

SELECT * FROM campeoes;

SELECT * FROM campeoes ORDER BY ano;

SELECT sigla_time FROM CAMPEOES WHERE ano = (SELECT MAX(ano) FROM campeoes); 
