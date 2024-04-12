create database Department;
use Department;
create table Department(depid int primary key,dname varchar(20) not null);
create table Employee(empid int primary key,ename varchar(20) not null,salary int not null,depid int,Dob date not null,foreign  key(depid) references Department(depid));
insert into Department values(1,'Devop'),(2,'Software'),(3,'Security'),(4,'Management'),(5,'Tech');
insert into Employee values(101,'Ram',6500,1,'1999-09-09'),
						   (102,'Ramesh',7500,3,'1999-09-09'),
						   (103,'Ramya',8500,2,'1999-09-09'),
						   (104,'Ramu',4500,4,'1999-09-09'),
						   (105,'Ramanan',6900,5,'1999-09-09');
select*from employee;
select*from employee where salary between 6000 and 10000;
alter table Employee rename column ename to empname;
Select empid,salary from Employee order by salary Desc;
