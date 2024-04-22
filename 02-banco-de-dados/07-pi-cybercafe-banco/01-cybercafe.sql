#Projeto Integrador 04.09.2023 - CyberCafe
#Nomes: André Luis Mesquita Barbosa Júnior, Luís Henrique Medeiros Vanz, Milena Fontana Bregalda

#drop database cybercafe;
create database cybercafe;
use cybercafe;

#----------------------------------------------------------------------Parte do André---------------------------------------------------------------------------------------

create table doce(
	id int primary key auto_increment,
    tipo enum('B','BL','S','C','P') null, #B=Brigadeiro, BL=BOLO,S=SORVETE,C=COOKIE,P=PUDIM
    preco float (10,2) null,
    idPedido int not null
);

insert into doce(id,tipo,preco,idPedido) values
(1,'B',3.20,1),
(2,'BL',5.00,2),
(3,'S',15.00,3),
(4,'C',7.00,4),
(5,'P',9.00,5),
(6,'C',7.00,6),
(7,'C',7.00,7),
(8,'S',15.00,8),
(9,'BL',5.00,9),
(10,'P',9.00,10),
(11,null,null,11),
(12,null,null,12),
(13,null,null,13),
(14,'B',3.20,14),
(15,'B',3.20,15),
(16,'B',3.20,16),
(17,'C',7.00,17),
(18,'BL',5.00,18),
(19,'P',9.00,19),
(20,'P',9.00,20);

create table salgado(
	id int primary key auto_increment,
    tipo enum('P','E','R','EN','Q') null, #P=PASTEL,E=EMPADA,R=RISÓLIS,EN=ENROLADINHO,Q=QUIBE
    preco float (10,2) null,
    idPedido int not null
);

insert into salgado (id,tipo,preco,idPedido) values 
(1,'P',4.00,5),
(2,'R',5.00,3),
(3,'E',3.50,4),
(4,'EN',3.00,2),
(5,'EN',3.00,5),
(6,'Q',3.00,7),
(7,null,null,6),
(8,'E',3.50,9),
(9,'EN',3.00,10),
(10,null,null,8),
(11,'R',5.00,20),
(12,'Q',3.00,18),
(13,'E',3.50,19),
(14,'Q',3.00,16),
(15,'P',4.00,17),
(16,'P',4.00,13),
(17,'E',3.50,15),
(18,'R',5.00,14),
(19,'EN',3.00,11),
(20,'P',4.00,12),
(21,'R',5.00,1);

select * from salgado;

create table fornecedor(
	id int primary key auto_increment,
    nome varchar(45) not null,
    cnpj varchar(20) not null unique,
    precoCobrado float(7,2) not null
);

insert into fornecedor(nome,cnpj,precoCobrado) values
('João','1113312/0001-7',210),
('Maria','1452764/9834-9',160),
('Ana','1273671/2347-4',198),
('Gustavo','2173576/1232-5',150),
('Lucas','31217547/213-3',240);

select * from fornecedor;

create table produto(
	id int primary key auto_increment,
    nome varchar(45) not null,
    validade int not null,
    idFornecedor int not null,
	foreign key (idFornecedor) references fornecedor(id)
);

insert into produto(nome,validade,idFornecedor) values
('Café',15,1),
('Café',15,2),
('Café',15,3),
('Doces',1,4),
('Salgados',1,5);

select * from produto;

#----------------------------------------------------------------------Parte do Luís---------------------------------------------------------------------------------------

create table cliente(
   id int primary key auto_increment,
   cpf varchar(20) not null unique,  
   nome varchar(45) not null,
   limiteCredito float(10,2) not null,
   dataNascimento date not null 
);

