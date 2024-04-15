create database db3;
use db3;
create table depositer(accno int primary key,dname varchar(20),branch varchar(15),balance int);
create table borrower(loan_no int primary key,accno int,amount int not null,foreign key(accno) references depositer(accno));
insert into depositer values(101,'ram','calicut',50000),
							(102,'rocky','kollam',45000),
                            (103,'ramesh','calicut',63000),
                            (104,'don','kochi',70000),
                            (105,'krish','kannur',20000);
insert into depositer values(106,'aneesh','calicut',74000);
insert into borrower values (001,101,40000),
							(002,102,45000),
                            (003,103,50000),
                            (004,104,58000),
                            (005,105,10000);
select*from depositer;
select*from borrower;
select avg(amount) as Average, max(amount) as Max, min(amount) as Min, count(*) as Count, sum(amount) as Sum from borrower;
select branch,count(*) from depositer group by branch;
select dname from depositer where accno not in(select accno from borrower);
alter table borrower drop column amount;