use college;
drop table student;

create table student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

select * from student;

insert into student
(rollno, name)
values
(101,"Srihari"),
(102,"Annie");


create table table1(
	id int unique);
    
/* inserting copies brings error */
insert into table1
(id)
values
(101),(102);
insert into table1 values (101); /*shows duplicate entry*/

create table emp(
	id int,
    salary int default 25000,
    Primary Key (id));

insert into emp (id) values (01);
select * from emp



