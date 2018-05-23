/* Cod */
Use projetobd;

DROP TABLE IF EXISTS Clientes;
DROP TABLE IF EXISTS categoria_produtos;
DROP TABLE IF EXISTS Funcionarios;
DROP TABLE IF EXISTS Aluguer;

CREATE TABLE Clientes (
  id_cliente int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  primeiro_nome varchar(100) NOT NULL,
  segundo_nome varchar(100) NOT NULL,
  cidade varchar(50),
  telemovel int(12) NOT NULL,
  morada varchar(500),
  NIF int(20)NOT NULL,
  email varchar(100),
  cod_postal decimal(8,8) NOT NULL, 
  UNIQUE KEY (NIF)
) ENGINE=InnoDB;

CREATE TABLE Funcionarios (
  id_funcionario int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  primeiro_nome varchar(100) NOT NULL,
  segundo_nome varchar(100) NOT NULL,
  telemovel int(12) NOT NULL,
  NIF int(20)NOT NULL, 
  UNIQUE KEY (NIF)
) ENGINE=InnoDB;

CREATE TABLE Aluguer (
  id_aluguer int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  data_inicio_aluguer date NOT NULL,
  data_fim_aluguer date NOT NULL, 
  custo_final decimal(8,8) NOT NULL,
  custos_reparação decimal(8,8) NOT NULL,
  numero_km_feitos int(8)
) ENGINE=InnoDB;
/*
CREATE TABLE categoria_produtos(
id int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
nome varchar(100) NOT NULL,
obs varchar(500)
)ENGINE=InnoDB;