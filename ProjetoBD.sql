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

/*CREATE TABLE Clientes (
  id_cliente int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  primeiro_nome varchar(100) NOT NULL,
  segundo_nome varchar(100) NOT NULL,
  cidade varchar(50),
  telemovel int(12) NOT NULL,
  morada varchar(500),
  NIF int(20),
  email varchar(100),
  cod_postal int(10) NOT NULL,
  Unique key(telemovel,email,NIF)
) engine=InnoDB;*/

/*CREATE TABLE Disponibilidade_Veiculo(
id_disponibilidade int (10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
data_inicio_disponibilidade date NOT NULL,
data_fim_disponibilidade date NOT NULL
)ENGINE=InnoDB;*/

/*CREATE TABLE Marca_Carros (
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
  UNIQUE KEY (NIF, telemovel)
) ENGINE=InnoDB;

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
  data_seguro date NOT NULL,
  FOREIGN KEY (id_seguro) REFERENCES Carros (matricula)
) ENGINE=InnoDB;

CREATE TABLE Carros (
matricula int(9) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
FOREIGN KEY (matricula) REFERENCES Aluguer(id_aluguer),
FOREIGN KEY (matricula) REFERENCES Marca_carros(id_marca),
FOREIGN KEY (matricula) REFERENCES Seguro (id_seguro),
FOREIGN KEY (matricula) REFERENCES disponibilidade_veiculo (id_disponibilidade),
Unique Key(matricula)
) ENGINE=InnoDB;*/

insert into Clientes (primeiro_nome, segundo_nome, cidade, telemovel, morada, NIF, email, cod_postal)
Values ('Vitor', 'Ferreira', 'Mafra', '917777779', 'Rua das Travessas Nº40', '123123543', 'vitor|ferreira@hotmail.com', '2535324');

insert into Disponibilidade_Veiculo (data_inicio_disponibilidade, data_fim_disponibilidade)
Values ('2018-05-01', '2018-07-01');

insert into Marca_Carros (marca, modelo, ano, categoria, cv)
Values ('Volkswagen', 'Golf IV','1999', 'Ligeiro', '110');

insert into Funcionarios (primeiro_nome, segundo_nome, telemovel, NIF)
Values ('Nuno', 'Alves', '917777777', '422525202');

insert into Aluguer (data_inicio_aluguer, data_fim_aluguer, custo_final, custos_reparação, numero_km_feitos)
Values ('2018-07-01', '2018-09-01', '1250', '250', '120000');

insert into Seguro (tipo_seguro, data_seguro)
Values ('Todos os riscos', '2018-07-01');

insert into Carros (matricula)
Values ('12-AH-12');
