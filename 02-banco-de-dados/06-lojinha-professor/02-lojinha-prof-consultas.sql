use lojinhaprof;

## 01/09/2023

/* 1 -Listar todos os produtos com as respectivas descrições, unidades e valores unitários,
obtendo o  seguinte resultado (SELECT simples sem WHERE com especificação de todos os campos): */
select p.descricao as 'Descrição',
p.unidade as 'Unidade', p.valor as 'Valor Unitário'
from produto p order by p.descricao; #Ordem pode mudar se não usar orderby


/* 2 - Listar da tabela CLIENTE o CNPJ, o nome do cliente e seu endereço,
obtendo o seguinte  resultado (idem com especificação de parte dos campos): */
select cl.cnpj as 'CNPJ', cl.nome as 'CLIENTE',
concat(cl.endereco, ' - ',cd.nome, ' / ', es.uf) as 'ENDEREÇO'
/*cl.endereco as 'ENDEREÇO',cd.nome as 'CIDADE', es.nome as 'ESTADO' - Outro jeito de fazer*/ 
from cliente cl
join cidade cd on (cd.codigo = cl.codigoCidade)
join estado es on (es.codigo = cd.codigoEstado)
order by cl.nome asc;


/* 3 - Listar todo o conteúdo de vendedor, obtendo o seguinte resultado
(SELECT sem a especificação de campos – coringa *): */
select * from vendedor;


/* 4 - Problema: Listar o numero do pedido, o código do produto e a quantidade dos itens do pedido
com a quantidade igual a 35 da tabela item de pedido, obtendo o seguinte resultado (SELECT com
WHERE): */
select
	p.descricao as 'PRODUTO',
    pp.numeroPedido as 'PEDIDO',
    pp.qtde as 'QTDE'
from
	pedido_produto pp
join
	produto p on (p.codigo = pp.codigoProduto)
where
	pp.qtde = 35;


/* 5 - Quais são os clientes que moram em Niterói? */

#Meu primeiro jeito - não ideal, melhor usar o nome da cidade
select * from cliente;

select * from cidade where nome = 'Niterói';
select cl.nome from cliente cl where codigoCidade = 3634 order by nome asc;

#Jeito que o professor ensinou - como join mas mais simples, melhor join
select cl.nome as 'CLIENTE' from cliente cl, cidade cd
where cl.codigoCidade = cd.codigo
and cd.nome = 'niteroi'
order by cl.nome asc;

#Jeito com join - a melhor opção
select cl.nome as 'CLIENTE'
from cliente cl
join cidade cd on (cd.codigo = cl.codigoCidade)
where cd.nome = 'Niterói'
order by cl.nome asc;


/* 6 - Listar os produtos que tenham unidade igual a ‘M’ e valor unitário igual a R$ 1,05 da tabela
produto, obtendo o seguinte resultado (operadores lógicos): */
select * from produto;

select p.descricao, p.unidade, p.valor  #Professor disse que não precisava colocar as aqui
from produto p #Sempre melhor com alias, é mais legível
where unidade = 'M' and valor = 1.05;


/* 7 - Listar o código e a descrição dos produtos que tenham o valor unitário na faixa de R$ 0,32 até R$
2,00, obtendo o seguinte resultado (operador between): */
select * from produto;

select codigo as 'Código', descricao as 'Descrição', valor #Bom colocar valor para testar se está certo
from produto
where valor between 0.32 and 2.00;


/* 8 - Listar todos os produtos que tenham o seu nome começando por Q, obtendo o seguinte resultado
(operador LIKE, com os coringas _ - um caractere - e % - vários caracteres): */
select * from produto;

select codigo, descricao
from produto
where descricao like 'Q%';

select * from produto
where descricao like 'q%';

select * from produto p
where p.descricao like 'q%';


/* 9 - Listar os vendedores que não começam por ‘Jo’, , obtendo o seguinte resultado (operador LIKE,
com os coringas _ - um caractere - e % - vários caracteres): */

select * from vendedor v
where v.nome
not like 'jo%' #Not like é o oposto de like, tem que começar diferente de Jo
order by v.nome;


