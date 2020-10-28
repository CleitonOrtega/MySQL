CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	id_categoria int primary key auto_increment,
    categoria_produto varchar (30) unique,
    marca_produto varchar(30) DEFAULT "DESCONHECIDO"
);

CREATE TABLE tb_produto(
	id_produto int primary key auto_increment,
    produtos varchar(30),
    valor_produtos decimal(6,2),
    Roupa enum ("Sim","Não"),
    id_categoria int,
    CONSTRAINT fk_id_categoria FOREIGN KEY (id_categoria)
    REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_categoria VALUES
(DEFAULT,"Blusa de Frio","Oakley"),
(DEFAULT,"Camiseta","Lacoste"),
(DEFAULT,"Calsa",DEFAULT),
(DEFAULT,"Bermuda","Adidas"),
(DEFAULT,"Tenis","Nike");

INSERT INTO tb_produto VALUES
(DEFAULT,"Corta Vento",79.90,"Sim",1),
(DEFAULT,"Polo",55.90,"Sim",2),
(DEFAULT,"Calsa Moletom",45.50,"Sim",3),
(DEFAULT,"Bermuda Jeans",70.45,"Sim",4),
(DEFAULT,"Air Max",275.00,"Nao",5),
(DEFAULT,"Blusa Moletom",70.00,"Sim",1),
(DEFAULT,"Camisa gola V",60.00,"Sim",2),
(DEFAULT,"Calsa Jeans",100.00,"Sim",3);


select * from tb_produto
where valor_produtos > 50;

select * from tb_produto
where valor_produtos < 60 and valor_produtos > 3;

select * from tb_produto 
where produtos like "%co%";

select * from tb_produto
inner join tb_categoria
on tb_produto.id_categoria = tb_categoria.id_categoria;

select id_produto,produtos,valor_produtos,roupa,categoria_produto from tb_produto
inner join tb_categoria
on tb_produto.id_categoria = tb_categoria.id_categoria
where tb_categoria.id_categoria = 1;


