CREATE DATABASE Ex1_DB;

use Ex1_DB;

CREATE TABLE funcionario (
	ID_func int Primary Key auto_increment,
    CPF varchar(14) Not Null,
    nome varchar(40),
    salario decimal(8,2)

);

INSERT INTO funcionario VALUES
(DEFAULT,'012.345.678-90','Cleiton', 1000.00),
(DEFAULT,'012.345.678-91','Ricardo', 2000.00),
(DEFAULT,'012.345.678-92','Zaine', 3000.00),
(DEFAULT,'012.345.678-93','Christian', 4000.00),
(DEFAULT,'012.345.678-94','Mônica', 5000.00);

SELECT * FROM funcionario
WHERE salario > 2000;

SELECT * FROM funcionario
WHERE salario < 2000;

UPDATE funcionario
SET salario = 1500.00
WHERE salario = 5000.00;