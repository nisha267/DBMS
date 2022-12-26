use nishadb;
create table Student_join(Id int  ,
Fname varchar(15),Lname varchar(15),age int(3),city varchar(10),
Form_no varchar(2) primary key);
insert into Student_join values(1,'Shifa','Das',22,'Andal','A1');
insert into Student_join values(2,'Abhisekh','Sarkar',25,'Barasat','A2');
insert into Student_join values(3,'Sourav','Chakrabarty',26,'Kolkata','A3');
insert into Student_join values(4,'Atif','Mondal',24,'Midnapur','A4');
insert into Student_join values(5,'Soumya','Poddar',22,'Durgapur','A5');
insert into Student_join values(6,'Niladri','Biswas',24,'Hoogly','A6');
insert into Student_join values(7,'Nisha','Sutradhar',22,'Asansol','A7');
insert into Student_join values(8,'Elijah','Rahaman',25,'Kolkata','A8');
insert into Student_join values(9,'Hrangchal','Sarkar',24,'Delhi','A9');
insert into Student_join values(10,'Elina','Sahoo',23,'Mumbai','B1');
create table fees(form_no varchar(4),foreign key(form_no) 
references Student_join(form_no),amount  int(4),course varchar(15));
insert into fees values
('A1',4000,'java'),
('A2',4000,'java'),
('A3',5000,'python'),
('A4',3000,'ml'),
('A5',3000,'ml'),
('A6',2000,'python'),
('A7',5500,'dsa'),
('A8',6000,'dsa'),
('A9',7000,'c++'),
('B1',4000,'c#');
#foreign key
alter table fees add foreign key(form_no) references student_join(form_no);
#inner join
select fname,lname,amount,course from student_join inner join fees on Student_join.form_no=fees.form_no;
select fname,amount,course from student_join inner join fees on Student_join.form_no=fees.form_no;
#cross join
select * from student_join cross join fees;
#self-join
select s1.fname,s1.age from Student_join s1 inner join Student_join s2 on s1.age=s2.age and s1.id<>s2.id order by s1.id;
#leftouterjoin
select Student_join.form_no,fname,amount from Student_join left join fees on Student_join.form_no=fees.form_no;
#rightouterjoin
select Student_join.form_no,fname,amount from Student_join right join fees on Student_join.form_no=fees.form_no;
#subquery
select * from student_join where fname in (select Fname from student_join where age>24);
select * from fees where form_no in(select form_no from fees where amount>5500);
select * from student_join where age =(select max(age) from student_join);
select * from student_join where city not in(select city from student_join where city='Nadia');
select * from fees where course !=(select course from fees where course='C++');
select * from fees where amount>(select amount from fees where course='C#'); 
 
insert into fees value(B2,9000,'IT');#cannot update or add a child row;foreign key constraint
insert into student_join value(11,'Pallabi','Bhaduri' ,26,'Kolkata','B2');#can add or update a parent row
#Any
select form_no,Fname from Student_join where form_no =  any(select form_no from fees);
#All
select form_no,Fname from student_join where form_no < All(select form_no from fees);