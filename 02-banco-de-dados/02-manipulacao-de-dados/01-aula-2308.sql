#drop database aula_2308;
create database aula_2308; #sistema
use aula_2308;

##AULA 3 23.08.23

#Anterior comandos DDL - Data Definition Language (Linguagem de Definição de Dados)
#Agora comandos DML - Data Manipulation Language (Linguagem de Manipulação de Dados)

create table cidade (
	codigo int primary key auto_increment,
	nome varchar (100) not null
);

create table estado(
	codigo int primary key auto_increment,
	nome varchar(100) not null,
	sigla varchar(2) not null
);

create table pessoa (
	codigo int primary key auto_increment,
	nome varchar(100) not null,
	cpf varchar(11) default '00000000000'
);

alter table cidade
add column codigoEstado int not null;

alter table cidade
add constraint fk_estado foreign key(codigoEstado) references estado(codigo);

alter table pessoa
add column codigoCidade int not null;

alter table pessoa
add constraint fk_cidade foreign key(codigoCidade) 
references cidade(codigo);
 
#Comandos DML começam aqui
 
select * from estado; #seleciona e mostra todos os dados da tabela

insert into estado (nome,sigla) #inserir valores na tabela - nome tabela, quais colunas
values('Rio Grande do Sul','RS'); #valores que serão inseridos na ordem informada acima,
#não precisa colocar codigo porque autoincrementa e tem menos chance de dar problema assim
insert into estado (nome,sigla)  values ('Santa Catarina','SC');
insert into estado (nome,sigla)  values ('Paraná','PR');
#forma mais extensa em vários comandos, não precisa
#Acima região sul

#Região sudeste
insert into estado (nome,sigla)  values ('Espírito Santo','ES');
insert into estado (nome,sigla)  values ('Rio de Janeiro','RJ');
insert into estado (nome,sigla)  values ('Minas Gerais','MG');
insert into estado (nome,sigla) values('São Paulo','SP'); #adicionando valores separadamente

#Região nordeste
insert into estado (nome,sigla) values #adicionando valores de uma vez só, mais prático
('Maranhão','MA'), ('Piauí','PI'), ('Ceará','CE'), ('Rio Grande do Norte','RN'), ('Paraíba','PB'),
('Pernambuco','PE'), ('Alagoas','AL'), ('Sergipe','SE'), ('Bahia','BA');
#forma de tamanho médio, é boa para só adicionar alguns valores e não todos

#Região norte
insert into estado (nome,sigla) values
('Amazonas','AM'), ('Pará','PA'), ('Acre','AC'), ('Roraima','RR'), ('Rondônia','RO'),
('Amapá','AP'), ('Tocantins','TO');

#Região centro-oeste não foi adicionada

desc estado;

#insert into estado (nome,sigla) values ('xxx'); #executa mas avisa que a coluna sigla não pode ser vazia
#insert into estado (nome,sigla) values ('yyy',null); #não executa e não aceita porque a coluna não pode ser nula
#insert into estado (nome,sigla) values ('zzz', ''); #executa numa boa porque '' não é vazio, é alguma coisa

#insert into estado values (null,'teste','UU');
#forma mais curta, é boa para quando quiser preencher todos os campos - usar null funciona como auto_increment, assim não tem problema

show tables; #mostra os nomes de todas as tabelas

#foreign key constraint fails (restrição):
#não deixa informar nome (a cidade) sem informar a chave estrangeira (o estado a qual ela pertence).

insert into cidade (nome, codigoEstado) values ('Porto Alegre', 1); #só funciona informando 1, o estado RS

insert into cidade (nome, codigoEstado) values
('Curitiba', 3), ('Florianópolis', 2), ('Canoas', 1); #curitiba e floripa errado

select * from cidade;

##AULA 4 24.08.23

show tables;
select * from cidade;
select * from estado;
select * from pessoa;

delete from cidade; #deleta todos os dados da tabela cidade, comando muito perigoso que só funciona com safe mode desligado

#Para deletar só uma tupla (linha), pode ser por vários critérios:
delete from estado where codigo = 1; #RS deletado por codigo/id (melhor opção), tabela agora começa com 2
delete from estado where sigla = 'SC'; #SC deletado por sigla
delete from estado where nome = 'São Paulo'; #SP deletado por nome, grafia tem que ser exatamente igual