insert into cliente (cpf, nome, limiteCredito, dataNascimento) values
('41825314500', 'Arnaldo Silva', 4000.00, '2001-09-27'),
('62139081455', 'Demian Fernandes', 3200.00, '1987-08-21'),
('2747511600', 'Luan Severino', 2125.00, '2003-07-10'),
('15265748458', 'Mateus Ortega', 3763.00, '1974-02-04'),
('48275914310', 'Thalissa Campos', 4198.00, '1832-09-19'),
('08322161433', 'Mayara Paula', 1634.00, '1994-10-23'),
('86325685407', 'Melissa Assunção', 2631.00, '1997-11-30'),
('13207255620', 'Leandro Casanova', 2532.00, '2002-06-30'),
('88265547498', 'Laila Maria', 3810.00, '1942-07-02'),
('32172796549', 'Gustavo Carrara', 2374.00, '2003-10-08'),
('80088357104', 'Andressa Cordeiro', 2402.00, '1984-08-20'),
('45552675835', 'Patrick Saulo', 3375.00, '2002-11-05'),
('49032585304', 'Silvana Quintana', 1850.00, '1752-03-07'),
('50624367371', 'Fábio Paes', 2487.00, '2001-09-13'),
('73588827250', 'Elisa Bonilha', 3153.00, '2002-02-18'),
('54086415216', 'Alana Farias', 5000.00, '2000-06-01'),
('79560189081', 'Amanda Bandeira', 7000.00, '1991-12-20'),
('97091244426', 'João Souza', 25000.00, '1975-05-17'),
('21395505231', 'Alana Galvão', 1000.00, '2003-08-28'),
('33985053224', 'Julio Pinheiro', 100.00, '1995-10-15');

select *  from cliente;

create table pedido(
   id int primary key auto_increment,
   numero int not null,
   valor float(6,2) not null,
   data_pedido date not null,
   idCliente int not null,
   foreign key(idCliente) references cliente(id)
);

insert into pedido (numero, valor, data_pedido, idCliente) values
(1,5.00,'2014-07-14',1),
(2, 3.00, '2012-11-18', 18),
(3, 5.00, '2017-05-25', 5),
(4, 3.50, '2015-03-30', 7),
(5, 7.00, '2013-08-10', 8),
(6, 5.00, '2016-01-24', 10),
(7,3.00, '2020-02-28', 1),
(8,3.00, '2021-04-03', 17),
(9, 3.50, '2019-08-08', 19),
(10,3.00, '2022-06-09', 15),
(11,3.00, '2022-09-12', 14),
(12,4.00, '2021-12-01', 3),
(13,4.00,'2023-05-5',16),
(14,5.00, '2016-05-04', 11),
(15, 3.50, '2018-07-27', 4),
(16, 3.00, '2020-08-04', 8),
(17,4.00, '2023-07-20', 15),
(18,3.00, '2022-08-10', 12),
(19,3.50, '2021-09-20', 2),
(20,5.00, '2020-10-10', 16);

select * from pedido;

alter table doce
add constraint fk_pedidoD foreign key(idPedido) references pedido(id);

alter table salgado
add constraint fk_pedidoS foreign key(idPedido) references pedido(id);

create table telefone(
   id int primary key auto_increment,
   ddd int(2) not null,
   numero varchar(10) not null,
   tipo enum('C','R'), #C=Celular,R=RESIDENCIAL 
   idCliente int not null,
   foreign key(idCliente) references cliente(id)
);

insert into telefone (id,ddd, numero, tipo,idCliente) values
(1,'51','2721-2764','C',1),
(2,'51','3145-5962','R',2),
(3,'51','2011-2149','C',3),
(4,'51','2218-4730','R',4),
(5,'51','3784-9035','C',5),
(6,'11','2266-1309','R',6),
(7,'47','3235-0034','C',7),
(8,'51','2187-1513','R',8),
(9,'51','3224-4821','C',9),
(10,'51','2161-3279','R',10),
(11,'47','3267-8091','C',11),
(12,'47','2255-7349','R',12),
(13,'11','2723-2737','C',13),
(14,'11','3875-7441','R',14),
(15,'51','3627-3508','C',15),
(16,'47','1231-4532','R',16),
(17,'47','7853-5895','R',17),
(18,'47','5674-4575','C',18),
(19,'47','5672-2623','C',19),
(20,'47','6454-4545','R',20);

select * from telefone;

