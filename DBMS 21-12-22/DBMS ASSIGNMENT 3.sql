use nishadb;
#creating the table;
create table DEPARTMENT(CODE int primary key auto_increment, name varchar(10) not null, payment float(6,2) not null ,
working_hour varchar(30) not null);
#inserting values
insert into DEPARTMENT values
(101,'HR',50000.6,10),
(102,'Marketing',40000.6,8),
(103,'IT',30000.6,10),
(104,'Management',60000.6,8),
(105,'Administration',70000.6,6);
#using alter key changing the datatype's size of name
alter table DEPARTMENT MODIFY name varchar(15) not null;
#deleting the whole row using delete key
delete from DEPARTMENT where NAME='IT';
#updating the payment using update key
update DEPARTMENT set PAYMENT=45000.89 where CODE=102;
#delete the column using drop keyword
alter table DEPARTMENT drop column working_hour;
#truncate whole table
truncate table DEPARTMENT;