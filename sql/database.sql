/* Enter "USE {database};" to start exploring your data.
   Press Ctrl + I to try out AI-generated SQL queries or SQL rewrite using Chat2Query. */

-- Create Database
create database student_task_manager;

use student_task_manager;

-- create students table
create table students( 
student_id int primary key auto_increment, 
first_name varchar(100), 
last_name varchar(100),
gender varchar(20),
mobile_number varchar(20),
email varchar(100),
course_name varchar(100),
admission_date date
);

-- Insert sample data into students table
insert into students (
first_name,
last_name,
gender,
mobile_number,
email,
course_name,
admission_date
)
values (
'Rehan',
'mujawar',
'Male',
'9876543210',
'Rehan0909@gmail.com',
'Python',
curdate()
);

-- Retrieve data from students table
select * from students;

-- update students 
-- set 
-- gender = 'Female',
-- mobile_number = '1234456667',
-- email = 'smita@gmail.com',
-- course_name = 'machine learning',
-- admission_date = curdate()
-- where student_id = 2;

select * from students;

-- Create an attendance table
create table attendance
(
    attendance_id int primary key auto_increment,
    student_id int,
    attendance_date date,
    attendance_status varchar(20),
    foreign key (student_id)
    references students(student_id)
);

-- Create tasks table
create table tasks
(
    task_id int primary key auto_increment,
    task_name varchar(200),
    task_description text,
    maximum_marks int
);

-- Insert sample data into tasks table
insert into tasks
(
    task_name,
    task_description,
    maximum_marks
)
values
(
    'Python Assignment',
    'Basic Python Practice',
    100
);

-- Create student_tasks table
create table student_tasks
(
    student_task_id int primary key auto_increment,
    student_id int,
    task_id int,
    obtained_marks int,
    submission_date date,
    foreign key (student_id)
    references students(student_id),
    foreign key (task_id)
    references tasks(task_id)
);


select * from tasks;

alter table student_tasks
add column submission_status varchar(50);

alter table student_tasks
add column remarks text;

select * from student_tasks;

-- Create users table
create table users
(
    user_id int primary key auto_increment,
    username varchar(100),
    password varchar(100),
    full_name varchar(200)
);

insert into users
(
    username,
    password,
    full_name
)
values
(
    'admin',
    'admin123',
    'System Administrator'
);

select * from users;

show tables;