CREATE DATABASE db_RH2;

use db_RH2;

drop table tb_funcionario;

CREATE TABLE tb_funcionario(
	id_func int primary key auto_increment,
    cpf_func varchar(14) Unique,
    nome_func varchar(50),
	salario decimal(8,2),
    id_cargo int,
    constraint fk_cargo foreign key (id_cargo) references tb_cargo(id_cargo)
);

CREATE TABLE tb_cargo(
	id_cargo int Primary Key auto_increment,
	nome_cargo varchar(30),
    nivel_cargo enum ('1','2','3')
);

INSERT INTO tb_cargo VALUES
(default,'RH','1'),
(default,'TI','1'),
(default,'CONTABILIDADE','2'),
(default,'MARKETING','3'),
(default,'OPERACIONAL','3');

INSERT INTO tb_funcionario VALUES
(default,'123.456.789-01','Cleiton Ortega',2500.00,2),
(default,'123.456.789-02','Felipe Ortega',1500.00,1),
(default,'123.456.789-03','Agnaldo Pereira',4500.00,4),
(default,'123.456.789-04','Luzia Ortega',1500.00,1),
(default,'123.456.789-05','Christian Garcia',2500.00,2),
(default,'123.456.789-06','Bruna Santos',2500.00,2),
(default,'123.456.789-07','Bruno Costa',1500.00,1),
(default,'123.456.789-08','Tia Jessica',3500.00,3),
(default,'123.456.789-09','Edenilson Nascimento',4500.00,4),
(default,'123.456.789-10','Bruno Sousa',5500.00,5),
(default,'123.456.789-11','Ricardo Martins',3500.00,3),
(default,'123.456.789-12','Mônica Ribeiro',3500.00,3),
(default,'123.456.789-13','Zaine Queiros',4500.00,4),
(default,'123.456.789-14','Vivian Nakano',5500.00,5),
(default,'123.456.789-15','Karina Lima',4500.00,4);

select * from tb_funcionario
where salario > 2000;

select * from tb_funcionario
where salario > 1000 and salario < 2000;

select * from tb_funcionario
where nome_func like 'c%%';