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

Exercicio4
SELECT distinct p.nome
from produtos_vendidos pv join produtos p on p.id=pv.id_produto
WHERE upper(p.nome) like '%SMART%';

Exercicio5
select distinct p.nome as 'Nome',vendas.data as 'Data de Venda',pv.preco_unitario as 'Preco da Venda', p.preco as 'Preco Atual'
from produtos p join produtos_vendidos pv on pv.preco_unitario
join vendas on pv.id_venda = vendas.id 
where (year(vendas.data)= 2017 and (pv.preco_unitario <= p.preco * 0.9))
order by p.nome asc;

Exercicio 6
select distinct p.marca as 'Marca', p.preco'Preço'
from produtos p join produtos_vendidos pv on pv.preco_unitario
where p.preco > 500;
*/

