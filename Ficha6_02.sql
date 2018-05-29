USE loja_online;

DROP TABLE IF EXISTS produtos_vendidos;
DROP TABLE IF EXISTS vendas;


CREATE TABLE vendas(
  id int(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  data DATE NOT NULL,
  obs varchar(500)
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

