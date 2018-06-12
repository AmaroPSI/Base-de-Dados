/*CDBD_T9_G2
Programação de Sistemas de Informação 
Rent a Car
Gonçalo Amaro, estudante n.º 2170400;
Joel Runa, estudante n.º 2170397;
Pedro Neves, estudante n.º 2170401
*/
Use projetobd;

/*DROP TABLE IF EXISTS Clientes;
DROP TABLE IF EXISTS disponibilidade_veiculo;
DROP TABLE IF EXISTS Marca_Carros;
DROP TABLE IF EXISTS Funcionarios;
DROP TABLE IF EXISTS Aluguer;
DROP TABLE IF EXISTS Seguro;
DROP TABLE IF EXISTS Carros;
*/
/*CRIAÇÃO DAS TABELAS*/

/*CREATE TABLE Clientes (
  id_cliente int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  primeiro_nome varchar(100) NOT NULL,
  segundo_nome varchar(100) NOT NULL,
  cidade varchar(50),
  telemovel int(12) NOT NULL,
  morada varchar(500),
  NIF int(20),
  email varchar(100),
  cod_postal varchar(9) NOT NULL,
  UNIQUE KEY (NIF),
  UNIQUE KEY (email),
  UNIQUE KEY (telemovel)
) engine=InnoDB;

CREATE TABLE Disponibilidade_Veiculo(
	id_disponibilidade int (10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	data_inicio_disponibilidade date NOT NULL,
	data_fim_disponibilidade date NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Marca_Carros (
	id_marca int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	marca varchar(100) NOT NULL,
	modelo varchar(100) NOT NULL,
	ano int(4) NOT NULL,
	categoria varchar(50) NOT NULL,
	cv int(5) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Funcionarios (
	id_funcionario int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	primeiro_nome varchar(100) NOT NULL,
	segundo_nome varchar(100) NOT NULL,
	telemovel int(12) NOT NULL,
	NIF int(20)NOT NULL, 
	UNIQUE KEY (NIF),
	UNIQUE KEY (telemovel)
) ENGINE=InnoDB;

CREATE TABLE Aluguer (
	id_aluguer int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	data_inicio_aluguer date NOT NULL,
	data_fim_aluguer date NOT NULL, 
	custo_final int(8) NOT NULL,
	custos_reparação int(8) NOT NULL,
	numero_km_feitos int(8)
) ENGINE=InnoDB;

CREATE TABLE Seguro (
	id_seguro int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	tipo_seguro varchar(100) NOT NULL,
	data_seguro date NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Carros (
id_carros int(9) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
matricula varchar(9) NOT NULL,
UNIQUE KEY (id_carros),
UNIQUE KEY (matricula)
) ENGINE=InnoDB;
*/
SET foreign_key_checks = 0;

/*ADICIONANDO HIPERLIGAÇÕES ENTRE AS VÁRIAS TABELAS*/
/*
ALTER TABLE `Carros` ADD CONSTRAINT `fk_Seguro` FOREIGN KEY ( `id_carros` ) REFERENCES `Seguro` ( `id_seguro` ) ;
ALTER TABLE `Carros` ADD CONSTRAINT `fk_marca_carros` FOREIGN KEY ( `id_carros` ) REFERENCES `marca_carros` ( `id_marca` ) ;
ALTER TABLE `Carros` ADD CONSTRAINT `fk_disponibilidade_veiculo` FOREIGN KEY ( `id_carros` ) REFERENCES `disponibilidade_veiculo` ( `id_disponibilidade` ) ;
ALTER TABLE `Carros` ADD CONSTRAINT `fk_aluguer` FOREIGN KEY ( `id_carros` ) REFERENCES `aluguer` ( `id_aluguer` ) ;
ALTER TABLE `Funcionarios` ADD CONSTRAINT `fk_funcionarios` FOREIGN KEY ( `id_funcionario` ) REFERENCES `Aluguer` ( `id_aluguer` ) ;
ALTER TABLE `Clientes` ADD CONSTRAINT `fk_clientes` FOREIGN KEY ( `id_cliente` ) REFERENCES `Aluguer` ( `id_aluguer` ) ;
*/

/* REMOVER TODOS OS DADOS DE UMA TABELA*/
/*
TRUNCATE TABLE clientes;
TRUNCATE TABLE disponibilidade_veiculo;
TRUNCATE TABLE marca_carros;
TRUNCATE TABLE funcionarios;
TRUNCATE TABLE seguro;
TRUNCATE TABLE aluguer;
TRUNCATE TABLE carros;*/


