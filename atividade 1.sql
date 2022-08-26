create database atividade1;
use atividade1;
/*******************************************************************************************/
create table Departamento
(
 IdDepto int NOT NULL,
 NomeDepto varchar(15) NOT NULL,
 Gerente int NOT NULL,
 Divisao varchar(10) NOT NULL,
 Local varchar(15) NOT NULL,
PRIMARY KEY (IdDepto)
);

create table Empregado
(
 IdEmpregado int NOT NULL,
 NomeEmpregado varchar(20) NOT NULL,
 IdDepto int NOT NULL,
 Cargo varchar(6) NOT NULL,
 Tempo_Emp int NULL,
 Salario decimal(10,2) NULL,
 Comissao decimal(10,2) NULL,
 PRIMARY KEY (IdEmpregado)
);

ALTER TABLE Empregado ADD CONSTRAINT fk_Depto FOREIGN KEY (IdDepto) REFERENCES Departamento (IdDepto);
/*******************************************************************************************/
insert into Departamento (IdDepto, NomeDepto, Gerente, Divisao, Local) values ('1', 'PrimeiroDepto', '1', 'SUL', 'Diadema');
insert into Departamento (IdDepto, NomeDepto, Gerente, Divisao, Local) values ('2', 'SegundoDepto', '2', 'SUL', 'SBC');
insert into Departamento (IdDepto, NomeDepto, Gerente, Divisao, Local) values ('3', 'TerceiroDepto', '3', 'NORTE', 'Diadema');
insert into Departamento (IdDepto, NomeDepto, Gerente, Divisao, Local) values ('4', 'QuartoDepto', '4', 'NORTE', 'SantAndre');
insert into Departamento (IdDepto, NomeDepto, Gerente, Divisao, Local) values ('5', 'QuintoDepto', '5', 'LESTE', 'SantAndre');
insert into Departamento (IdDepto, NomeDepto, Gerente, Divisao, Local) values ('6', 'SextoDepto', '6', 'LESTE', 'Maua');
insert into Departamento (IdDepto, NomeDepto, Gerente, Divisao, Local) values ('7', 'SetimoDepto', '7', 'OESTE', 'Maua');
insert into Departamento (IdDepto, NomeDepto, Gerente, Divisao, Local) values ('8', 'OitavoDepto', '8', 'OESTE', 'SBC');
/*******************************************************************************************/
/*******************************************************************************************/
INSERT INTO Empregado (IdEmpregado,NomeEmpregado, IdDepto, Cargo, Tempo_Emp, Salario, Comissao)VALUES ('1', 'Carlos', '1', 'Chefe', '1', '1200.00', '500.00');
INSERT INTO Empregado (IdEmpregado,NomeEmpregado, IdDepto, Cargo, Tempo_Emp, Salario, Comissao)VALUES ('14', 'Carlon', '1', 'Chefe', '1', '900.00', '30.00');
INSERT INTO Empregado (IdEmpregado,NomeEmpregado, IdDepto, Cargo, Tempo_Emp, Salario, Comissao)VALUES ('2', 'Felipe', '2', 'ATEND', '2', '1200.00', '500.00');
INSERT INTO Empregado (IdEmpregado,NomeEmpregado, IdDepto, Cargo, Tempo_Emp, Salario, Comissao)VALUES ('3', 'Ramon', '3', 'GER', '3', '1500.00', '600.00');
INSERT INTO Empregado (IdEmpregado,NomeEmpregado, IdDepto, Cargo, Tempo_Emp, Salario, Comissao)VALUES ('4', 'Ana', '4', 'GER', '4', '1500.00', '600.00');
INSERT INTO Empregado (IdEmpregado,NomeEmpregado, IdDepto, Cargo, Tempo_Emp, Salario, Comissao)VALUES ('5', 'Julia', '5', 'VENDAS', '5', '2200.00', '700.00');
INSERT INTO Empregado (IdEmpregado,NomeEmpregado, IdDepto, Cargo, Tempo_Emp, Salario, Comissao)VALUES ('6', 'Maria', '6', 'VENDAS', '6', '2200.00', '700.00');
INSERT INTO Empregado (IdEmpregado,NomeEmpregado, IdDepto, Cargo, Tempo_Emp, Salario, Comissao)VALUES ('7', 'Pedro', '7', 'GER', '7', '3400.00', '1000.00');
INSERT INTO Empregado (IdEmpregado,NomeEmpregado, IdDepto, Cargo, Tempo_Emp, Salario, Comissao)VALUES ('8', 'Carla', '8', 'ATEND', '8', '5600.00', '1000.00');
INSERT INTO Empregado (IdEmpregado,NomeEmpregado, IdDepto, Cargo, Tempo_Emp, Salario, Comissao)VALUES ('9', 'Ryan', '8', 'ATEND', '8', '1950.00', '1000.00');
INSERT INTO Empregado (IdEmpregado,NomeEmpregado, IdDepto, Cargo, Tempo_Emp, Salario, Comissao)VALUES ('10', 'Carlito', '8', 'ATEND', '8', '1900.00', '1000.00');
INSERT INTO Empregado (IdEmpregado,NomeEmpregado, IdDepto, Cargo, Tempo_Emp, Salario, Comissao)VALUES ('11', 'Daniela', '8', 'GER', '8', '1930.00', '100.00');
INSERT INTO Empregado (IdEmpregado,NomeEmpregado, IdDepto, Cargo, Tempo_Emp, Salario, Comissao)VALUES ('12', 'Cazuza', '8', 'GER', '8', '1950.00', '300.00');
INSERT INTO Empregado (IdEmpregado,NomeEmpregado, IdDepto, Cargo, Tempo_Emp, Salario, Comissao)VALUES ('13', 'Fred', '8', 'VENDAS', '8', '2900.00', '50.00');
/*******************************************************************************************/
/*1. Lista Nome e salário de todos os Empregados.*/
select NomeEmpregado, Salario from Empregado;
/*******************************************************************************************/
/*******************************************************************************************/
/*2. Lista Nome e Local de todos os Departamentos.*/
select NomeDepto, Local from Departamento;
/*******************************************************************************************/
/*******************************************************************************************/
/*3. Lista Nome, salário e comissão dos Empregados com salario maior que 1.800.*/
select NomeEmpregado, Salario, Comissao from Empregado where (Salario > 1800);
/*******************************************************************************************/
/*******************************************************************************************/
/*4. Lista Nome, divisão e Local dos Departamentos da divisão SUL.*/
select NomeDepto, Divisao, Local from Departamento where (Divisao = 'SUL');
/*******************************************************************************************/
/*******************************************************************************************/
/*5. Lista Nome, departamento, salario e cargo dos Empregados com cargo GER e salário menor que 2.000.*/
select NomeEmpregado, IdDepto, Salario, Cargo from Empregado where (Cargo = 'GER') and (Salario < 2000);
/*******************************************************************************************/
/*******************************************************************************************/
/*6. Lista todos os dados dos Empregados com cargo ATEND ou salário entre 1.800 e 2.000.*/
select * from Empregado where (Cargo = 'ATEND') and Salario between 1800 and 2000; 
/*******************************************************************************************/
/*******************************************************************************************/
/*7. Lista Nome, Salário, comissão e remuneração total (Salário + Comissão) de todos os empregados.*/
select NomeEmpregado, Salario, Comissao, Salario + Comissao as RemuneracaoTotal from Empregado; 
/*******************************************************************************************/
/*******************************************************************************************/
/*8. Lista Nome, Salário, comissão e remuneração total (Salário +
Comissão) de todos os empregados com salário maior que 2.000 ou comissão
maior que 700.*/

