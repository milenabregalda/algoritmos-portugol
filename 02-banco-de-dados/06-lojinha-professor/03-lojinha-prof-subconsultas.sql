use lojinhaProf;

# exemplo de consultas de clientes 
select * from estado where uf = 'RS';
select * from cidade where codigoEstado = (select codigo from estado where uf = 'RS');

#para selecionar mais de um estado:
select codigo from estado where uf in ('RS','SC');
select * from cidade where codigoEstado in (select codigo from estado where uf in ('RS','SC'));

#consultar os clientes da cidade de São Paulo
select * from cliente where codigo in (select codigo from cidade where nome = 'São Paulo');

select * from vendedor;
update vendedor 
set nome = 'João 2' where codigo = 11;

#consultar o vendedor 
update vendedor set nome = 'João II', salario = 10000.00, faixaComissao = 'A' where codigo = 11;

select count(*) as 'QTDE', avg (prazo) as 'PRAZO MÉDIO' from pedido 
where codigoVendedor = (select codigo from vendedor where nome = 'João 2'); 

create table teste(
	id int primary key auto_increment,
	idCliente int not null,
	idCidade int not null
);

desc teste;
select * from teste;
insert into teste (idCliente,idCidade) (select c.codigo, cd.codigo from cliente c, cidade cd
where c.codigoCidade = cd.codigo);
desc pedido;
desc cliente;
select c.nome as 'Cliente',count(ped.numero) as 'Número de Pedido', sum(pp.qtde*pro.valor) as 'Valor Total'
from cliente c
join pedido ped on (ped.codigoCliente = c.codigo)
join pedido_produto pp on (pp.numeroPedido = ped.Numero)
join produto pro on (pp.codigoProduto = pro.codigo)
group by c.nome
order by Valor desc;

/*select sum(valor) as 'Valor total dos Pedido' from pedido_produto pp where pp.codigoProduto 
order by c.nome asc;*/

/*select * from  vendedor v order by v.nome desc;
select v.nome as'FUNCIONARIO',v.salario as 'SALÁRIO ATUAL', (v.salario*1.00675) as 'SALÁRIO SIMULADO'
from vendedor v order by v.nome asc;*/