#----------------------------------------------------------------------Parte da Milena---------------------------------------------------------------------------------------

create table funcionario(
	id int primary key auto_increment,
	nome varchar(45) not null,
	funcao enum('A','R') #atendente, repositor
);

desc funcionario;

insert into funcionario (nome, funcao) values
('Amélia Santos', 'A'),
('Eduardo Monteiro', 'A'),
('Danilo Oliveira', 'R'),
('Renata Barcelos', 'R');

select * from funcionario;

create table computador(
	id int primary key auto_increment,
	usuario varchar(45) not null unique,
	senha varchar(45) not null,
	tempoDeUso time not null,
	precoHora float(5,2) not null,
	idPedido int not null,
	idProduto int not null ,
	foreign key (idPedido) references pedido(id),
	foreign key (idProduto) references produto(id)
);

insert into computador (usuario, senha, tempoDeUso, precoHora, idPedido, idProduto) values
('computador1', 'cyber@123', '1:00:00', 3.00, 1, 1),
('computador2', 'cyber@123', '2:30:00', 3.00, 3, 2),
('computador3', 'cyber@123', '4:15:00', 3.00, 2, 3),
('computador4', 'cyber@123', '3:00:00', 3.00, 6, 5),
('computador5', 'cyber@123', '5:30:00', 3.00, 5, 1),
('computador6', 'cyber@123', '3:20:00', 3.00, 4, 4),
('computador7', 'cyber@123', '1:30:00', 3.00, 7, 2),
('computador8', 'cyber@123', '3:10:00', 3.00, 8, 1),
('computador9', 'cyber@123', '2:50:00', 3.00, 9, 3),
('computador10', 'cyber@123', '2:55:00', 3.00, 13, 1);

select * from computador; 

create table cafe(
	id int primary key auto_increment,
	tipo enum('CAP','EXP','CL') not null, #cappuccino, expresso, café com leite
	preco float(4,2) not null,
	idPedido int not null,
	idProduto int not null ,
	foreign key (idPedido) references pedido(id),
	foreign key (idProduto) references produto(id)
);

insert into cafe (tipo, preco, idPedido, idProduto) values
('CAP',7.00,1,1),
('EXP',4.50,2,2),
('CL',3.50,3,3),
('CL',3.50,13,2),
('CAP',7.00,19,2),
('CAP',7.00,14,1),
('EXP',4.50,7,3),
('EXP',4.50,4,3);

select * from cafe;

create table pagamento(
	id int primary key auto_increment,
	notaFiscal varchar(45) not null unique,
	formaPagamento enum('C','D','P') not null, #crédito, débito, pix
	idPedido int not null,
	idFuncionario int not null ,
	foreign key (idPedido) references pedido(id),
	foreign key (idFuncionario) references funcionario(id)
);

insert into pagamento (notaFiscal, formaPagamento, idPedido, idFuncionario) values
('71919173729820', 'P', 1, 1), 
('12345678901234', 'P', 2, 1), 
('23456789012345', 'C', 3, 2), 
('34347890123456', 'D', 4, 1), 
('4567890123456', 'C', 5, 2), 
('56789012345678', 'C', 6, 2), 
('67890123456789', 'C', 7, 2),
('78901234567890', 'D', 8, 1), 
('89012345678903', 'P', 9, 2), 
('90123456789012', 'P', 10, 1), 
('0123456789992', 'P', 11, 2), 
('12345678345344', 'D', 12, 3), 
('345675450123456', 'C', 13, 2), 
('34567890123456', 'P', 14, 1), 
('45678901234567', 'C', 15, 1), 
('56758712345678', 'C', 16, 2), 
('67858723456789', 'D', 17, 4), 
('78243234567890', 'D', 18, 2), 
('89012345678901', 'P', 19, 2), 
('90758456789012', 'C', 20, 1);

select * from pagamento;

show tables;

desc doce;
desc salgado;
desc fornecedor;
desc produto;

desc cliente;
desc pedido;
desc telefone;

desc funcionario;
desc computador;
desc cafe;
desc pagamento;