select NomeEmpregado, Salario, Comissao, Salario + Comissao as RemuneracaoTotal from Empregado where (Salario > 2000) or (Comissao > 700); 
/*******************************************************************************************/
/*******************************************************************************************/
/*9. Lista Nome, Salário, comissão e remuneração total de todos os
empregados com remuneração total menor que 1.800.*/
select NomeEmpregado, Salario, Comissao, Salario + Comissao as RemuneracaoTotal from Empregado where Salario + Comissao < 1800; 
/*******************************************************************************************/
/*******************************************************************************************/
/*10. Lista Nome e cargo dos Empregados que o nome comece com a letra D.*/
select NomeEmpregado, Cargo from Empregado where NomeEmpregado Like 'D%';
/*******************************************************************************************/
/*******************************************************************************************/
/*11. Lista Nome e cargo dos Empregados que o nome tenha N como terceira
letra.*/
select NomeEmpregado, Cargo from Empregado where NomeEmpregado like '__N%';
/*******************************************************************************************/
/*******************************************************************************************/
/*12. Lista Nome e cargo dos Empregados que o nome tenha N (maiúscula ou
minúscula) como terceira letra*/
select NomeEmpregado, Cargo from Empregado where NomeEmpregado like '__N%' or '__n%';
/*******************************************************************************************/
/*******************************************************************************************/
/*13. Lista Nome, Salário, comissão e remuneração total (Salário +
Comissão) de todos os empregados com salário maior que 2.000 ou comissão
maior que 800. Apresenta o resultado classificado em ordem alfabética de
nome.*/
select NomeEmpregado, Salario, Comissao, Salario + Comissao as RemuneracaoTotal from Empregado where (Salario > 2000) or (Comissao > 800) Order by NomeEmpregado; 
/*******************************************************************************************/
/*******************************************************************************************/
/*14. Lista Nome, Salário, comissão e remuneração total (Salário +
Comissão) de todos os empregados com salário maior que 2.000 ou comissão
maior que 800. Apresenta o resultado classificado em ordem crescente de
salario.*/
select NomeEmpregado, Salario, Comissao, Salario + Comissao as RemuneracaoTotal from Empregado where (Salario > 2000) or (Comissao > 800) Order by Salario asc; 

