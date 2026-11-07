
CREATE TABLE students (
  student_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE marks (
  mark_id SERIAL PRIMARY KEY,
  student_id INT,
  subject VARCHAR(50),
  marks INT,
  FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO students (name)
VALUES ('Akarsh Vyas'), ('Simran Mehta'), ('Rohan Gupta');

INSERT INTO marks (student_id, subject, marks)
VALUES
(1, 'English', 85), (1, 'Math', 89), (1, 'Science', 92),
(2, 'English', 80), (2, 'Math', 75), (2, 'Science', 78),
(3, 'English', 72), (3, 'Math', 70), (3, 'Science', 74);


--INNER JOIN (default value for join)
select * from students s 
join marks m on s.student_id = m.student_id;

--ex2
select s.name, m.subject, m.marks 
from students s join marks m 
on s.student_id = m.student_id
where name = 'Simran Mehta';

--left join 
Insert into students (name)
values ('Harsh Patel');

select s.name, m.subject, m.marks 
from students s join marks m 
on s.student_id = m.student_id;

--wont show harsh patel marks because of inner join 
--using left join for this
--there canbe extra primary key but no extra foreign key as its not possible 

--LEFT JOIN(shows all values of left table even if right table values are null)

select s.name, m.subject, m.marks
from students s left join marks m 
on s.student_id = m.student_id; 	

--RIGHT JOIN(shows all values of right table even if left table values are null)
INSERT INTO marks (student_id, subject, marks)
VALUES (4, 'English', 78), (4, 'Math' , 89), (4, 'Science', 76);

select s.name, m.subject, m.marks 
from students s right join marks m 
on s.student_id = m.student_id;

--FULL JOIN - typa full join
Insert into students (name)
values ('Shreyash Rawat');

INSERT INTO marks (student_id, subject, marks)
VALUES (5, 'English', 100), (5, 'Math' , 100), (5, 'Science', 100);

select s.name, m.subject, m.marks 
from students s full join marks m 
on s.student_id = m.student_id;

--cross join (creates all possible combination within tables)
select s.name, m.subject, m.marks 
from students s cross join marks m; 