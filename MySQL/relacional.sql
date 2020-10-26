create database db_chaves;
use db_chaves;

CREATE TABLE Pessoas (
	ID_Pessoa integer PRIMARY KEY AUTO_INCREMENT,
	Nome varchar(255));

CREATE TABLE Carro(
	ID_Carro integer PRIMARY KEY AUTO_INCREMENT,
	Nome varchar(255),
	Marca varchar(255),
	ID_Pessoa integer,
    CONSTRAINT fk_Pessoas FOREIGN KEY (ID_Pessoa) REFERENCES Pessoas(ID_Pessoa)
    );
    
INSERT INTO Pessoas (Nome) VALUES 
	('Juliana'),
    ('Julio'),
    ('Márcio');

insert into Carro (Nome, Marca, Id_Pessoa) values    ('Gol', 'Wolks',2 ),    ('Palio', 'Fiat', 3);   

SELECT * FROM Pessoas
INNER JOIN Carro
WHERE Pessoas.ID_Pessoa = Carro.ID_Pessoa;

TRUNCATE TABLE Pessoas; 