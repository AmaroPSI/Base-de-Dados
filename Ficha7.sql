CREATE DATABASE IF NOT EXISTS exercicio2;
USE exercicio2;

DROP TABLE IF EXISTS  produtos ;
DROP TABLE IF EXISTS  vendedores ;
DROP TABLE IF EXISTS  clientes ;

CREATE TABLE produtos (
  id int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  quantidade int(10) NOT NULL, 
  preco decimal(7,2) NOT NULL, 
  obs varchar(500),
  UNIQUE KEY (id)
) ENGINE=InnoDB;

CREATE TABLE vendedores (
  id_vendedor int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  nome_vendedor varchar(100) NOT NULL,
  nif int(10) NOT NULL, 
  UNIQUE KEY (id_vendedor)
) ENGINE=InnoDB;

CREATE TABLE clientes (
  id_cliente int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  nif int(10) NOT NULL,
  UNIQUE KEY (id_cliente)
) ENGINE=InnoDB;