/*******************************************************************************************/
/*******************************************************************************************/
/*15. Lista Nome, Salário, comissão e remuneração total (Salário +
Comissão) de todos os empregados com salário maior que 2.000 ou comissão
maior que 800. Apresenta o resultado classificado em ordem decrescente de
salario.*/
select NomeEmpregado, Salario, Comissao, Salario + Comissao as RemuneracaoTotal from Empregado where (Salario > 2000) or (Comissao > 800) Order by Salario desc; 

/*******************************************************************************************/
/*******************************************************************************************/
/*16. Lista Nome, Salário, comissão e remuneração total (Salário +
Comissão) de todos os empregados com salário maior que 2.000 ou comissão
maior que 800. Apresenta o resultado classificado em ordem crescente de
remuneração total*/
select NomeEmpregado, Salario, Comissao, Salario + Comissao as RemuneracaoTotal from Empregado where (Salario > 2000) or (Comissao > 800) Order by (Salario + Comissao) asc; 

/*******************************************************************************************/
/*******************************************************************************************/
/*17. Lista Nome, Salário, comissão e remuneração total de todos os
empregados com salário maior que 2.000 ou comissão maior que 800.
Apresenta o resultado classificado em ordem crescente de departamento e em
cada departamento, em ordem decrescente de salario.*/
select NomeEmpregado, Salario, Comissao, Salario + Comissao as RemuneracaoTotal from Empregado where (Salario > 2000) or (Comissao > 800) group by IdDepto order by IdDepto;
/*******************************************************************************************/
/*******************************************************************************************/
/*18. Lista o maior salário, o menor salário e a média dos salários de
todos os Empregados.*/
Select max(Salario), min(Salario), avg(Salario) from Empregado; 
/*******************************************************************************************/
/*******************************************************************************************/
/*19. Lista o maior salário, o menor salário, a média dos salários e a
quantidade dos Empregados com cargo GER ou VENDAS.*/
Select max(Salario), min(Salario), avg(Salario), count(IdEmpregado) from Empregado where Cargo = 'GER' or 'VENDAS'; 
/*******************************************************************************************/
/*******************************************************************************************/
/*20. Lista o cargo, o maior salário, o menor salário, a média dos
salários e a quantidade dos Empregados para cada cargo*/
select Cargo,COUNT(Cargo) as QtdEmpregadosPorCargo, max(Salario), min(Salario), avg(Salario)  from Empregado group by Cargo;
/*******************************************************************************************/
/*******************************************************************************************/
/*21. Lista o departamento, o maior salário, o menor salário, a média dos
salários e a quantidade dos Empregados para cada departamento*/
select IdDepto, COUNT(IdDepto) as qtdEmpregados, max(Salario), min(Salario), avg(Salario)  from Empregado group by IdDepto ; 

