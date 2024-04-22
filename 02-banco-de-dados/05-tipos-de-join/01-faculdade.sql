#drop database aula_050923;
create database aula_050923;
use aula_050923;

## 05/09/2023

create table estudantes(
   id int primary key auto_increment,
   nome varchar(45) not null,
   idade int not null
);

create table professores(
   id int primary key auto_increment,
   nome varchar(45) not null,
   idade int not null
);

insert into estudantes values
(1, 'Fernanda', 20),
(2, 'Maria', 19),
(3, 'Gabriel', 21),
(4, 'Antônio', 23),
(5, 'Marcos', 21),
(6, 'Sofia', 22),
(7, 'Laura', 18),
(8, 'Bruna', 20);

select * from estudantes;

insert into professores values
(1, 'Roberto', 40),
(2, 'Laura', 35),
(3, 'José', 38),
(4, 'Maria', 45),
(5, 'Antônio', 50),
(6, 'Geralda', 32),
(7, 'Marcos', 45),
(8, 'Otávio', 30);

select * from professores;

#Inner join - Consulta de quem tem o mesmo nome na faculdade
select e.id, e.nome, p.id, p.nome
from estudantes as e
inner join professores as p
on e.nome = p.nome; #usa nome ao invés de chave, que é o mais comum e ideal

#Left join
select e.nome, p.nome
from estudantes as e
left join professores as p
on e.nome = p.nome;

#Right join
select e.nome, p.nome
from estudantes as e
right join professores as p
on e.nome = p.nome;

#Left excluding join - left join sem a parte de intersecção, só com valores null
select e.nome, p.nome
from estudantes as e
left join professores as p
on e.nome = p.nome
where p.nome is null;

#Right excluding join - right join sem a parte de intersecção, só com valores null
select e.nome, p.nome
from estudantes as e
right join professores as p
on e.nome = p.nome
where e.nome is null;

#Cross join
select e.idade, e.nome, p.idade, p.nome
from estudantes as e
cross join professores as p;
#where e.id = 1 or p.id = 1;