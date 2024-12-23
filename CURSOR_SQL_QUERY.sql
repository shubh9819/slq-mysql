create database shubham_vish
use shubham_vish
DROP TABLE IF EXISTS emp;
CREATE TABLE emp (
empno int primary key,
ename varchar(10) default NULL,
job varchar(9) default NULL,
mgr decimal(4,0) default NULL,
hiredate date default NULL,
sal decimal(7,2) default NULL,
comm decimal(7,2) default NULL,
deptno int not null,
foreign key (deptno) references dept(deptno)
);
DROP TABLE IF EXISTS dept;
CREATE TABLE dept (
deptno int primary key,
dname varchar(14) default NULL,
loc varchar(13) default NULL
);
INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');
INSERT INTO dept VALUES ('30','SALES','CHICAGO');
INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');
INSERT INTO emp VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO emp VALUES
('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO emp VALUES
('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO emp VALUES
('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO emp VALUES
('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO emp VALUES
('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO emp VALUES
('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO emp VALUES
('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
INSERT INTO emp VALUES
('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO emp VALUES
('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
INSERT INTO emp VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
INSERT INTO emp VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
INSERT INTO emp VALUES
('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
INSERT INTO emp VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');
select * from emp;
select * from dept;


Declare @emp_id int ,@emp_name varchar(10),@sal int;
print('EMPLOYEE DETAILS')

DECLARE emp_cursor cursor for
select empno,ename,sal from emp 
order by empno;

open emp_cursor


fetch next from emp_cursor
INTO @emp_id ,@emp_name,@sal;

print 'Employee_id    Employee_Name  Salary'

while @@FETCH_STATUS=0
begin 
if @sal>=1000
print ' '+cast(@emp_id as varchar(10))+'               '+cast(@emp_name as varchar(10))
+'       '+cast(@sal as varchar(10))+'  '+'grade A'
else
print ' '+cast(@emp_id as varchar(10))+'              '
+cast(@emp_name as varchar(10))+'         '+cast(@sal as varchar(10))

fetch next from emp_cursor
into  @emp_id ,@emp_name,@sal
end
close emp_cursor;
deallocate emp_cursor;



create cursor to display all the employee name of from employee table if emp_dept name start with s the name should concatenate with have a nice day and for all other name display the mssg
welcome

Declare @emp_id1 int ,@emp_name1 varchar(10);
print 'xyzz '
DECLARE emp_cursor1 cursor for
select empno,ename from emp 
order by empno;

open emp_cursor1


fetch next from emp_cursor1
INTO @emp_id1 ,@emp_name1;

print 'Employee_id    Employee_Name   MESSAGE'

while @@FETCH_STATUS=0
begin 
if @emp_name1 like's%'

		print cast(@emp_id1 as varchar(10))+'               '+cast(@emp_name1 as varchar(10))+'       '+'HAVE A NICE DAY  '
else
	print ' '+cast(@emp_id1 as varchar(10))+'               '+cast(@emp_name1 as varchar(10))+'         ==welcome'

fetch next from emp_cursor1
into  @emp_id1 ,@emp_name1
end
close emp_cursor1;
deallocate emp_cursor1;




student report system

create table student(rollno int identity primary key, name varchar(20),percentage int);
insert into student values ( 'shubham',78);
insert into student values ( 'ajay',70);
insert into student values ( 'alok',60);
insert into student values ( 'pooja',44);
insert into student values ( 'jyoti',10);
insert into student values ( 'suman',90);
insert into student values ( 'rajubhai',35);
insert into student values ( 'bahubali',77);
insert into student values ( 'rajabog',65);
insert into student values ( 'kallu',29);
insert into student values ( 'sanika',98);
insert into student values ( 'ramesh',37);
insert into student values ( 'dinesh',87);

truncate table student

select * from student;
declare @rollno int ,@name varchar(20),@per int;
print('---------------------student report card--------------------------')

declare stud cursor for
select * from student
order by rollno

open stud

fetch next from  stud 
into @rollno ,@name,@per;

print  'ROLL NO     NAME     PERCENTAGE     GRADE  '

WHILE @@FETCH_STATUS=0
begin 
if @per<=34
		print '  ' +cast(@rollno as varchar(10))+'         '+cast(@name as varchar(10))+ '         '+cast(@per as varchar(10))+ '         '+'FAIL HOGYA'
else if @per<=40
		print '  ' +cast(@rollno as varchar(10))+'         '+cast(@name as varchar(10))+ '         '+cast(@per as varchar(10))+ '         '+'GRADE D '
else if @per<=60
		print '  ' +cast(@rollno as varchar(10))+'         '+cast(@name as varchar(10))+ '         '+cast(@per as varchar(10))+'         '+'GRADE C '
else if @per<=80
		print '  ' +cast(@rollno as varchar(10))+'         '+cast(@name as varchar(10))+ '         '+cast(@per as varchar(10))+ '         '+'GRADE B '
else  
		print '  ' +cast(@rollno as varchar(10))+'         '+cast(@name as varchar(10))+ '         '+cast(@per as varchar(10))+ '         '+'GRADE A '


FETCH next from  stud 
into @rollno ,@name,@per;

end
close stud;
deallocate stud;
