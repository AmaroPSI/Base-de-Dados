Use projetobd;

/*DROP TABLE IF EXISTS Clientes;*/
DROP TABLE IF EXISTS disponibilidade_veiculo;
DROP TABLE IF EXISTS Marca_Carros;
/*DROP TABLE IF EXISTS Funcionarios;*/
DROP TABLE IF EXISTS Aluguer;
DROP TABLE IF EXISTS Seguro;
/*DROP TABLE IF EXISTS Carros;/*

/*CREATE TABLE Clientes (
  id_cliente int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  primeiro_nome varchar(100) NOT NULL,
  segundo_nome varchar(100) NOT NULL,
  cidade varchar(50),
  telemovel int(12) NOT NULL,
  morada varchar(500),
  NIF int(20),
  email varchar(100),
  cod_postal decimal(8,8) NOT NULL
) engine=InnoDB;

*/
CREATE TABLE Disponibilidade_Veiculo(
id_disponibilidade int (10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
data_inicio_disponibilidade date NOT NULL,
data_fim_disponibilidade date NOT NULL
)ENGINE=InnoDB;

CREATE TABLE Marca_Carros (
  id_marca int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  marca varchar(100) NOT NULL,
  modelo varchar(100) NOT NULL,
  ano int(4) NOT NULL,
  categoria int(12) NOT NULL,
  cv int(5) NOT NULL
) ENGINE=InnoDB;

/*CREATE TABLE Funcionarios (
  id_funcionario int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  primeiro_nome varchar(100) NOT NULL,
  segundo_nome varchar(100) NOT NULL,
  telemovel int(12) NOT NULL,
  NIF int(20)NOT NULL, 
  UNIQUE KEY (NIF)
) ENGINE=InnoDB;*/

CREATE TABLE Aluguer (
  id_aluguer int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  data_inicio_aluguer date NOT NULL,
  data_fim_aluguer date NOT NULL, 
  custo_final decimal(8,8) NOT NULL,
  custos_reparação decimal(8,8) NOT NULL,
  numero_km_feitos int(8),
  FOREIGN KEY (id_aluguer) REFERENCES Clientes(id_cliente),
  FOREIGN KEY (id_aluguer) REFERENCES Funcionarios(id_funcionario)
  ) ENGINE=InnoDB;

CREATE TABLE Seguro (
  id_seguro int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  tipo_seguro varchar(100) NOT NULL,
  data_seguro date NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Carros (
matricula int(8) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
FOREIGN KEY (matricula) REFERENCES Aluguer(id_aluguer)
) ENGINE=InnoDB;


