INSERT INTO vendas (data,obs) VALUES
(STR_TO_DATE('2016-12-13','%Y-%m-%d'),'Primeira venda da Vorten!?'),
(STR_TO_DATE('2016-12-14','%Y-%m-%d'),NULL),
(STR_TO_DATE('2016-12-30','%Y-%m-%d'),'Deu-se uma reclamação motivada por preço mal assinalado.'),
(STR_TO_DATE('2016-12-31','%Y-%m-%d'),'Cliente reclamou porque as renas do Pai Natal estão estacionadas em segunda fila.'),
(STR_TO_DATE('2017-01-03','%Y-%m-%d'),'Cliente reclamou por considerar o preço da depiladora muito baixo.'),
(STR_TO_DATE('2017-01-03','%Y-%m-%d'),NULL),
(STR_TO_DATE('2017-02-01','%Y-%m-%d'),'O cliente reclamou porque as filas na loja estavam muito grandes.'),
(STR_TO_DATE('2017-02-04','%Y-%m-%d'),'Cliente esqueceu-se da carteira na caixa POS');

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