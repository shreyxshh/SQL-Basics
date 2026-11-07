create table students(
	rollno SERIAL PRIMARY KEY,
	name varchar(50),
	age int
);

insert into students(name, age)
values ('shreyash', 20),
		('rashmi', 22);

--addding new column to table
ALTER table students
add column email varchar(100) default 'not provided'; 

--removing column from table
ALTER table students
drop column email;

--renaming column
alter table students
rename name to full_name; 

--changing datatype
alter table students
alter column age type smallint;

--setting default value for any column
alter table students
alter column age set default 18;

--removing default 
alter table students
alter column age drop default;

--adding constraints
alter table students
add constraint age_check check (age>=0);

--dropping contraints 
alter table students
drop constraint age_check;

--rename whole table 
alter table students 
rename to school_students;

select * from school_students;