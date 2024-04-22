create database senac;
use senac;

create table professor (
    idProfessor int primary key auto_increment not null,
    nome varchar(200) not null,
    email varchar(100) not null,
    salario float(10,2)
);

create table aluno (
    idAluno int primary key auto_increment,
    nome varchar(200) not null,
    email varchar(200) not null,
    matricula varchar(200) not null
);

create table disciplina (
    idDisciplina int primary key auto_increment,
    nome varchar(45) not null
);

desc professor;
desc aluno;
desc disciplina;

delete from professor;
alter table professor auto_increment = 1;
select * from professor;

delete from aluno;
alter table aluno auto_increment = 1;
select * from aluno;