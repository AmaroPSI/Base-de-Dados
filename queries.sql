USE loja_online;


/*12*/
SELECT id,nome, timestampdiff(YEAR,data_nascimento,now())AS idade,genero
FROM clientes
WHERE genero = "M"
ORDER BY data_nascimento DESC;

/*13*/
/*select id, nome, timestampdiff(year,data_registo,now()) as anosRegisto
from clientes
where timestampdiff(day,data_registo,now()) > 5000 
order by data_registo asc;*/