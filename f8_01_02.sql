USE loja_online;



/*SELECT produtos.nome,produtos_vendidos.preco_unitario, produtos_vendidos.numero_unidades, produtos_vendidos.numero_unidades * produtos_vendidos.preco_unitario as 'Quanto pagou o cliente'
FROM produtos join produtos_vendidos on produtos.id = produtos_vendidos.id_produto
WHERE produtos_vendidos.id_venda = 7
ORDER BY 4;

SELECT distinct produtos.nome, produtos_vendidos.id_produto
FROM produtos join produtos_vendidos on produtos.id = produtos_vendidos.id_produto
WHERE produtos.marca is not null
*/