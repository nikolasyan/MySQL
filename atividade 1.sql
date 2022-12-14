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
INSERT INTO Empregado (IdEmpregado,NomeEmpregado, IdDepto, Cargo, Tempo_Emp, Salario, Comissao)VALUES ('15', 'Carlone', '1', 'Chefe', '1', '100.00', '30.00');
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
/*1. Lista Nome e sal??rio de todos os Empregados.*/
select NomeEmpregado, Salario from Empregado;
/*******************************************************************************************/
/*******************************************************************************************/
/*2. Lista Nome e Local de todos os Departamentos.*/
select NomeDepto, Local from Departamento;
/*******************************************************************************************/
/*******************************************************************************************/
/*3. Lista Nome, sal??rio e comiss??o dos Empregados com salario maior que 1.800.*/
select NomeEmpregado, Salario, Comissao from Empregado where (Salario > 1800);
/*******************************************************************************************/
/*******************************************************************************************/
/*4. Lista Nome, divis??o e Local dos Departamentos da divis??o SUL.*/
select NomeDepto, Divisao, Local from Departamento where (Divisao = 'SUL');
/*******************************************************************************************/
/*******************************************************************************************/
/*5. Lista Nome, departamento, salario e cargo dos Empregados com cargo GER e sal??rio menor que 2.000.*/
select NomeEmpregado, IdDepto, Salario, Cargo from Empregado where (Cargo = 'GER') and (Salario < 2000);
/*******************************************************************************************/
/*******************************************************************************************/
/*6. Lista todos os dados dos Empregados com cargo ATEND ou sal??rio entre 1.800 e 2.000.*/
select * from Empregado where (Cargo = 'ATEND') and Salario between 1800 and 2000; 
/*******************************************************************************************/
/*******************************************************************************************/
/*7. Lista Nome, Sal??rio, comiss??o e remunera????o total (Sal??rio + Comiss??o) de todos os empregados.*/
select NomeEmpregado, Salario, Comissao, Salario + Comissao as RemuneracaoTotal from Empregado; 
/*******************************************************************************************/
/*******************************************************************************************/
/*8. Lista Nome, Sal??rio, comiss??o e remunera????o total (Sal??rio +
Comiss??o) de todos os empregados com sal??rio maior que 2.000 ou comiss??o
maior que 700.*/

select NomeEmpregado, Salario, Comissao, Salario + Comissao as RemuneracaoTotal from Empregado where (Salario > 2000) or (Comissao > 700); 
/*******************************************************************************************/
/*******************************************************************************************/
/*9. Lista Nome, Sal??rio, comiss??o e remunera????o total de todos os
empregados com remunera????o total menor que 1.800.*/
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
/*12. Lista Nome e cargo dos Empregados que o nome tenha N (mai??scula ou
min??scula) como terceira letra*/
select NomeEmpregado, Cargo from Empregado where NomeEmpregado like '__N%' or '__n%';
/*******************************************************************************************/
/*******************************************************************************************/
/*13. Lista Nome, Sal??rio, comiss??o e remunera????o total (Sal??rio +
Comiss??o) de todos os empregados com sal??rio maior que 2.000 ou comiss??o
maior que 800. Apresenta o resultado classificado em ordem alfab??tica de
nome.*/
select NomeEmpregado, Salario, Comissao, Salario + Comissao as RemuneracaoTotal from Empregado where (Salario > 2000) or (Comissao > 800) Order by NomeEmpregado; 
/*******************************************************************************************/
/*******************************************************************************************/
/*14. Lista Nome, Sal??rio, comiss??o e remunera????o total (Sal??rio +
Comiss??o) de todos os empregados com sal??rio maior que 2.000 ou comiss??o
maior que 800. Apresenta o resultado classificado em ordem crescente de
salario.*/
select NomeEmpregado, Salario, Comissao, Salario + Comissao as RemuneracaoTotal from Empregado where (Salario > 2000) or (Comissao > 800) Order by Salario asc; 

/*******************************************************************************************/
/*******************************************************************************************/
/*15. Lista Nome, Sal??rio, comiss??o e remunera????o total (Sal??rio +
Comiss??o) de todos os empregados com sal??rio maior que 2.000 ou comiss??o
maior que 800. Apresenta o resultado classificado em ordem decrescente de
salario.*/
select NomeEmpregado, Salario, Comissao, Salario + Comissao as RemuneracaoTotal from Empregado where (Salario > 2000) or (Comissao > 800) Order by Salario desc; 

/*******************************************************************************************/
/*******************************************************************************************/
/*16. Lista Nome, Sal??rio, comiss??o e remunera????o total (Sal??rio +
Comiss??o) de todos os empregados com sal??rio maior que 2.000 ou comiss??o
maior que 800. Apresenta o resultado classificado em ordem crescente de
remunera????o total*/
select NomeEmpregado, Salario, Comissao, Salario + Comissao as RemuneracaoTotal from Empregado where (Salario > 2000) or (Comissao > 800) Order by (Salario + Comissao) asc; 

/*******************************************************************************************/
/*******************************************************************************************/
/*17. Lista Nome, Sal??rio, comiss??o e remunera????o total de todos os
empregados com sal??rio maior que 2.000 ou comiss??o maior que 800.
Apresenta o resultado classificado em ordem crescente de departamento e em
cada departamento, em ordem decrescente de salario.*/
select NomeEmpregado, Salario, Comissao, Salario + Comissao as RemuneracaoTotal from Empregado where (Salario > 2000) or (Comissao > 800) group by IdDepto order by IdDepto;

