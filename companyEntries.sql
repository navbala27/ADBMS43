/*USE Company;

INSERT INTO regions (regionId,regionName) 
VALUES
(1,'Asia'),
(2,'Europe'),
(3,'Africa'),
(4,'Australia');

SELECT * FROM regions;

INSERT INTO countries (countryId,countryName,regionId)
VALUES
(10,'India',1),
(11,'Bhutan',1),
(40,'New Zealand',4),
(30,'Sudan',3);

SELECT * FROM countries;

INSERT INTO locations (locationId,streetAddress,postalCode,city,stateProvince,countryId)
VALUES
(101,'Mumbai',600001,'Bombay','Maharashtra',10),
(114,'Paro',768901,'Vagi','Psirang',11),
(407,'Christ Church',331001,'Queens','Derbi',40),
(309,'Masai',202012,'Mara','Pretoria',30);

SELECT * FROM locations;

INSERT INTO departments (departmentId,departmentName,locationId)
VALUES
(098,'MCA',101),
(765,'MBA',114),
(432,'MBBS',407),
(111,'MA',309);

SELECT * FROM departments;

INSERT INTO jobs (jobId,jobTitle,minSalary,maxSalary)
VALUES
(900,'Data Scientist',38000,98000),
(800,'Software Developer',27000,77000),
(700,'Stenographer',20000,35000),
(600,'Security',16000,27000);

SELECT * FROM jobs;

INSERT INTO employees (employeeId,firstName,lastName,email,phoneNumber,hireDate,jobId,salary,managerId,departmentId)
VALUES
(9001,'George','David','gd@gmail.com',98786543,'2015-04-29',900,51212,NULL,098),
(8002,'Sambhu','P P','spp@gmail.com',90807060,'2015-04-30',800,43098,567,765),
(7003,'Koya', 'K','kk@yahoo.com',97687609,'2015-04-01',700,21212,567,432),
(6004,'Mary','George','mg@ymail.com','78623411','2015-04-29',600,18888,555,111);

SELECT * from employees;*/

INSERT INTO dependents (dependentId,firstName,lastName,relationship,employeeId)
VALUES
(409,'Tony','Stark','Father',9001),
(408,'Steve','Rogers','Husband',8002),
(407,'Peter','Parker','Niece',7003),
(406,'Scott','Lang','Friend',6004);

SELECT * FROM dependents;