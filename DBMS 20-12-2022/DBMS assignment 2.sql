use nishadb;
#1. Create the following table CUSTOMER.
create table CUSTOMER(Cust_id varchar(5) primary key , 
Fname varchar(15) not null,Lname varchar(15) not null, 
area char(2),phone int(10) ,DOB varchar(10),payment float(6,2));
insert into CUSTOMER values
('A01','Ivan','Ross','SA',6125467,'15-jan-86',800.50),
('A02','Vandana','Ray','MU',5560379,'20-dec-87',1000.75),
('A03','Pramada','Jauguste ','DA',4560389,'25-jul-67',500.00),
('A04','Basu','Navindi','BA',6125401 ,'30-feb-56',860.00),
('A05','Ravi','Shridhar','NA',null,'15-feb-89',500.50),
('A06','Rukmini','Aiyer','GH',5125274,'23-jul-87',1500.50);
#2. Display the structure of the table you have created.
describe CUSTOMER;
#3. Display the data of the created table
select * from CUSTOMER;
#4. Insert a row which will accept system date.
alter table customer ADD CurrentDate varchar(15) after payment;
UPDATE CUSTOMER SET  CurrentDate=curdate();
#5. Display the data in the table.
select * from CUSTOMER;
#6. Update the phone numbers of customer A02 and A04
update CUSTOMER set phone=67589023 where cust_id='A02';
update CUSTOMER set phone=67567856 where cust_id='A04';
#7. Update the date of birth of customer A03 and A05
update CUSTOMER set DOB='30-jun-67'where cust_id='A03';
update CUSTOMER set DOB='13-feb-89'where cust_id='A05';
#8. Display the updated table.
select * from CUSTOMER;
#9. Delete 2 rows from the table for customers A01 and A05
delete from CUSTOMER where Cust_id='A01' or  cust_id='A05';
#10. Delete all the rows from the table.
deLete from CUSTOMER;
#11. Insert 5 records according to your own wish.
insert into CUSTOMER values
('B01','Ravi','Ray','MU',6574867,'20-jan-01',8000.50,curdate()),
('B02','Bibek','Sharma','SA',3456379,'20-dec-01',1000.75,curdate()),
('B03','Shreya','Mondal ','DA',8769389,'25-jul-02',5000.00,curdate()),
('B04','Madhurima','Dey','DA',6125401 ,'30-feb-00',8600.00,curdate()),
('B05','Sankho','Pramanik','NA',657987,'15-feb-00',5000.50,curdate());
#12. Update one record based on any criteria according to your own wish.
update CUSTOMER set Lname='Banerjee' where cust_id='B04';
#13. Delete any 1 record from the table based on particular criteria
delete from CUSTOMER WHERE Cust_id='BO2';