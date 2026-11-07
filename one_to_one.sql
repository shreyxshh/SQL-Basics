
--table 1
create table students (
	student_id serial primary key, 
	name varchar(50) not null
);

--table 2
create table student_profiles(
	student_id int primary key ,
	address text,
	age int, 
	phone char(10)
);

ALTER TABLE student_profiles
ADD CONSTRAINT fk_student_id
FOREIGN KEY (student_id)
REFERENCES students(student_id);

--values insertion
INSERT INTO students (name)
VALUES
('Akarsh Vyas'), ('Simran Mehta'), ('Rohan Gupta');

INSERT INTO student_profiles (student_id, address, age, phone)
VALUES
(1, 'Delhi, India', 22, '9999999999'),
(2, 'Mumbai, India', 21, '8888888888'),
(3, 'Bangalore, India', 23, '7777777777');

SELECT 
	s.student_id, 
	s.name, 
	sp.address, 
	sp.age, 
	sp.phone
FROM students s
JOIN student_profiles sp 
ON s.student_id = sp.student_id;

ALTER DATABASE new_db RENAME TO one_to_one;

select * from students;
select * from student_profiles;