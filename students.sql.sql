create database school;
use school;
create table students(id int primary key,name varchar(15),department varchar(10),subject varchar(15),gender char(1),mark float);
select*from students;
insert into students values(1,'Aneesh','Mern','Sql','M',75.3);
insert into students values(2,'Jagan','Science','MySql','M',70.2);
insert into students values(3,'Diya','Mern','Po_Sql','F',85.3);
insert into students values(4,'Kiran','Mern','Mo_Sql','F',65.3);
insert into students values(5,'Ram','Mern','Sql','M',95.3);
alter table students rename column name to Name;
alter table students rename column subject to Subject;
alter table students rename column department to Department;
alter table students rename column mark to Mark;
alter table students rename column id to Id;
alter table students rename column gender to Gender;
alter table students add column Place varchar(15);
update students set place ='calicut' where id=1;
select DISTINCT Subject from students;
update students set place ='Kollam' where id=2;
update students set place ='Kochi' where id=3;
update students set place ='Chennai' where id=4;
update students set place ='Goa' where id=5;
select*from students;
select*from students where Department='Mern' AND Name Like 'A%';
select*from students Where Gender='F' or Department='Mern';