/* 10 - Listar os vendedores que são da faixa de comissão A e B,
obtendo o seguinte resultado (operadores IN e um conjunto de valores): */
select * from vendedor v
where v.faixaComissao
in ('A','B') #In - que é igual a uma entre várias opções
order by v.nome asc; 


/* 11 - Mostrar os clientes que não tenham inscrição estadual, obtendo o seguinte resultado (IS NULL): */
select * from cliente cl
where cl.ie is null;

/* 12 - Mostrar em ordem alfabética a lista de vendedores e seus respectivos salários fixos,
obtendo o seguinte resultado (ORDER BY [ASC/DESC]): */

select * from vendedor;

select v.nome as 'FUNCIONÁRIO', v.salario as 'SALÁRIO ATUAL',
(v.salario * 1.0675) as'SALÁRIO SIMULADO' #Pode usar matemática para mostrar dados específicos
from vendedor v order by v.nome asc; 

/* 13 - Listar os nomes, cidades e estados de todos os clientes, ordenados por estado e cidade de forma
descendente, obtendo o seguinte resultado (operador ORDER BY com mais de um campo especificado): */
select c.nome as 'Nome', e.nome as 'Estado', cd.nome as 'Cidade'
from cliente c
join cidade cd on (cd.codigo = c.codigoCidade)
join estado e on (e.codigo = cd.codigoEstado)
order by e.nome desc, cd.nome desc;


/* 14 - Mostrar a descrição e o valor unitário de todos os produtos que tenham a unidade ‘KG’, em ordem
de valor unitário ascendente, obtendo o seguinte resultado (ORDER BY): */
select p.descricao as 'Descrição', p.valor as 'Valor unitário'
from produto p
where p.unidade = 'M'
#where p.unidade = 'Kg' or p.unidade = 'M' - pode usar and e or, se eu quisesse o de Kg e de M juntos
order by valor asc
limit 2; #limita o número de dados que aparecem

desc produto; #Melhor desc ao invés de select * e select só o que quero se a base for muito grande


/* 15 - Mostrar o novo salário fixo dos vendedores, de faixa de comissão ‘C’, calculado com base no
reajuste de 75% acrescido de R$ 120,00 de bonificação. Ordenar pelo nome do vendedor, obtendo
o seguinte resultado (coluna calculda): */
select v.nome as 'Nome do vendedor', ((salario * 1.75) + 120) as 'Novo salário' #() para priorizar na Matemática
from vendedor v
where v.faixaComissao = 'C'
order by v.nome asc;


/* 16 - Mostrar o menor e o maior salários da tabela vendedores, obtendo o seguinte resultado
(funções MAX() e MIN()): */
select max(v.salario) as 'Maior salário', min(v.salario) as 'Menor salário'
from vendedor v;

desc vendedor;


## 04/09/2023


/*Tipos de join:
- Join - genérico, combina o que for especificado (mesma coisa que inner join)
- Inner join - retorna o que as tabelas têm em comum (se os elementos/chaves são iguais)
- Left join - inner join + o que está na tabela da esquerda (mesmo que não tenha igual na tabela da direita)
- Right join - inner join + o que está na tabela da direita (mesmo que não tenha igual na tabela da esquerda)
- Full join - inner join + left join + right join
(retorna todas as linhas de ambas as tabelas, mesmo que não haja correspondências entre elas + nulo onde não tem correspondência)
- Cross join - retorna todas as combinações possíveis entre os elementos das tabelas
(mesmo que não haja correspondências entre as combinações no banco de dados)
- Left excluding join - left join só com null, sem inner join
- Right excluding join - right join só com null, sem inner join
*/


/* 17 - Mostrar a quantidade total pedida para o produto ‘VINHO’ de código ‘78’ na tabela item de
pedido, obtendo o seguinte resultado (função SUM() com cláusula WHERE): */
select * from produto where codigo = 78;
select sum(qtde) as 'QTDE VINHOS VENDIDOS' from pedido_produto pp where pp.codigoProduto = 78;
#Função sum soma números que estão na coluna selecionada da tabela


/* 18 - Qual a média dos salários fixos dos vendedores (função AVG())? */
select avg(salario) as 'Média salarial', count(*) as 'QTDE'
from vendedor;


