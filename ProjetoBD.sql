Use projetobd;

/*DROP TABLE IF EXISTS Clientes;*/
<<<<<<< HEAD
/*DROP TABLE IF EXISTS disponibilidade_veiculo;*/
/*DROP TABLE IF EXISTS Marca_Carros;*/
/*DROP TABLE IF EXISTS Funcionarios;*/
/*DROP TABLE IF EXISTS Aluguer;*/
/*DROP TABLE IF EXISTS Seguro;*/
/*DROP TABLE IF EXISTS Carros;*/
=======
DROP TABLE IF EXISTS disponibilidade_veiculo;
DROP TABLE IF EXISTS Marca_Carros;
/*DROP TABLE IF EXISTS Funcionarios;*/
/*DROP TABLE IF EXISTS Aluguer;*/
DROP TABLE IF EXISTS Seguro;
DROP TABLE IF EXISTS Carros;
>>>>>>> ffa314499521778d6c5de306150fecf42acc5205

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
) engine=InnoDB;*/

/*CREATE TABLE Disponibilidade_Veiculo(
id_disponibilidade int (10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
data_inicio_disponibilidade date NOT NULL,
data_fim_disponibilidade date NOT NULL
)ENGINE=InnoDB;*/

<<<<<<< HEAD
/*CREATE TABLE Marca_Carros (
=======

CREATE TABLE Marca_Carros (
>>>>>>> ffa314499521778d6c5de306150fecf42acc5205
  id_marca int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  marca varchar(100) NOT NULL,
  modelo varchar(100) NOT NULL,
  ano int(4) NOT NULL,
  categoria int(12) NOT NULL,
  cv int(5) NOT NULL
) ENGINE=InnoDB;*/

<<<<<<< HEAD
=======

>>>>>>> ffa314499521778d6c5de306150fecf42acc5205
/*CREATE TABLE Funcionarios (
  id_funcionario int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  primeiro_nome varchar(100) NOT NULL,
  segundo_nome varchar(100) NOT NULL,
  telemovel int(12) NOT NULL,
  NIF int(20)NOT NULL, 
  UNIQUE KEY (NIF)
<<<<<<< HEAD
) ENGINE=InnoDB;*/
=======
) ENGINE=InnoDB;
*/
>>>>>>> ffa314499521778d6c5de306150fecf42acc5205

/*CREATE TABLE Aluguer (
  id_aluguer int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  data_inicio_aluguer date NOT NULL,
  data_fim_aluguer date NOT NULL, 
  custo_final decimal(8,8) NOT NULL,
  custos_reparação decimal(8,8) NOT NULL,
  numero_km_feitos int(8),
  FOREIGN KEY (id_aluguer) REFERENCES Clientes(id_cliente),
  FOREIGN KEY (id_aluguer) REFERENCES Funcionarios(id_funcionario)
<<<<<<< HEAD
  ) ENGINE=InnoDB;*/

/*CREATE TABLE Seguro (
=======
  ) ENGINE=InnoDB;
  */
  
CREATE TABLE Seguro (
>>>>>>> ffa314499521778d6c5de306150fecf42acc5205
  id_seguro int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  tipo_seguro varchar(100) NOT NULL,
  data_seguro date NOT NULL,
  FOREIGN KEY (id_seguro) REFERENCES Carros (matricula),
) ENGINE=InnoDB;*/

<<<<<<< HEAD
/*CREATE TABLE Carros (
=======

CREATE TABLE Carros (
>>>>>>> ffa314499521778d6c5de306150fecf42acc5205
matricula int(8) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
FOREIGN KEY (matricula) REFERENCES Aluguer(id_aluguer),
FOREIGN KEY (matricula) REFERENCES Marca_carros(id_marca),
FOREIGN KEY (matricula) REFERENCES Seguro (id_seguro),
<<<<<<< HEAD
FOREIGN KEY (matricula) REFERENCES disponibilidade_veiculo (id_disponibilidade)
) ENGINE=InnoDB;*/
=======
FOREIGN KEY (matricula) REFERENCES Disponibilidade_Veiculo (id_disponibilidade)
) ENGINE=InnoDB;
>>>>>>> ffa314499521778d6c5de306150fecf42acc5205

