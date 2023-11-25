/*Reverse engineer flinking db for visualising Foreign Keys*/

create database cascadingFk;
use cascadingFk;

create table parent(
	id int Primary key
);

create table child(
	id int primary key,
    parentId int,
    foreign key (parentId) references parent(id)
    on update cascade
    on delete cascade
);

insert into parent
(id)
values
(101),
(102);

insert into child
(id, parentId)
values
(10,101),
(91,101),
(20,102);

select * from child;
select * from parent;

/* Cascading changes visualised*/
update parent
set id=103
where id=101;

use college;
alter table student
add column age int not null;

alter table student
drop column age;

alter table student rename to StudentsList; /*not run*/
select * from student;

use xyz;
truncate table table1;