/* 19 - Quantos vendedores ganham acima de R$ 2.500,00 de salário fixo (função COUNT() com
cláusula WHERE)? */
select count(*) as 'Total' #Função count conta ocorrências
from v vendedor
where v.salario > 2500;


/* 20 - Quais são as unidades de produtos, diferentes, na tabela produto (cláusula DISTINCT)? */
select distinct(unidade)
from produto; #Comando distinct não permite repetição


/* 21 - Listar a quantidade de produtos que cada pedido contém. */
desc pedido; #Não diz quantos pedidos têm
desc pedido_produto; #Qtde produtos estão aqui, juntar as 2

#Forma sem join
select pp.numeroPedido as 'Pedido', count(pp.qtde) as 'Qtde'
#Faltou o count quando eu tentei
from pedido_produto pp
group by pp.numeroPedido order by pp.numeroPedido;

#Forma com join de pedido e pedido_produto
select p.numero as 'Pedido', count(pp.qtde) as 'Qtde'
from pedido p
join pedido_produto pp on (p.numero = pp.numeroPedido)
group by p.numero order by p.numero;


/* 22 - Listar os pedidos que tem mais de três produtos. */
select pp.numeroPedido as 'Pedido', count(pp.qtde) as 'Qtde'
from pedido_produto pp
group by pp.numeroPedido
having count(pp.qtde) > 3; #Having é "um where" para funções com agrupamento


/* 23 - Ver os pedidos de cada cliente, listando nome do cliente e número do pedido (INNER JOIN). */
desc cliente;
desc pedido;

select c.nome as 'Cliente', p.numero as 'Pedido'
from cliente c
inner join pedido p on (c.codigo = p.codigoCliente)
order by c.nome;


/* 24 - Listar a junção de clientes com pedidos (CROSS JOIN). */
select c.nome as 'Cliente', p.numero as 'Pedido'
from cliente c
cross join pedido p
order by c.nome;


/* 25 - Listar todos os clientes com seus respectivos pedidos. Os clientes que não têm pedidos também
devem ser apresentados (OUTER JOIN). */
desc cliente;
desc pedido;

select c.nome as 'Cliente', p.numero as 'Pedido' from cliente c
left join pedido p on (c.codigo = p.codigoCliente)
order by c.nome;
#Edmar null porque não fez pedido, mas está na tabela cliente - left join = inner join + tudo de cliente

select * from cliente where nome = 'Edgar';
select * from pedido where codigoCliente = 130;

desc pedido;
desc pedido_produto;
show tables;
desc produto;


## 05/09/2023

#Quantidade de cidades de SP que não tem clientes que compram de mim
#cliente cidade is null onde são sp
select * from cliente;
select * from cidade;

#select count(ci.nome) as 'Número de cidades'
select e.nome, cl.nome #Mostra nome do estado (SP) e os clientes (null)
from cliente cl
right join cidade ci on cl.codigoCidade = ci.codigo #Junta todas as cidades com os clientes que têm o código da cidade
join estado e on ci.codigoEstado = e.codigo #Junta estado com cidade onde cidade
where e.uf = 'SP' and cl.nome is null #tem a mesma chave que o estado de São Paulo e cliente é null
;

select * from estado where uf = 'SP';
select count(*) from cidade where codigoEstado = 26;

#select * from cliente c where codigoCidade in (select codigo from cidade wherew codigoEstado = 26)

#where not city = 'Berlin'

## 06/09/2023 Em outro arquivo - ScriptProfSubconsultas

## 11/09/2023

/* 26 - Clientes com prazo de entrega superior a 15 dias e que pertençam aos estados de São Paulo ou Rio
de Janeiro (INNER JOIN com WHERE). */
select distinct (c.nome), cd.nome from cliente c #distinct pega os diferentes nomes, não pedidos - bota esse no final
inner join pedido p on (c.codigo = p.codigoCliente and p.prazo > 15)
inner join cidade cd on (cd.Codigo = c.codigoCidade)
inner join estado e on (cd.codigoEstado = e.codigo and e.uf in ('SP', 'RJ'))
order by c.nome;


