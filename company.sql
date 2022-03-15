show databases;
use Company;


create table regions(
reg_id int primary key auto_increment,
reg_name varchar(20)
);

create table countries(
cont_id int primary key auto_increment,
cont_name varchar(20),
reg_id int 
);

create table locations(
loc_id int primary key auto_increment,
street_add varchar(20),
pin_code int,
city varchar(20),
state_prov varchar(20),
cont_id int
);

create table departments(
dep_id int primary key auto_increment,
dep_name varchar(20),
loc_id int
);

create table jobs(
job_id int primary key auto_increment,
job_title varchar(20),
min_sal int,
max_sal int
);

create table employees(
emp_id int primary key auto_increment,
first_name varchar(20),
last_name varchar(20),
email varchar(20),
phn_no int,
hire_date DATE,
job_id int,
salary int,
manager_id int,
dep_id int
);

create table dependents(
depend_id int primary key auto_increment,
first_name varchar(20),
last_name varchar(20),
relation varchar(20),
emp_id int
);



alter table countries
add FOREIGN KEY (reg_id) references regions(reg_id);

alter table locations
add FOREIGN KEY (cont_id) references countries(cont_id);

alter table departments
add FOREIGN KEY (loc_id) references locations(reg_id);

alter table employees
add FOREIGN KEY (dep_id) references departments(dep_id);

alter table employees
add FOREIGN KEY (job_id) references jobs(job_id);

alter table dependents
add FOREIGN KEY (emp_id) references employees(emp_id);



alter table regions AUTO_INCREMENT=101;
insert into regions
values('Asia');
insert into regions(reg_name)
values('Europe');

alter table countries AUTO_INCREMENT=201;
insert into countries
values('India');
insert into regions
values('Bhutan');

alter table locations AUTO_INCREMENT=301;
insert into locations
values('Becker Street',600001,'New York','Washington');
insert into locations
values('Down Street',600002,'Tokyo','Chitzou');

show tables;
select * from countries;