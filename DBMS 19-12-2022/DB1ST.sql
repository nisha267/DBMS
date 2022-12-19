USE nishadb;

create table Student (id int primary key auto_increment, sname varchar(20) not null, sphone bigint(11) not null unique,
semail varchar(30) not null unique,sadd varchar(50),squalification varchar(10) not null,sdept varchar(20));
insert into Student values
(1,'Nisha',8927974283,'nisha267@gmail.com','Asansol','BSC','Computer science'),
(2,'Ankita',8346789883,'anki67@gmail.com','Asansol','MCA','Computer science'),
(3,'Sayan',6757974283,'sayan456@gmail.com','Raniganj','Btech','Computer science'),
(4,'Baisali',786956785,'baisali267@gmail.com','Asansol','BSC','PHYSICS'),
(5,'Raj',7867987659,'raja267@gmail.com','Durgapur','MCA','Computer science');
#add new column
alter table Student ADD age int after sname;
#modify datatype size
alter table Student MODIFY squalification varchar(20) not null;
#modify constraint
#table Student MODIFY sphone int not null;
#drop column
alter table Student drop column sdept;
#change column name
alter table Student change column age sage int;
#rename table name
alter table Student rename to student_details;
#insert single row
insert into student_details values
(10,'pallabi',27,7865777456,'pallabi@gmail.com','Kolkata','MSC');
#truncate student_details;#delete rows
#drop table student_details;#delete whole table
update student_details set sage=20 where id=1;
update student_details set sage=22 where id=2;
update student_details set sage=26 where id=3;
update student_details set sage=28 where id=4;
update student_details set sage=25 where id=5;
update student_details set sage=30 where id=10;
alter table student_details add fees double after squalification;
update student_details set fees=3000.60 where id=1;
update student_details set fees=3000.60 where id=2;
update student_details set fees=3000.60 where id=3;
update student_details set fees=3000.60 where id=4;
update student_details set fees=3000.60 where id=5;
update student_details set fees=3000.60 where id=10;
update student_details set squalification='BCA' where sname='Baisali';

delete from student_details where sname='pallabi';

alter table student_details drop column fees;