use nishadb;
create table Employee(
id int primary key,Ename varchar(20) not null,
Ephone bigint(11) not null unique,
Eaddr varchar(50),Edept varchar(20) not null,
Esalary double);
#insert multiple row
insert into Employee value
(1,'Bishnupriya',4567231490,'Mumbai','IT',20000.5);
insert into Employee value
(2,'Suchitra',7869453210,'Kolkata','IT',20000.5),
(3,'Shifa',876931490,'Pune','A/C',15000.80),
(4,'Nisha',768594590,'Mumbai','MGR',35000.50),
(5,'Ellina',8765495490,'Kolkata','A/C',10000.50);
#select
# and both condition should be true
select * from Employee where Eaddr ='Kolkata' and Esal = '10000.50';
# or any one condition should be true
select * from Employee where Eaddr = 'Mumbai' and Esal = '35000.50';
#not
select * from Employee where Edept != 'IT';
#in
select * from Employee where Eaddr in('Mumbai','Pune');
#starts with
select * from Employee where Ename like 'E%';
#ends with
select * from Employee where Ename like '%a';
#in between
select * from Employee where Ename like '%f%';
#start and end with
select * from Employee where Ename like 'N%a';
#missing letter
select * from Employee where Eaddr like 'pu_e';
select * from Employee where Eaddr like 'M_R';
