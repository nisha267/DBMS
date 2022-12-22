use nishadb;
create table Future_Emp(
emp_id int primary key,
ename varchar(20),
designation varchar(25),
dept varchar (20),
working_hour varchar(10),
salary double(10,2)
); 
insert into Future_Emp values
(1,'NILADRI','ENGINEER','EE','8',10000),
(2,'SOUMYA','SME','BCA','6',11000),
(3,'MISBAH','MGR','CSE','10',12000),
(4,'SOURAV','ADMIN','MSC','12',13000),
(5,'ABHISHIEK','ENGINEER','EE','8',14000),
(6,'NISHA','ADMIN','EE','8',15000),
(7,'SHIFA','ENGINEER','EE','8',16000),
(8,'AKSHAYA','MGR','ME','8',17000),
(9,'ELINA','ENGINEER','CE','8',18000),
(10,'SUCHITRA','SME','BCA','6',19000);
#AGGREGATE FUNCTION - COUNT 
select dept,count(dept) as 'total_hours' from future_emp group by dept;
# sum
select dept,sum(working_hour) as 'total_hours' from future_emp group by dept='me';
select dept,sum(salary) as 'total_dept_salary' from future_emp group by dept;
select dept,sum(salary) as 'total_dept_salary' from future_emp group by dept='EE';
#average
select dept,avg(salary) as 'avg_dept_salary' from future_emp group by dept;
#min
select ename,dept,min(salary) as 'Min_dept_salary' from future_emp group by dept;
select ename,dept,min(salary) from future_emp;
# min sub query
select ename,dept,salary from future_emp where salary=(select min(salary)from future_emp);

#max
select ename,dept,max(salary) as 'Max_dept_salary' from future_emp group by dept;
select ename,dept,max(salary) from future_emp where dept='EE';
select ename,dept,max(salary) from future_emp;
#Max sub query
select ename,dept,salary from future_emp where salary=(select max(salary)from future_emp);
#having 
select dept,sum(working_hour) as 'total_hours' from future_emp group by dept having sum(working_hour)>15;