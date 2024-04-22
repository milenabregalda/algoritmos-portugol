/*SENAC TDS Banco de dados
Atividade avaliativa (parte 2 - modelo físico)

Nome: Milena Fontana Bregalda
Data: 13/09/2023*/

#drop database milenaBercario;
create database milenaBercario;
use milenaBercario;

#DDL

create table mae(
	id int primary key auto_increment,
	nome varchar(45) not null,
	logradouro varchar(45) not null,
	bairro varchar(45) not null,
	cidade varchar(45) not null,
    estado char(2) not null,
	dataNasc date not null
);

create table medico(
	id int primary key auto_increment,
	crm int(6) not null unique,
	nome varchar(45) not null,
    idEspecialidade int not null
);

create table bebe(
	id int primary key auto_increment,
	nome varchar(45) not null,
	dataNasc date not null,
	pesoNasc float(5,3) not null,
	altura float(3,1) not null,
	idMae int not null,
	idMedico int not null,
    foreign key(idMae) references mae(id),
    foreign key(idMedico) references medico(id)
);

create table telefone_mae(
   id int primary key auto_increment,
   ddd int(2) not null,
   numero varchar(15) not null unique,
   idMae int not null,
   foreign key(idMae) references mae(id)
);

create table telefone_medico(
   id int primary key auto_increment,
   ddd int(2) not null,
   numero varchar(15) not null unique,
   idMedico int not null,
   foreign key(idMedico) references medico(id)
);

create table especialidade(
	id int primary key auto_increment,
	nome varchar(45) not null
);

alter table medico
add constraint fk_especialidade foreign key(idEspecialidade) references especialidade(id);


#DML

insert into mae (nome, logradouro, bairro, cidade, estado, dataNasc) values
('Adriana', 'Rua Ponsalino Cardoso 266', 'Vila Maria', 'Alvorada', 'RS', '1970-05-16'),
('Patricia', 'Rua Áustria 140', 'Jdm Golden Park Residence', 'Hortolândia', 'SP', '1973-10-10'),
('Daiane', 'Rua Guarani 716', 'Vila Imbui', 'Cachoeirinha', 'RS', '1976-04-12');

select * from mae;

insert into especialidade (nome) values
('Obstetrícia'), ('Anestesia');

select * from especialidade;

insert into medico (crm, nome, idEspecialidade) values
(102030, 'Paulo José', 1),
(203040, 'Aline Cunha', 1),
(304050, 'Antônio Jose Alan', 1),
(405060, 'Araújo', 1),
(506070, 'João Paulo', 2),
(607080, 'Viçosa', 2);

select * from medico;

insert into bebe (nome, dataNasc, pesoNasc, altura, idMae, idMedico) values
('Aléxia', '2001-12-11', 3.250, 49, 3, 1),
('André', '1998-04-14', 4.300, 49.5, 3, 5),
('Alicia', '2016-07-08', 3.100, 47, 3, 2),
('Natalia', '1995-09-15', 3.610, 50, 1, 4),
('Fernanda', '1993-04-08', 3.120, 49, 1, 4),
('Francine', '1991-04-16', 3.750, 51, 1, 6),
('Rafaela', '1996-09-30', 3.170, 49, 2, 4),
('Gustavo', '2005-09-09', 3.070, 47, 2, 3);

select * from bebe;

insert into telefone_mae (ddd, numero, idMae) values
(51, '993307083', 1),
(19, '993359553', 2),
(51, '991320333', 3);

select * from telefone_mae;

insert into telefone_medico (ddd, numero, idMedico) values
(51, '987654321', 1),
(51, '123456789', 2),
(51, '741258963', 3),
(19, '951753852', 4),
(51, '456321789', 5),
(51, '888997744', 6);

select * from telefone_medico;


select b.nome as 'Nome', b.dataNasc as 'Data de nascimento', b.pesoNasc as 'Peso',
b.altura as 'Altura', ma.nome as 'Mãe', me.nome as 'Médico'
from bebe b
join mae ma on (ma.id = b.idMae)
join medico me on (me.id = b.idMedico)
order by b.id;

select ma.nome as 'Nome', concat(ma.logradouro, ' - ', ma.bairro, ' - ', ma.cidade, '/', ma.estado) as 'Endereço',
concat('(', tma.ddd, ') ', tma.numero) as 'Celular', ma.dataNasc as 'Data Nascimento'
from mae ma
join telefone_mae tma on (ma.id = tma.idMae)
order by ma.id;

select me.nome as 'Nome', me.crm as 'CRM', concat('(', tme.ddd, ') ', tme.numero) as 'Telefone',
e.nome as 'Especialidade'
from medico me
join telefone_medico tme on (me.id = tme.idMedico)
join especialidade e on (e.id = me.idEspecialidade)
order by me.id;

desc bebe;
desc medico;

#Consulta 1 - Crianças que o médico Araújo fez o parto
select me.nome as 'Médico', b.nome as 'Crianças'
from medico me
inner join bebe b on (me.id = b.idMedico and me.nome = 'Araújo')
order by b.nome;

#Consulta 2 - Quantos filhos cada mãe tem e o peso médio desses filhos (nome mae, qtd filhos, média peso)
select ma.nome as 'Mãe', count(b.id) as 'Qtd filhos', round(avg(b.pesoNasc), 2) as 'Média peso'
#Função round para arredondar números
from mae ma
join bebe b on (b.idMae = ma.id)
group by ma.nome; #Agrupar por nome da mãe resolveu problema de só aparecer a Daiane

#Consulta 3 - nome das crianças, nome das mães e idade atual das crianças e mães
select b.nome as 'Nome da criança',
timestampdiff(year, b.dataNasc, curdate()) as 'Idade atual da criança',
#função timestampdiff calcula idade, curdate() pega data atual
ma.nome as 'Nome da mãe',
timestampdiff(year, ma.dataNasc, curdate()) as 'Idade atual da mãe'
from mae ma
join bebe b on (b.idMae = ma.id);


desc mae;

desc bebe;

