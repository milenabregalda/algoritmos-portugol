# Projeto Integrador 06/11/2023
# Nomes: André Luis Mesquita Barbosa Júnior, Luís Henrique Medeiros Vanz,
# Milena Fontana Bregalda

create database cybercafe;
use cybercafe;

create table cliente(
	idCliente int primary key auto_increment,
	nome varchar(45) not null,
	idade int not null,
	email varchar(45) not null,
	cpf varchar(45) not null,
	endereco varchar(45) not null,
	redeSocial varchar(200) not null
);

create table funcionario(
	idFuncionario int primary  key auto_increment,
	nome varchar(45) not null,
	idade int not null,
	email varchar(45) not null,
	cpf varchar(45) not null,
	endereco varchar(45) not null,
	funcao varchar(45) not null
);


create table telefone(
	idTelefone int primary key auto_increment,
	tipo varchar(45) not null,
	ddd varchar(45) not null,
	numero varchar(45) not null,
	idCliente int not null,
	foreign key (idCliente) references cliente(idCliente)
);

insert into cliente (nome, idade, email, cpf, endereco, redeSocial) values
('Maria', 20, 'maria@email.com', '12345678', 'Rua das Marias, 25', 'rede.com/@maria');

select * from cliente;
