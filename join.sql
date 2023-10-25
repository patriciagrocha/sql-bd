
CREATE TABLE clientes (
	id_cliente serial,
	nome varchar(100) not null,
primary key(id_cliente)
);


CREATE TABLE enderecos (
	id_endereco serial,
	rua varchar(100) not null,
	numero int,
	bairro varchar(100),
	cidade varchar(100),
	uf varchar(2),
	id_cliente int,
primary key(id_endereco),
foreign key(id_cliente) references clientes(id_cliente)
);


INSERT INTO clientes (nome) VALUES ('Harvey Specter');
INSERT INTO clientes (nome) VALUES ('Mike Ross');
INSERT INTO clientes (nome) VALUES ('Donna Paulsen');
INSERT INTO clientes (nome) VALUES ('Louis Litt');
INSERT INTO clientes (nome) VALUES ('Rachel Zane');
INSERT INTO clientes (nome) VALUES ('Jessica Pearson');

INSERT INTO enderecos (rua, numero, cidade, id_cliente) 
VALUES ('Rua do Harvey', 22, 'São Paulo', 
		(select id_cliente from clientes where nome = 'Harvey Specter'));
INSERT INTO enderecos (rua, numero, cidade, id_cliente) 
VALUES ('Rua do Mike', 33, 'Florianópolis', 
		(select id_cliente from clientes where nome = 'Mike Ross'));
INSERT INTO enderecos (rua, numero, cidade, id_cliente) 
VALUES ('Rua da Donna', 44, 'Rio de Janeiro', 
		(select id_cliente from clientes where nome = 'Donna Paulsen'));

INSERT INTO enderecos (rua, numero, cidade) VALUES ('Rua Sem Dono 01', 88, 'Nova York');
INSERT INTO enderecos (rua, numero, cidade) VALUES ('Rua Sem Dono 02', 86, 'Chicago');
INSERT INTO enderecos (rua, numero, cidade) VALUES ('Rua Sem Dono 03', 87, 'Nova Orleans');
INSERT INTO enderecos (rua, numero, cidade) VALUES ('Rua Sem Dono 04', 89, 'Seattle');

commit;

SELECT * FROM clientes;
SELECT * FROM enderecos;

--SELECIONAR DADOS DE CLIENTES E ENDEREÇOS DOS CLIENTES QUE TEM ENDEREÇO

SELECT nome, rua
FROM CLIENTES INNER JOIN ENDERECOS --COMO SE FOSSE UM TABELA SÓ
ON CLIENTES.id_cliente = ENDERECOS.id_cliente
WHERE NOME LIKE '%Harvey%';

SELECT *
FROM CLIENTES LEFT JOIN ENDERECOS 
ON clientes.id_cliente = ENDERECOS.id_cliente; 

SELECT *
FROM CLIENTES RIGHT JOIN ENDERECOS 
ON clientes.id_cliente = ENDERECOS.id_cliente; 



