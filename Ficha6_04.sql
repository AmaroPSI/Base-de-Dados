USE loja_online;

DROP TABLE IF EXISTS produtos_vendidos;
DROP TABLE IF EXISTS vendas;
DROP TABLE IF EXISTS clientes;


CREATE TABLE clientes(
  id int(10) UNSIGNED AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(50) NOT NULL UNIQUE,
  data_registo DATE NOT NULL,
  data_nascimento DATE, 
  password CHAR(40) NOT NULL,
  genero CHAR(1),
  PRIMARY KEY (id)
) ENGINE=InnoDB;

INSERT INTO clientes (nome,email,data_nascimento,data_registo,password,genero) VALUES
('Carlos Antunes','carlos.antunes@iplisboa.pt',STR_TO_DATE('1980-12-09','%Y-%m-%d'),STR_TO_DATE('2000-11-02','%Y-%m-%d'),sha1('thebest'),NULL),
('Pedro Henriques','pepe.henrique@live.pt',NULL,STR_TO_DATE('2000-10-20','%Y-%m-%d'),sha1('speedy2000'),'M'),
('Ana Saraiva','Saraiva_ana@live.pt',NULL,STR_TO_DATE('2010-01-30','%Y-%m-%d'),sha1('morangos'),'F'),
('Filipa Salvador','pipita97@gmail.com',STR_TO_DATE('1987-05-14','%Y-%m-%d'),STR_TO_DATE('2015-03-11','%Y-%m-%d'),sha1('XPT_fg$5_3'),'F'),
('Carlos Henriques','joker1945@gmail.com',STR_TO_DATE('1945-06-09','%Y-%m-%d'),STR_TO_DATE('2008-11-16','%Y-%m-%d'),sha1('minhapass'),'M'),
('João Saraiva','saraivajo@netcabo.pt',STR_TO_DATE('1968-10-29','%Y-%m-%d'),STR_TO_DATE('2012-06-02','%Y-%m-%d'),sha1('inadivinhável'),'M'),
('João Salvador','jonasssalvador@hotmail.com',STR_TO_DATE('1975-06-30','%Y-%m-%d'),STR_TO_DATE('2012-11-28','%Y-%m-%d'),sha1('12345678'),'M'),
('Margarida Antunes','margy1987@gmail.com',NULL,STR_TO_DATE('2008-07-16','%Y-%m-%d'),sha1('hdhg%#_eydER'),NULL);


CREATE TABLE vendas(
  id int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  data DATE NOT NULL,
  obs varchar(500),
  id_cliente INT(10) UNSIGNED NOT NULL, 
 FOREIGN KEY (id_cliente) REFERENCES clientes(id) 
) ENGINE=InnoDB;


CREATE TABLE produtos_vendidos(
  id_venda int(10) UNSIGNED,
  id_produto int(10) UNSIGNED,
  preco_unitario DECIMAL(7,2) NOT NULL,
  numero_unidades int(2) NOT NULL,
  PRIMARY KEY (id_venda,id_produto),
  FOREIGN KEY (id_venda) REFERENCES vendas(id),
  FOREIGN KEY (id_produto) REFERENCES produtos(id)
) ENGINE=InnoDB;


INSERT INTO vendas (data,obs,id_cliente) VALUES
(STR_TO_DATE('2016-12-13','%Y-%m-%d'),'Primeira venda da Vorten!?',7),
(STR_TO_DATE('2016-12-14','%Y-%m-%d'),NULL,1),
(STR_TO_DATE('2016-12-30','%Y-%m-%d'),'Deu-se uma reclamação motivada por preço mal assinalado.',7),
(STR_TO_DATE('2016-12-31','%Y-%m-%d'),'Cliente reclamou porque as renas do Pai Natal estão estacionadas em segunda fila.',2),
(STR_TO_DATE('2017-01-03','%Y-%m-%d'),'Cliente reclamou por considerar o preço da depiladora muito baixo.',6),
(STR_TO_DATE('2017-01-03','%Y-%m-%d'),NULL,5),
(STR_TO_DATE('2017-02-01','%Y-%m-%d'),'O cliente reclamou porque as filas na loja estavam muito grandes.',6),
(STR_TO_DATE('2017-02-04','%Y-%m-%d'),'Cliente esqueceu-se da carteira na caixa POS',1);

INSERT INTO produtos_vendidos (id_venda, id_produto, preco_unitario,numero_unidades) VALUES
(1,2,3659,1),
(1,1,69.99,1),
(1,9,680,1),
(2,3,220,1),
(2,6,800,1),
(3,1,69.99,1),
(5,5,100,1),
(6,1,65.50,2),
(6,3,219.5,1),
(7,5,119,1),
(7,7,69.99,5);