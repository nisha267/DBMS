use nishadb;

create table CUSTOMERLAB(Cust_id varchar(4) primary key,F_name varchar(15) not null ,L_name varchar(15),area varchar(3),
phone int(10));
insert into CUSTOMERLAB VALUES
('A01','Ivan','Ross','SA',6125467),
('A02','Vandana', 'Ray', 'MU', 5560379 ),
('A03', 'Pramada', 'Jauguste', 'DA', 4560389 ),
('A04', 'Basu', 'Navindi', 'BA', 6125401 ),
('A05', 'Ravi', 'Shridhar', 'NA',null ),
('A06', 'Rukmini', 'Aiyer', 'GH',5125274);
create table Movie(
Mv_no int primary key,
Cust_id varchar(4),foreign key(Cust_id) references CustomerLab(Cust_id),
Title varchar(20)not null,
Star varchar(5)not null,
Price bigint );
insert into Movie values
(1,'A02','Bloody',' JC', 181),
(2 ,'A04', 'The Firm','TC', 200),
(3 ,'A01', 'Preety Women','RG', 151),
(4 ,'A06', 'Home Alone','MC', 150),
(5 ,'A05', 'The Fugitive','MF', 200),
(6 ,'A03', 'Coma','MD', 100),
(7 ,'A02', 'Drakula','GO', 150),
(8 ,'A06', 'Quick Change','BM', 100),
(9 ,'A03','Gone with the Wind','CB', 200),
(10 ,'A05', 'Carry on Doctor','LP', 100);
#2. Prove that entity integrity constraint is ensured by both the tables. (2 conditions to
#be checked).

#3. Prove that referential integrity constraint is ensured by both the tables.
#4. Prove that domain integrity constraint is ensured by the Movie table.
#5. Display the movie titles, whose price is greater than 100 but less than 200.
select title from Movie where price between 100 and 200;
#6. Display the cust_id who have seen movies having stars as either JC or TC or MC.
select cust_id from movie where star='jc' or star='tc' or star='mc';
#7. Display the details of those customers who have an A in their area name.
select * from CUSTOMERLAB where area like 'A%' or area like'%A%' or area like '%A';
#8. Display the movie titles, whose price is within 180 and the movie titles are of exactly
#6 characters.
select title from movie where price<=180 and char_length(title)=6;
#9. Display the movie name, their original prices and the prices after 10% increment.
#Give alias name to the incremented price column.
select title,price ,price*1.1 as 'Incremented_price' from movie;
#10.Display all the customer details in the following way:
#‘Ivan Ross stays in SA and his phone number is 6125467.’
#11.Add a not null constraint to the Lname field in Customer.
#12.Display the customer’s name whose phone number is not recorded.
select F_name from CUSTOMERLAB where phone is null;
#13.Add the phone number according to your own wish for the person mentioned in
#problem no 12.
update CUSTOMERLAB SET phone=678546 where phone is null;
#14.Display the unique customer ids from movie table.
SELECT distinct cust_id from movie;
#15.Remove the not null constraint from Star column in movie table.
alter table Movie modify Star varchar(5);
#16.Delete any row from the Customer table. If you cannot delete, then note the error
#message displayed.
delete from CUSTOMERLAB where cust_id='A01';#we can not delete a row because of foreign key CONSTRAINT
#17.Delete any row from the Movie table. If you cannot delete, then note the error
#message displayed.
delete from Movie where cust_id='A01';#we can not delete a row because of foreign key CONSTRAINT
#18.Drop the Customer table. If you cannot drop, then note the error message
#displayed.
drop table CUSTOMERLAB;   #We can not delete the table because of foreign key constraint
#19.Drop the Movie table. If you cannot drop, then note the error message displayed.
drop table Movie;   #We can not delete the table because of foreign key constraint
#20.Drop the foreign key from Movie table.
alter table movie drop foreign key Cust_id;