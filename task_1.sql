--create database db

CREATE TABLE courses (
    id int identity(1,1) primary key,
    name varchar(255),
    teacherid int
   
);

create table teachers(
	id int identity(1,1) primary key,
	name varchar(255)
);

insert into courses(name, teacherid)
values('English Grammar', 3);
insert into courses(name, teacherid)
values('Mathematics', 1);
insert into courses(name, teacherid)
values('Physics', 4);
insert into courses(name, teacherid)
values('Chemistry', 4);
insert into courses(name, teacherid)
values('Biology', 5);


--select * from teachers
insert into teachers(name)
values('Johana Kabir')

insert into teachers(name)
values('Lara Gilbert')

insert into teachers(name)
values('John Smith')

insert into teachers(name)
values('Daniel Robertson')

insert into teachers(name)
values('Larry Cooper')

--select * from teachers

--query 1
select name from teachers
select name from courses

--query 2
select id, name from teachers where id = (select top 1 teacherid from courses group by teacherid order by count(teacherid) desc)

--query 3 
select id, name from teachers where not id = any(select teacherid from courses group by teacherid)  

