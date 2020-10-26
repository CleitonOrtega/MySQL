use test;

CREATE TABLE funcionarios (
	id int not null auto_increment ,
    nome varchar(30) not null,
    nascimento date,
    sexo enum ('M','F'),
    peso decimal(5,2),
    altura decimal(3,2),
	nacionalidade varchar(20) default 'Brasil',
    primary key(id)

)engine=innodb;

INSERT INTO funcionarios VALUES
(default,'Alex Tenorio da Silva','2018-02-03','M','68.5','2.05',default);

SELECT * FROM funcionarios;

INSERT INTO funcionarios (nome,nascimento,sexo,peso,altura)
VALUES ('Gabriela','1998-02-03','F','58.5',1.60),
		('João','1998-02-04','M','68.5',1.80),
        ('Marcio','1998-02-4','M','69.5',1.70);
        
SELECT * FROM funcionarios;
SELECT * FROM funcionarios where peso > 67;

