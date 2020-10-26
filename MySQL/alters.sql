RENAME TABLE funcionarios TO colaboradores;

ALTER TABLE  colaboradores add column cpf int first;
ALTER TABLE  colaboradores add column email varchar(30);
ALTER TABLE  colaboradores add column sobrenome varchar(30)after nome;
ALTER TABLE colaboradores MODIFY COLUMN nome VARCHAR(20);
ALTER TABLE colaboradores DROP COLUMN sobrenome;
SELECT * FROM colaboradores;
describe colaboradores;