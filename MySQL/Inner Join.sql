CREATE DATABASE joins;
use joins;

CREATE TABLE endereco_clientes(
	cliente_id1 int NOT NULL,
    cliente_endereco text,
    primary key (cliente_id1)

);

CREATE TABLE clientes (
	cliente_id0 int primary key auto_increment,
    nome varchar(100)
);

SELECT * FROM clientes;
SELECT * FROM endereco_clientes;

insert into clientes values
		(1, "João Marcio"),	
        (2, "Juliana"),	
        (3, "João Marcio"),
        (4, "Gabriela"),    
        (6, "Fabio"),    
        (7, "Juliana");   

INSERT INTO endereco_clientes VALUES
	(1, 'Rua Faria lima, Centro, São Paulo'),
    (2, 'Rua Osvaldo Cruz,Campinas, São Paulo'),
    (3, 'Rua Rosana, Sinara, Nova Esperança'),
    (4, 'Av. Bias Fortes, Centro, Brasília'),
    (5, 'Beatles, Santa Cruz, Rio de Janeiro'),
    (6, 'Av. Esquerda, Vila Pinheiro, New York');
    
SELECT * FROM clientes
LEFT JOIN endereco_clientes
ON clientes.cliente_id0 = endereco_clientes.cliente_id1;

SELECT * FROM clientes
RIGHT JOIN endereco_clientes
ON clientes.cliente_id0 = endereco_clientes.cliente_id1;

SELECT * FROM clientes
INNER JOIN endereco_clientes
ON clientes.cliente_id0 = endereco_clientes.cliente_id1;


CREATE TABLE clientes_copia select * from clientes;
CREATE TABLE endereco_clientes_copia select * from endereco_clientes;

CREATE TABLE inner_copia SELECT * FROM clientes
INNER JOIN endereco_clientes
ON clientes.cliente_id0 = endereco_clientes.cliente_id1;

 SELECT * FROM clientes 
right JOIN endereco_clientes 
ON clientes.cliente_id0 = endereco_clientes.cliente_id1 where 
clientes.cliente_id0 is null;

SELECT * FROM copy clientes 
inner JOIN endereco_clientes 
ON clientes.cliente_id0 = endereco_clientes.cliente_id1; 
