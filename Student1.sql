create database db;
use db;
create table student(Roll_no int primary key,Name varchar(20),Gender varchar(1),Marks int ,check(Gender in('M','F','O')));
insert into student values(1,'Jhon','M',80);
insert into student values(2,'Ramya','F',69),(3,'Diya','F',58),(4,'Adithya','F',50),(5,'Ram','F',70);
select*from student;
update student set Gender='M' where Roll_no=5;
select*from student;
select Name from student where Gender='M';
select avg(Marks) from student;
select Roll_no,Name,Marks from student where Marks in(select max(Marks) from student);

alter table student add column Place varchar(20);
update student set place='calicut' where Roll_no=1;
update student set place='Chennai' where Roll_no=2;
update student set place='Delhi' where Roll_no=3;
update student set place='Kochi' where Roll_no=4;
update student set place='Pune' where Roll_no=5;

select Name,Place from student where Marks between 35 and 70 and Gender='F';