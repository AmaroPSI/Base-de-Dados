/*CDBD_T2_G1
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
DROP TABLE IF EXISTS Carros;*/

/*CRIAÇÃO DAS TABELAS*/
/*
CREATE TABLE Clientes (
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
) ENGINE=InnoDB;*/

SET foreign_key_checks = 0;

/*ADICIONANDO IPERLIGAÇÕES ENTRE AS VÁRIAS TABELAS*/
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

insert into clientes (primeiro_nome, segundo_nome, cidade, telemovel, morada, NIF, email, cod_postal)
Values ('Cristiano', 'Reinaldo', 'Aveiro City', '911717171', 'Rua dos patinhos Nº17', '234234232', 'cristiano_reinaldo@sapo.pt', '2322-123');

insert into disponibilidade_veiculo (data_inicio_disponibilidade, data_fim_disponibilidade)
Values ('2018-05-01', '2018-07-01');

insert into marca_carros (marca, modelo, ano, categoria, cv)
Values ('Seat', 'Passat','2001', 'Carrinha', '130');

insert into funcionarios (primeiro_nome, segundo_nome, telemovel, NIF)
Values ('Pequeno', 'Messi', '911223177', '234412232');

insert into seguro (tipo_seguro, data_seguro)
Values ('Todas as coberturas', '2018-01-01');

insert into carros (matricula)
Values ('12-PT-43');

insert into aluguer (data_inicio_aluguer, data_fim_aluguer, custo_final, custos_reparação, numero_km_feitos)
Values ('2018-05-01', '2038-07-01', '15550', '12000', '10000');