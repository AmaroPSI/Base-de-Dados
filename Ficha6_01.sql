CREATE DATABASE IF NOT EXISTS loja_online;
USE loja_online;

DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS categoria_produtos;

CREATE TABLE produtos (
  id int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  marca varchar(50),
  cod_barras decimal(13,0) NOT NULL,
  obs varchar(500),
  preco decimal(7,2) NOT NULL, 
  UNIQUE KEY (cod_barras)
) ENGINE=InnoDB;

CREATE TABLE categoria_produtos(
id int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
nome varchar(100) NOT NULL,
obs varchar(500)
)ENGINE=InnoDB;


INSERT INTO produtos (nome,marca,cod_barras,preco) VALUES ('Telemóvel NEFFOS','TP-LINK', 6900000001234,69.99);
INSERT INTO produtos (nome,marca,cod_barras,preco) VALUES ('Macbook Pro 15'' MLH42','Apple', 7600000009876,3659);
INSERT INTO produtos (nome,marca,cod_barras,preco,obs) VALUES ('Smartwatch Gear S3 classic', 'Samsung', 7600000005555,219.85,'Por encomenda');
INSERT INTO produtos (nome,marca,cod_barras,obs,preco) VALUES ('Smartwatch Gear S2 Preto','SAMSUNG',7600000007777,'Descontinuado',200.99);
INSERT INTO produtos (nome,marca,cod_barras,obs,preco) VALUES ('Depiladora AS5546','Asus',6900084754600,NULL,199.99);
INSERT INTO produtos (nome,marca,cod_barras,obs,preco) VALUES ('Descascadora de batatas AS6600','Asus',6900084754700,'Must have',999.50);
INSERT INTO produtos (nome,marca,cod_barras,obs,preco) VALUES ('DVD Rambo-A Fúria do Herói',NULL,5602872663765,'Obra prima do cinema',69.99);
INSERT INTO produtos (nome,marca,cod_barras,obs,preco) VALUES ('DVD Star Wars-O Despertar da força',NULL,560785,NULL,14.99);
INSERT INTO produtos (nome,marca,cod_barras,obs,preco) VALUES ('Action Camera ALTOS TRALHOS Hero 5','SAMSUNG',6900004657432,'Best Seller',687.00);

INSERT INTO categoria_produtos (nome,obs) VALUES ('DVD','Utilizado não só para filmes, mas também software');
INSERT INTO categoria_produtos (nome,obs) VALUES ('Computadores','PCs Desktop, Notebooks, etc...');
INSERT INTO categoria_produtos (nome,obs) VALUES ('Telemóveis','Telemóveis e smartphones');
INSERT INTO categoria_produtos (nome,obs) VALUES ('SmartGadgets','Google glasses, pulseiras medidoras, etc...');
INSERT INTO categoria_produtos (nome,obs) VALUES ('Eletrodomésticos','');
INSERT INTO categoria_produtos (nome,obs) VALUES ('Brinquedos','Para crianças');
INSERT INTO categoria_produtos (nome,obs) VALUES ('Fotografia','');
INSERT INTO categoria_produtos (nome,obs) VALUES ('Periféricos','Ratos, teclados, monitores');
INSERT INTO categoria_produtos (nome,obs) VALUES ('Teste','Utilizado para teste');


ALTER TABLE produtos
	ADD COLUMN data_ datetime,
    ADD COLUMN id_categoria int(10) UNSIGNED,
    ADD foreign key (id_categoria) references categoria_produtos(id);

UPDATE produtos SET id_categoria=3 where id=1;
UPDATE produtos SET id_categoria=2 where id=2;
UPDATE produtos SET id_categoria=4 where id=3;
UPDATE produtos SET id_categoria=4 where id=4;
UPDATE produtos SET id_categoria=5 where id=5;
UPDATE produtos SET id_categoria=5 where id=6;
UPDATE produtos SET id_categoria=1 where id=7;
UPDATE produtos SET id_categoria=1 where id=8;
UPDATE produtos SET id_categoria=6 where id=9;

/*ALTER TABLE produtos MODIFY id_categoria int(10) NOT NULL;*/

DELETE FROM categoria_produtos WHERE nome='Teste';
/*DELETE FROM categoria_produtos WHERE nome='DVD';*/

/*INSERT INTO produtos (nome,marca,cod_barras,preco,id_categoria) VALUES ('Almofada de aquecimento','AEG',7600000009872,29.00,20);*/
/* dá erro porque não existe um id_categoria de valor 20 na tabela categoria_produtos */

INSERT INTO produtos (nome,marca,cod_barras,preco,id_categoria) VALUES ('Almofada de aquecimento','AEG',7600000009872,29.00,5);
/*Só dá erro se a linha acima estiver atíva, ficando assim uma row repetida na tabela. */

/* SELECT nome 
FROM categoria_produtos 
ORDER BY nome; */

/*SELECT UPPER(nome), preco  
FROM produtos 
WHERE preco BETWEEN 100 AND 1000
ORDER BY preco DESC;*/
/*
SELECT id,nome,preco,obs
FROM produtos
WHERE preco > 15 and obs IS NOT NULL
ORDER BY id;*/

