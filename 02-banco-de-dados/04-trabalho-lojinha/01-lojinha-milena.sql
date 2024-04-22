#Exercícios Milena Bregalda 30.08.23

drop database ex_300823;
create database ex_300823;
use ex_300823;

#CRIAÇÃO DE TABELAS

create table cliente(
	id int primary key auto_increment,
    nome varchar(255) not null,
    endereco varchar (255) not null, 
    cep varchar(15) null,
    cnpj varchar(20) not null unique,
    ie int(4) null,
    idCidade int not null
);
desc cliente;

create table estado(
	id int primary key auto_increment, 
    nome varchar(255) not null,
    uf varchar(2) not null
);
desc estado;

create table cidade(
	id int primary key auto_increment,
    nome varchar(255) not null,
    idEstado int not null,
    foreign key (idEstado) references estado(id)
);
desc cidade;

alter table cliente
add constraint fk_idCidade foreign key(idCidade) references cidade(id);

create table vendedor(
	id int primary key auto_increment,
    nome varchar(255) not null,
    salarioFixo float (10,2) not null,
    faixaComissao enum('A','B','C')
);
desc vendedor;

create table pedido(
	id int primary key auto_increment,
    prazoEntrega int not null,
    idCliente int not null,
    idVendedor int not null,
    foreign key(idCliente) references cliente(id),
    foreign key(idVendedor) references vendedor(id)
);
desc pedido;

create table produto(
	id int primary key auto_increment,
    unidade varchar(3) not null, #varchar, não enum('Kg','BAR','L','M','SAC','G') porque pode mudar
    descricao varchar(100) not null,
    valorUnitario float(10,2) not null
);
desc produto;

create table produtoPedido(
    idPedido int not null,
    idProduto int not null,
    qtde int not null,
    foreign key(idPedido) references pedido(id),
    foreign key(idProduto) references produto(id)
);
desc produtoPedido;

#INSERÇÃO DE DADOS
#Comandos podem ser inseridos fora de ordem

insert into estado (nome,uf) values
('Rio De Janeiro','RJ'), ('São Paulo','SP'), ('Paraná','PR'), ('Minas Gerais','MG'),
('Bahia','BA'), ('Santa Catarina','SC'), ('Brasília','DF');

select * from estado;

insert into cidade(nome,idEstado) values
('Niterói',1), ('São Paulo',2), ('Curitiba',3), ('Belo Horizonte',4), ('Salvador',5), ('Rio De Janeiro',1),
('Londrina',3), ('Florianópolis',6), ('Uberaba',4), ('Brasilia',7);

select * from cidade;

insert into cliente (id,nome,endereco,idCidade,cep,cnpj,ie) values 
(720,'Ana','Rua 17 n.19',1,'24358310','12113231/001-34',2134),
(870,'Flávio','Av. Pres. Vargas 10',2,'22763931','22534126/387-9',4631),
(110,'Jorge','Rua Caiapo 13',3,'30078500','14512764/983-9',null),
(222,'Lúcia','Rua Itabira 123 Loja 9',4,'22124391','28315213/934-8',2985),
(830,'Maurício','Av. Paulista 1236 sl 2345',2,'3012683','32816985/465-6',9343),
(130,'Edmar','Rua da praia sn',5,'30079300','23463284/234-9',7121),
(410,'Rodolfo','Largo da Lapa 27 sobrado',6,'30078900','12835128/346-9',7431),
(20,'Beth','Av, Climério 45',2,'25679300','32485126/732-8',9280),
(157,'Paulo','Tv. Moraes c/3',7,null,'32848223/324-2',1923),
(180,'Lívio','Av. Beira Mar n. 1256',8,'30077500','12736571/2347-4',null),
(260,'Susana','Rua Lopes Mendes 12',1,'30046500','21763571/232-9',2530),
(290,'Renato','Rua Meireles 123 bl.2 sl. 345',2,'30225900','13276571/131-4',1820),
(390,'Sebastião','Rua da igreja 10',9,'30438700','32176547/213-3',9071),
(234,'José','Quadra 3 bl. 3 sl. 1003',10,'22841650','21763576/122-3',2931);

alter table cliente auto_increment = 870;
select * from cliente;

insert into produto values
(25, 'Kg', 'Queijo', 0.97), (31, 'BAR', 'Chocolate', 0.87), (78, 'L', 'Vinho', 2),
(22, 'M', 'Linho', 0.11), (30, 'SAC', 'Açúcar', 0.3), (53, 'M', 'Linha', 1.8),
(13, 'G', 'Ouro', 6.18), (45, 'M', 'Madeira', 0.25), (87, 'M', 'Cano', 1.97),
(77, 'M', 'Papel', 1.05);

alter table produto auto_increment = 87;
select * from produto;

insert into vendedor(id,nome,salarioFixo,faixaComissao) values
(209,'José',1800.00,'C'), (111,'Carlos',2490.00,'A'), (11,'João',2780.00,'C'),
(240,'Antônio',9500.00,'C'), (720,'Felipe',4600.00,'A'), (213,'Jonas',2300.00,'A'),
(101,'João',2650.00,'C'), (310,'Josias',870,'B'), (250,'Maurício',2930.00,'B');

alter table vendedor auto_increment = 720;
select * from vendedor;

insert into pedido(id,prazoEntrega,idCliente,idVendedor) values
(121,20,410,209), (97,20,720,101), (101,15,720,101),
(137,20,720,101), (148,20,720,101), (189,15,870,213),
(104,30,110,101), (203,30,830,250), (98,20,410,209),
(143,30,20,111), (105,15,180,240), (111,20,260,240),
(103,20,260,11), (91,20,260,11), (138,20,260,11),
(108,15,290,310), (119,30,390,250), (127,10,410,11);

alter table pedido auto_increment = 203;
select * from pedido;

insert into produtoPedido values
(121, 25, 10), (121, 31, 35), (97, 77, 20),
(101, 31, 9), (101, 78, 18), (101, 13, 5),
(98, 77, 5), (148, 45, 8), (148, 31, 7),
(148, 77, 3), (148, 25, 10), (148, 78, 30),
(104, 53, 32), (203, 31, 6), (189, 78, 45),
(143, 31, 20), (143, 78, 10), (105, 78, 10),
(111, 25, 10), (111, 78, 10), (103, 53, 37),
(91, 77, 40), (138, 22, 10), (138, 77, 35),
(138, 53, 18), (108, 13, 17), (119, 77, 40),
(119, 13, 6), (119, 22, 10), (119, 53, 43),
(137, 13, 8);

select * from produtoPedido;