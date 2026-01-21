CREATE TABLE students(
student_id INT PRIMARY KEY AUTO_INCREMENT,
student_name VARCHAR(50),
student_age INT,
major_id int);


CREATE TABLE majors(
major_id INT PRIMARY KEY AUTO_INCREMENT,
major_name VARCHAR(30)
);

CREATE TABLE courses(
course_id INT PRIMARY KEY,
course_name VARCHAR(30),
major_id INT
);


ALTER TABLE students
ADD CONSTRAINT major_fk_std
FOREIGN KEY(major_id) REFERENCES majors(major_id);


ALTER TABLE courses
ADD CONSTRAINT major_fk_cor
FOREIGN KEY(major_id) REFERENCES majors(major_id);


select 	student_id AS "student id", 
		student_name AS "student name", student_age AS "age", m.major_id AS "major id",
        m.major_name AS "major name", c.course_name AS "course name", c.course_id AS "course id"
from students s
join majors m on s.major_id = m.major_id
join courses c on m.major_id = c.major_id;

