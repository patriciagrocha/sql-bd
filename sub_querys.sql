SELECT * FROM empregados;

-- Quantidade total de registros da tabela de empregados (dica: count(*) ???)
SELECT COUNT (*) FROM empregados;

-- Quantidade de empregados que ganham mais de 9000 reais (dica: e se usar a cláusula where…)
SELECT COUNT (*) FROM empregados WHERE salario > 9000;

-- Empregados que ganham mais de 9000 reais (dica: e se usar a cláusula where…)
SELECT * FROM empregados WHERE salario > 9000;

-- A média aritmética dos salários cadastrados na tabela.
SELECT AVG(salario) FROM empregados;

 --função ROUND arredondar em duas casas decimais
SELECT ROUND(AVG(salario),2) FROM empregados;

-- A média aritmética dos salários dos empregados que ganham mais de 9000 reais.
SELECT AVG(salario) FROM empregados WHERE salario > 9000;
SELECT ROUND(AVG(salario),2) FROM empregados WHERE salario > 9000;

-- O menor salário cadastrado na tabela.
SELECT MIN(salario) FROM empregados;

-- O maior salário cadastrado na tabela.
SELECT MAX(salario) FROM empregados;

-- A soma de todos os salários dos empregados.
SELECT SUM(salario) FROM empregados;

--dados de nome, salário e função do empregados de maior salário
SELECT nome, salario, funcao FROM empregados WHERE salario = (SELECT MAX(salario) FROM empregados);

--Dados de nome e salário dos empregados que ganham acima da média de salários
SELECT nome, salario 
FROM empregados 
WHERE salario > (SELECT AVG(salario) FROM empregados );




