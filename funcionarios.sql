CREATE TABLE empregados (
   id_empregado serial,
   nome varchar(40) not null,
   salario decimal(10,2),
   funcao varchar(100),
primary key (id_empregado)
);
INSERT INTO empregados(nome, salario, funcao) VALUES ('James Kirk', '10000', 'Comandante');		
INSERT INTO empregados(nome, salario, funcao) VALUES ('Leonard McCoy', '9000', 'Médico');
INSERT INTO empregados(nome, salario, funcao) VALUES ('Montgomeny Scott', '9000', 'Engenheiro');
INSERT INTO empregados(nome, funcao) VALUES ('Spock', 'Oficial de Ciência');

INSERT INTO empregados (nome, funcao, salario) VALUES ('Uhura', 'Oficial de Comunicação', 9200);
INSERT INTO empregados (nome, funcao) VALUES ('Pavel Checkov', 'Navegador');
INSERT INTO empregados (nome) VALUES ('Christopher Pike');
INSERT INTO empregados (nome) VALUES ('Sulu');

SELECT * FROM empregados;
SELECT nome, funcao,salario FROM empregados WHERE nome = 'Uhura';
SELECT nome, salario FROM empregados WHERE salario >= 9000 AND salario <= 9500 ;
SELECT nome, salario FROM empregados WHERE salario BETWEEN 9000 AND 9500;

UPDATE empregados SET salario = 9300 WHERE nome = 'Uhura';
UPDATE empregados SET nome = 'Hikary Sulu' WHERE nome = 'Sulu';

DELETE FROM empregados WHERE nome like '%Pike';

UPDATE empregados SET nome = UPPER(nome) WHERE salario = 9000;