select d.NomeDepto, e.NomeEmpregado, e.Salario, Salario + Comissao as RemuneracaoTotal from Empregado e inner join Departamento d on d.IdDepto = e.IdDepto order by d.NomeDepto, e.Salario desc;
/*******************************************************************************************/
/*******************************************************************************************/
/*18. Lista o maior sal??rio, o menor sal??rio e a m??dia dos sal??rios de
todos os Empregados.*/
Select max(Salario), min(Salario), avg(Salario) from Empregado; 
/*******************************************************************************************/
/*******************************************************************************************/
/*19. Lista o maior sal??rio, o menor sal??rio, a m??dia dos sal??rios e a
quantidade dos Empregados com cargo GER ou VENDAS.*/
Select max(Salario), min(Salario), avg(Salario), count(IdEmpregado) from Empregado where Cargo = 'GER' or 'VENDAS'; 
/*******************************************************************************************/
/*******************************************************************************************/
/*20. Lista o cargo, o maior sal??rio, o menor sal??rio, a m??dia dos
sal??rios e a quantidade dos Empregados para cada cargo*/
select Cargo,COUNT(Cargo) as QtdEmpregadosPorCargo, max(Salario), min(Salario), avg(Salario)  from Empregado group by Cargo;
/*******************************************************************************************/
/*******************************************************************************************/
/*21. Lista o departamento, o maior sal??rio, o menor sal??rio, a m??dia dos
sal??rios e a quantidade dos Empregados para cada departamento*/

select d.NomeDepto, max(e.Salario), min(e.Salario), avg(e.Salario), count(d.IdDepto) as qtdEmpregados from Empregado e inner join Departamento d on d.IdDepto = e.IdDepto group by d.NomeDepto;

/*******************************************************************************************/
/*******************************************************************************************/
/*22. Lista o departamento, o maior sal??rio, o menor sal??rio, a m??dia dos
sal??rios e a quantidade dos Empregados para cada departamento,
considerando somente empregados com sal??rio maior que 1.800*/
select IdDepto, COUNT(IdDepto) as qtdEmpregados, max(Salario), min(Salario), avg(Salario)  from Empregado where (Salario) > 1800 group by IdDepto; 

select d.NomeDepto, max(e.Salario), min(e.Salario), avg(e.Salario), count(d.IdDepto) as qtdEmpregados from Empregado e  inner join Departamento d on d.IdDepto = e.IdDepto where (e.Salario) > 1800 group by d.NomeDepto;
/*******************************************************************************************/
/*******************************************************************************************/
/*23. Lista o departamento, o cargo, o maior sal??rio, o menor sal??rio, a
m??dia dos sal??rios e a quantidade dos Empregados para cada cargo dentro de
cada departamento*/

select d.NomeDepto, e.Cargo, max(e.Salario), min(e.Salario), avg(e.Salario), count(*) as qtdEmpregados from Empregado e inner join Departamento d on d.IdDepto = e.IdDepto group by e.Cargo order by count(*);
/*******************************************************************************************/
/*24. Lista o departamento, o maior sal??rio, o menor sal??rio, a m??dia dos
sal??rios e a quantidade dos Empregados, apresentando somente departamentos
que tenham pelo menos 5 empregados.*/

select d.NomeDepto, e.Cargo, max(e.Salario), min(e.Salario), avg(e.Salario), count(*) as qtdEmpregados from Empregado e inner join Departamento d on d.IdDepto = e.IdDepto group by e.Cargo having count(*) > 5;

/*******************************************************************************************/
/*25. Lista o departamento, o maior sal??rio, o menor sal??rio, a m??dia dos
sal??rios e a quantidade dos Empregados com sal??rio maior que 1.400,
apresentando somente departamentos que tenham pelo menos 3 empregados
nessa condi????o.*/

select IdDepto, Cargo, max(Salario), min(Salario), avg(Salario), count(*) as "QtdEmpregadoPorDeptos" from Empregado where (Salario) > 1400 group by IdDepto having COUNT(*) >= 3;

select d.NomeDepto, e.Cargo, max(e.Salario), min(e.Salario), avg(e.Salario), count(*) as qtdEmpregados from Empregado e inner join Departamento d on d.IdDepto = e.IdDepto where e.Salario > 1400 group by e.Cargo having count(*) > 3;

/*******************************************************************************************/
/*26. Lista todos os dados dos Empregados que n??o tem comiss??o (aus??ncia de
valor).*/
select * from Empregado where Comissao IS NULL;
/*******************************************************************************************/
/*******************************************************************************************/
/*27. Lista nome e sal??rio dos empregados com sal??rio menor que a m??dia dos
sal??rios*/

select NomeEmpregado, Salario from Empregado where Salario < (select avg(Salario) from Empregado);

/*******************************************************************************************/
/*28. Lista os c??digos de departamento que tenham empregados com sal??rio
maior que a m??dia de todos os sal??rios (sem repetir c??digos de
departamento).*/

select distinct IdDepto from Empregado where Salario > (select avg(Salario) from Empregado);
/*******************************************************************************************/
/*29. Lista nome e sal??rio dos empregados que tenham o menor sal??rio em seu
departamento*/

select d.IdDepto, d.NomeDepto, e.NomeEmpregado, e.Salario from Empregado e inner join Departamento d on d.IdDepto = e.IdDepto where e.Salario in (select min(salario) from empregado group by IdDepto);
/*******************************************************************************************/
/*30. Lista quantos empregados em cada departamento tem sal??rio maior que a
m??dia de todos os sal??rios*/

select e.IdDepto, count(*), e.Salario from Empregado e inner Join Departamento d on d.IdDepto = e.IdDepto where e.Salario > (select avg(Salario) from Empregado) group by e.IdDepto;


select avg(Salario) from Empregado;