insert into estado values (1,'Disney','DY');
#bom para manualmente forçar o SQL a colocar dado no id/codigo que quero, mas melhor resetar auto_increment (mais abaixo)

#delete from in - aprenderemos depois

insert into estado values (1,'Rio Grande do Leste','RL');
insert into estado values ('','Rio de Fevereiro','RF');
#colocando '' dá um aviso (melhor especificar só nome e sigla)
#incrementa automaticamente pra 26 mesmo com tabela vazia (correção abaixo)

delete from estado;

alter table estado auto_increment = 1; #conserta problema acima resetando contagem de id/codigo pra 1 ao invés de 26
alter table cidade auto_increment = 1;
alter table pessoa auto_increment = 1; 

#Código de banco de dados de estado do professor (ctrl x nos comandos acima e executar tudo):

INSERT INTO estado (codigo, sigla, nome) VALUES (1, 'AC', 'Acre');
INSERT INTO estado (codigo, sigla, nome) VALUES (2, 'AL', 'Alagoas');
INSERT INTO estado (codigo, sigla, nome) VALUES (3, 'AM', 'Amazonas');
INSERT INTO estado (codigo, sigla, nome) VALUES (4, 'AP', 'Amapá');
INSERT INTO estado (codigo, sigla, nome) VALUES (5, 'BA', 'Bahia');
INSERT INTO estado (codigo, sigla, nome) VALUES (6, 'CE', 'Ceará');
INSERT INTO estado (codigo, sigla, nome) VALUES (7, 'DF', 'Distrito Federal');
INSERT INTO estado (codigo, sigla, nome) VALUES (8, 'ES', 'Espírito Santo');
INSERT INTO estado (codigo, sigla, nome) VALUES (9, 'GO', 'Goiás');
INSERT INTO estado (codigo, sigla, nome) VALUES (10, 'MA', 'Maranhão');
INSERT INTO estado (codigo, sigla, nome) VALUES (11, 'MG', 'Minas Gerais');
INSERT INTO estado (codigo, sigla, nome) VALUES (12, 'MS', 'Mato Grosso do Sul');
INSERT INTO estado (codigo, sigla, nome) VALUES (13, 'MT', 'Mato Grosso');
INSERT INTO estado (codigo, sigla, nome) VALUES (14, 'PA', 'Pará');
INSERT INTO estado (codigo, sigla, nome) VALUES (15, 'PB', 'Paraíba');
INSERT INTO estado (codigo, sigla, nome) VALUES (16, 'PE', 'Pernambuco');
INSERT INTO estado (codigo, sigla, nome) VALUES (17, 'PI', 'Piauí');
INSERT INTO estado (codigo, sigla, nome) VALUES (18, 'PR', 'Paraná');
INSERT INTO estado (codigo, sigla, nome) VALUES (19, 'RJ', 'Rio de Janeiro');
INSERT INTO estado (codigo, sigla, nome) VALUES (20, 'RN', 'Rio Grande do Norte');
INSERT INTO estado (codigo, sigla, nome) VALUES (21, 'RO', 'Rondônia');
INSERT INTO estado (codigo, sigla, nome) VALUES (22, 'RR', 'Roraima');
INSERT INTO estado (codigo, sigla, nome) VALUES (23, 'RS', '   Rio Grande do Sul');
INSERT INTO estado (codigo, sigla, nome) VALUES (24, 'SC', 'Santa Catarina');
INSERT INTO estado (codigo, sigla, nome) VALUES (25, 'SE', 'Sergipe');
INSERT INTO estado (codigo, sigla, nome) VALUES (26, 'SP', 'São Paulo');
INSERT INTO estado (codigo, sigla, nome) VALUES (27, 'TO', 'Tocantins');

desc cidade;

#Modificação para funcionar código de banco de dados do professor que tem campo ibge:
alter table cidade
add column ibge varchar(8) not null unique;

#Para melhor organização, é bom abrir novas abas e salvar scripts separados
#Código de banco de dados de cidade do professor no outro script


