##SEMPRE EXECUTAR O COMANDO USE QUANDO ABRIR O SERVIDOR

##AULA 1 21.08.23

#criando meu banco de dados
create database aula_2108; #melhor em minúsculo por enquanto, para criar banco de dados
use aula_2108; #para entrar no banco
#drop database aula_2108; #deleta todo o banco, muito cuidado para usar

create table cliente( #para criar tabela
	id int primary key not null auto_increment,
    #not null redundante por causa do auto_increment, mas é bom colocar mesmo assim por causa do modelo lógico
    nome varchar(255) not null,
    idade int null unique
    #null - porque pode ser nulo, botando nada é null também
    #default - se não informar a idade, a idade é igual ao padrão de 25
    #unique - caso idade for um valor único, mais útil pra por ex cpf
);

desc cliente; #mesma coisa que describe, mostra a tabela

#drop table cliente; #deleta a tabela

create table categoria(
	id int primary key auto_increment,
    nome varchar(45) not null
);
desc categoria;

#melhor criar tabela só com chave primária e depois passá-la como estrangeira pra outra,
#mas dependendo do caso, alter table (aula 2)
create table produto(
	id int primary key not null auto_increment,
    nome varchar(45) not null,
    preco float(10,2),
    idCategoria int not null,
    foreign key(idCategoria) references categoria(id) #transforma idCategoria em chave estrangeira
);
desc produto;

create table pedido(
	id int primary key not null auto_increment,
    numero int not null unique,
	dataPedido datetime,
    idCliente int not null,
    foreign key(idCliente) references cliente(id)
);
desc pedido;

##AULA 2 22.08.23

alter table categoria
change nomeCategoria nome varchar(100) not null; #para modificar um atributo já existente na tabela, como nome tipo se é null etc.
#posso colocar nome nome e mudar o varchar e/ou o (not) null se quiser só mudar uma característica específica

create table pedido_produto(
	idPedido int not null,
    idProduto int not null,
    qtde int not null
);

alter table pedido_produto
add constraint fk_pedido foreign key (idPedido) references pedido(id),
add constraint fk_produto foreign key (idProduto) references produto(id);
#para adicionar uma chave estrangeira a uma coluna de uma tabela já existente

alter table pedido
add column idUsuario int not null; #para adicionar uma nova coluna a uma tabela já existente

create table usuario(
	id int primary key not null auto_increment,
    nome varchar(45) not null
);

alter table pedido
add constraint fk_usuario foreign key (idUsuario) references usuario(id);

alter table pedido_produto
drop column qtde; #para deletar uma coluna de uma tabela

desc pedido_produto;

alter table pedido_produto
add column quantidade int not null;

alter table pedido_produto
change quantidade qtde int not null;
#para mudar nome de coluna na tabela - nomevelho e depois nomenovo
#alter table rename column não funcionou, usar esse que tava lá em cima também

alter table pedido_produto
modify column qtde int; #para mudar tipo de coluna na tabela