-- MySQL and it is not a programming language

-- Create
CREATE TABLE employee (
  Id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL
);

-- Insert
INSERT INTO employee (id, name, dept) VALUES (1, 'Clark', 'Sales');
INSERT INTO employee  VALUES (2, 'Dave', 'Accounting');
INSERT INTO employee  VALUES (3, 'Dave', 'Accounting');

-- Fetch 
-- SELECT * FROM employee;

-- Where clause
-- SELECT * FROM employee where name = 'Dave' and dept = 'Accounting';
-- SELECT * FROM employee where name = 'Dave' or dept = 'Sales';
-- SELECT * FROM employee where not id = 1;

-- Sort
-- select * from employee order by id desc;

-- Update 
-- update employee set name="Vikash" where id = 1;
-- select * from employee;

-- Delete
-- delete from employee where id = 1;
-- select * from employee;

-- Limit Clause
-- select * from employee limit 2;
-- select * from employee where name="Dave" limit 1;

-- Exists
-- SELECT EXISTS(SELECT * FROM employee WHERE id = 2); -- Return true or false

-- Group by
-- select count(name) from employee where name = "Dave" Group by name;
-- select count(id) from employee;


-- Creating another TABLE
create TABLE student(
      Sid INTEGER PRIMARY KEY,
      name TEXT NOT NULL,
      branch TEXT NOT NULL
);

insert into student (sid, name, branch) VALUES (1, "Sanu", "cs");
insert into student (sid, name, branch) VALUES (2, "mangal", "ex");
insert into student (sid, name, branch) VALUES (4, "suraj", "me");

-- select * from employee;
-- SELECT ''; -- Getting new line in MySQL
-- select * from student;

SELECT employee.Id, student.name, employee.dept
FROM employee INNER JOIN student ON employee.Id=student.Sid;


