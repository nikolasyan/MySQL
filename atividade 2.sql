use atividade1;

/*33. Listar a coluna Divisao da tabela Departamento.*/

select divisao from departamento;

/*34. Listar a coluna Divisao da tabela Departamento, porém mostre somente linhas distintas (sem repetição).*/

select distinct divisao from departamento;

/*35. Crie uma cosulta que faça a concatenação entre as colunas Divisao e Local da tabela Departamento, para separar as colunas utilize ‘ – ‘. Crie o um alias para coluna ‘Divisão + Local‘*/

select concat(divisao , ' - ', local) as 'divisao + local' from departamento;

/*36. Crie uma consulta que liste as colunas: NomeEmpregado e Salario da tabela Empregado. Crie as seguintes colunas calculadas: */

select nomeempregado as Nome, salario as Salário, (salario * 1.1) as 'Salário mais 10%', (salario * 1.2) as 'Salário mais 20%',  (salario * 0.9) as 'Salário menos 10%', (salario * 0.8) as 'Salário menos 20%' from empregado;

/*37.Crie uma consulta que liste as colunas: NomeEmpregado e Salario da tabela
Empregado. Crie as seguintes colunas calculadas:*/


select nomeempregado as Nome, salario as Salário,
ifnull(salario + comissao, 0) as 'Salario total', 
ifnull((Salario + Comissao) * 12, 0) as 'Salario Total Anual', 
ifnull((Salario + Comissao) * 0.5, 0) as 'Valor Desconto Imposto de Renda', 
ifnull((Salario + Comissao) * 0.2, 0) as 'Valor Desconto Plano de Saúde', 
ifnull((Salario + Comissao) * 0.15, 0) as 'Valor Desconto Alimentação', 
ifnull((Salario + Comissao) - ((Salario + Comissao) * (0.5 + 0.2 + 0.15)), 0) as '‘Salário Liquido', 
ifnull(Salario / 30, 0) as 'Salário Diário', 
ifnull(Salario / 30 / 8, 0) as 'Salário por Hora', 
ifnull(Salario / 30 / 8 / 60, 0) as 'Salário por Minuto',
ifnull(Salario / 30 / 8 / 60 / 60, 0) as 'Salário por Segundo' from empregado;