/*INSERIR DADOS NA TABELA ESPECIFICA*/
/*

insert into aluguer (data_inicio_aluguer, data_fim_aluguer, custo_final, custos_reparação, numero_km_feitos)
Values
('2016-07-21', '2020-05-15', '10200', '8520', '12000'),
('2017-05-15', '2018-06-25', '7500', '200', '21000'),
('2018-11-14', '2019-05-24', '8000', '1478', '20000'),
('2017-04-17', '2019-05-01', '9000', '3500', '25000'),
('2017-08-20', '2019-05-04', '10000', '3200', '20000');
insert into carros (matricula)
Values 
('86-YZ-14'),
('78-XV-87'),
('99-AA-00'),
('98-AD-87'),
('32-ER-47');

insert into clientes (primeiro_nome, segundo_nome, cidade, telemovel, morada, NIF, email, cod_postal)
Values 
('Zé', 'Melro', 'Lisboa', '931828127', 'Rua dos Lisboetas Nº9', '789784519', 'ze_melro@sapo.pt', '1254-252'),
('António', 'Jorge', 'Porto', '914785478', 'Rua dos Aliados nº2', '987451478', 'Antonio.jorge@hotmail.pt', '8748-987'),
('Paulo', 'Meira', 'Sagres', '965871538', 'Travessa do Reguengo nº4', '874125369', 'PaulinhoMeira@gmail.pt', '4578-231'),
('João', 'Paulo', 'Algarve', '912547638', 'Rua da ETAR nº2', '161364365', 'JoãoPaulino23@hotmail.pt', '2074-254'),
('Miguel', 'Duarte', 'Torres Vedras', '914789562', 'Rua 24 de Abril', '123568749', 'Miguel.Duartens@gmail.pt', '2560-352');

insert into disponibilidade_veiculo (data_inicio_disponibilidade, data_fim_disponibilidade)
Values 
('2020-12-16', '2021-07-23'),
('2017-11-16', '2011-02-12'),
('2012-02-14', '2011-02-21'),
('2010-10-16', '2015-07-27'),
('2015-09-16', '2017-07-28');

insert into marca_carros (marca, modelo, ano, categoria, cv)
Values 
('Opel', 'Corsa','1996', 'Ligeiro', '65'),
('Seat', 'Ibiza','2004', 'Ligeiro', '85'),
('Opel', 'Astra','2001', 'Ligeiro', '90'),
('Opel', 'Corsa','1999', 'Ligeiro', '75'),
('Audi', 'A3','2004', 'Ligeiro', '120');

insert into funcionarios (primeiro_nome, segundo_nome, telemovel, NIF)
Values 
('Maria', 'Conceição', '919292192', '493923892'),
('Joaquim', 'Pereira', '932178469', '845769123'),
('Miguel', 'Caldas', '914578236', '549687132'),
('Ivo', 'Santos', '912458639', '453216879'),
('João', 'Almeida', '964578312', '987254168');

insert into seguro (tipo_seguro, data_seguro)
Values
('Sem Coberturas', '2019-12-24'),
('Contra Todos os Riscos', '2017-11-18'),
('Sem Coberturas', '2016-10-01'),
('Contra Todos os Riscos', '2019-02-21'),
('Seguro de Vida', '2012-08-21');

*/



/*JOIN GROUP 1	
SELECT distinct A.custo_final AS 'Preco do Veículo' , A.custos_reparação AS 'Danos do Veículo'
FROM aluguer AS A 
JOIN carros AS C ON C.id_carros
*/
/*
JOIN GROUP 2
SELECT DISTINCT M_A.marca AS 'Marca' , M_A.modelo AS 'Modelo', A.custo_final AS 'Total a Pagar Pelo Carro'
FROM marca_carros AS M_A
JOIN aluguer AS A ON A.id_aluguer
*/


select id_marca, marca AS 'Marca',
lower(modelo) AS Modelo
from marca_carros order by marca;

/*
SELECT2
select ano AS 'Ano do Automóvel',
categoria AS 'Categoria'
from marca_carros order by ano;
*/

/*Consultas
select marca, modelo, cv
from marca_carros
where ano = '1999'
order by marca;

select primeiro_nome, segundo_nome, telemovel, email
from clientes
where cidade = 'Lisboa'
order by primeiro_nome;
*/
