USE loja_online;


/*EXERCICIO 1
SELECT produtos.nome,produtos_vendidos.preco_unitario, produtos_vendidos.numero_unidades, produtos_vendidos.numero_unidades * produtos_vendidos.preco_unitario as 'Quanto pagou o cliente'
FROM produtos join produtos_vendidos on produtos.id = produtos_vendidos.id_produto
WHERE produtos_vendidos.id_venda = 7
ORDER BY 4;

EXERCICIO 2
SELECT distinct produtos.nome, produtos_vendidos.id_produto
FROM produtos join produtos_vendidos on produtos.id = produtos_vendidos.id_produto
WHERE produtos.marca is not null

EXERCICIO 3
select distinct produtos.nome
from produtos join produtos_vendidos on produtos.id = produtos_vendidos.id_produto
join vendas on produtos_vendidos.id_venda = vendas.id
where year(current_date()) - year (vendas.data) <= 1
order by produtos.preco asc;
*/
SELECT produtos.nome
from produtos join produtos_vendidos on produtos.nome
WHERE nome(produtos_vendidos) = 'SmartGadjets';