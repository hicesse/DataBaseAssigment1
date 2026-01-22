CREATE TABLE students(
student_id INT PRIMARY KEY AUTO_INCREMENT,
student_name VARCHAR(50) NOT NULL,
student_age INT NOT NULL,
major_id int);

CREATE TABLE majors(
major_id INT PRIMARY KEY AUTO_INCREMENT,
major_name VARCHAR(30) NOT NULL
);

CREATE TABLE courses(
course_id INT PRIMARY KEY auto_increment,
course_name VARCHAR(30) NOT NULL,
major_id INT NOT NULL
);


ALTER TABLE students
ADD CONSTRAINT major_fk_std
FOREIGN KEY(major_id) REFERENCES majors(major_id);


ALTER TABLE courses
ADD CONSTRAINT major_fk_cor
FOREIGN KEY(major_id) REFERENCES majors(major_id);


INSERT INTO majors(major_name)
VALUES ("Informatics"),("Information System");

INSERT INTO students(student_name, student_age, major_id)
VALUES ("Sarah", 18, 1),("Celine", 19, 2), ("Bryan", 20, 1);

INSERT INTO courses(course_name, major_id)
VALUES ("DBMS", 1),("DSA", 1), ("ISPM", 2), ("AIS", 2);

select 	student_id AS "student id", 
		student_name AS "student name", student_age AS "age", m.major_id AS "major id",
        m.major_name AS "major name", c.course_name AS "course name", c.course_id AS "course id"
from students s
join majors m on s.major_id = m.major_id
join courses c on m.major_id = c.major_id
ORDER BY student_name ASC;
