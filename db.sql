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