/* 27 - Mostrar os clientes e seus respectivos prazos de entrega, ordenando do maior para o menor. */
desc cliente;
desc pedido;

select distinct (c.nome) as 'Cliente', p.prazo as 'Prazo' from cliente c
inner join pedido p on (c.codigo = p.codigoCliente)
order by prazo desc; #A Ana repete porque tem pedidos de 15 e de 20 dias


/* 28 - Modifique o exemplo acima para apresentar apenas prazos de entrega diferentes para cada cliente. */
select distinct (p.prazo) as 'Prazo', c.nome as 'Cliente' from cliente c
inner join pedido p on (c.codigo = p.codigoCliente)
order by prazo desc; #A Ana repete porque tem pedidos de 15 e de 20 dias


/* 29 - Apresentar os vendedores, em ordem alfabética, que emitiram pedidos com prazos de entrega superiores a 15 dias
e que tenham salários fixos iguais ou superiores a R$ 1.000,00. */
desc vendedor;
desc pedido;

select distinct (v.nome) as 'Vendedor', v.salario as 'Salário' 
from vendedor v
inner join pedido p on (v.codigo = p.codigoVendedor and p.prazo > 15)
where v.salario >= 1000
order by v.nome;

/* Desafio - Modifique 29 usando subconsulta. */
#O melhor é usar join porque subconsulta é mais pesada, mas usar subconsulta quando não conseguir usar join
select * from pedido;

select v.nome as 'Vendedor', v.salario as 'Salário' from vendedor v
where v.salario >= 1000 #11, 101, 209, 240, 250, 720, 111
and v.codigo in (select distinct (codigoVendedor) from pedido where prazo > 15)
order by v.nome;
use lojinhaprof;


/* 30 - Mostre os clientes, em ordem alfabética, que têm prazo de entrega maior que
15 dias para o produto Queijo e que sejam do Rio de Janeiro. */
select cl.nome as 'Cliente', pd.prazo as 'Prazo', e.nome as 'Estado'
from cliente cl
inner join cidade cd on (v.codigo = p.codigoVendedor and p.prazo > 15)

;

desc cliente; #cl;
desc cidade; #cd;
desc estado; #e;
desc pedido; #pd;
desc produto; #pr;


/*Uma View é uma tabela virtual com base no conjunto de resultados de uma consulta SQL. Pré-trabalho organizado para consulta recorrente.
  Editar valores da tabela view também altera o valor da tabela física (de origem). */

create or replace view cliente_cidades as
select c.codigo as 'Código', c.nome as 'Cliente', cd.nome as 'Cidade'
from cliente c
join cidade cd on (c.codigoCidade = cd.codigo)
order by c.nome;

select * from cliente_cidades;
select cliente from cliente_cidades;
select * from cliente_cidades where cidade = 'São Paulo';

/* Crie 3 views sobre a base de dados utilizada na última atividade.
Entregar o arquivo SQL pelo drive separadamente até 12h. Atividade Individual*/

/*
Milena Fontana Bregalda - 11/09/2023

Crie 3 views sobre a base de dados utilizada na última atividade.
Entregar o arquivo SQL pelo drive separadamente até 12h. Atividade Individual. */

use lojinhaProf;

#View 1
create or replace view infoClientes as
	select cl.nome as 'Cliente', cd.nome as 'Cidade', e.nome as 'Estado'
	from cliente cl
	inner join cidade cd on (cl.codigoCidade = cd.codigo)
	inner join estado e on (cd.codigoEstado = e.codigo)
	order by cl.nome;

select * from infoClientes;


#View 2
create or replace view vendedor_pedido as
	select distinct (v.nome) as 'Vendedor', p.numero as 'Número do pedido'
	from vendedor v
	inner join pedido p on (v.codigo = p.codigoVendedor);
    
select * from vendedor_pedido;


#View 3
create or replace view vendedor_salario as
	select v.nome as 'Vendedor', v.salario as 'Salário' from vendedor v
	where v.salario >= 1000 #11, 101, 209, 240, 250, 720, 111
	and v.codigo in (select distinct (codigoVendedor) from pedido where prazo > 15)
	order by v.nome;
    
select * from vendedor_salario;