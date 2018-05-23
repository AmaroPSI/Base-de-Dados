/* Cod */
Use projetobd;

DROP TABLE IF EXISTS Clientes;
DROP TABLE IF EXISTS categoria_produtos;

CREATE TABLE Clientes (
  id_cliente int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  primeiro_nome varchar(100) NOT NULL,
  segundo_nome varchar(100) NOT NULL,
  cidade varchar(50),
  telemovel int(12) NOT NULL,
  morada varchar(500),
  NIF int(20),
  email varchar(100),
  cod_postal decimal(8,8) NOT NULL, 
  UNIQUE KEY (NIF)
) ENGINE=InnoDB;
/*
CREATE TABLE categoria_produtos(
id int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
nome varchar(100) NOT NULL,
obs varchar(500)
)ENGINE=InnoDB;