/*******************************************************************************************/
/*******************************************************************************************/
/*22. Lista o departamento, o maior salário, o menor salário, a média dos
salários e a quantidade dos Empregados para cada departamento,
considerando somente empregados com salário maior que 1.800*/
select IdDepto, COUNT(IdDepto) as qtdEmpregados, max(Salario), min(Salario), avg(Salario)  from Empregado where (Salario) > 1800 group by IdDepto; 
/*******************************************************************************************/
/*******************************************************************************************/
/*23. Lista o departamento, o cargo, o maior salário, o menor salário, a
média dos salários e a quantidade dos Empregados para cada cargo dentro de
cada departamento*/

select IdDepto, Cargo, max(Salario), min(Salario), avg(Salario), count(*) as "QtdEmpregadoPorDeptos" from Empregado group by IdDepto order by COUNT(*);

/*******************************************************************************************/
/*24. Lista o departamento, o maior salário, o menor salário, a média dos
salários e a quantidade dos Empregados, apresentando somente departamentos
que tenham pelo menos 5 empregados.*/

select IdDepto, Cargo, max(Salario), min(Salario), avg(Salario), count(*) as "QtdEmpregadoPorDeptos" from Empregado group by IdDepto having COUNT(*) > 5;

/*******************************************************************************************/
/*25. Lista o departamento, o maior salário, o menor salário, a média dos
salários e a quantidade dos Empregados com salário maior que 1.400,
apresentando somente departamentos que tenham pelo menos 3 empregados
nessa condição.*/

select IdDepto, Cargo, max(Salario), min(Salario), avg(Salario), count(*) as "QtdEmpregadoPorDeptos" from Empregado where (Salario) > 1400 group by IdDepto having COUNT(*) >= 3;

/*******************************************************************************************/
/*26. Lista todos os dados dos Empregados que não tem comissão (ausência de
valor).*/
select * from Empregado where Comissao IS NULL;
/*******************************************************************************************/
/*******************************************************************************************/
/*27. Lista nome e salário dos empregados com salário menor que a média dos
salários*/
select NomeEmpregado, Salario from Empregado where Salario < (select avg(Salario) from Empregado);

/*******************************************************************************************/
/*28. Lista os códigos de departamento que tenham empregados com salário
maior que a média de todos os salários (sem repetir códigos de
departamento).*/

select distinct IdDepto from Empregado where Salario > (select avg(Salario) from Empregado);
/*******************************************************************************************/
/*29. Lista nome e salário dos empregados que tenham o menor salário em seu
departamento*/

SELECT NomeEmpregado, min(Salario), iddepto FROM Empregado GROUP BY IdDepto;
ou
SELECT NomeEmpregado, min(Salario), iddepto FROM Empregado GROUP BY IdDepto having min(Salario);
/*******************************************************************************************/
/*30. Lista quantos empregados em cada departamento tem salário maior que a
média de todos os salários*/

select IdDepto, count(*) as QtdEmpregados from Empregado where Salario > (select avg(Salario) from Empregado) group by IdDepto;


