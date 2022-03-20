CREATE DATABASE Company;
USE Company;

CREATE TABLE Regions(
regionId INT,
regionName VARCHAR(15),
PRIMARY KEY (regionId)
);

CREATE TABLE Countries(
countryId INT,
countryName VARCHAR(25),
regionId INT,
PRIMARY KEY (countryId),
FOREIGN KEY (regionId) REFERENCES Regions (regionId)
);

CREATE TABLE Locations(
locationId INT,
streetAddress VARCHAR(25),
postalCode INT,
city VARCHAR(20),
stateProvince VARCHAR(20),
countryId INT,
PRIMARY KEY (locationId),
FOREIGN KEY (countryId) REFERENCES Countries (countryId)
);

CREATE TABLE Departments(
departmentId INT,
departmentName VARCHAR(20),
locationId INT,
PRIMARY KEY (departmentId),
FOREIGN KEY (locationId) REFERENCES Locations (locationId)
);

CREATE TABLE Jobs(
jobId INT,
jobTitle VARCHAR(20),
minSalary INT,
maxSalary INT,
PRIMARY KEY (jobId)
);

CREATE TABLE Employees(
employeeId INT,
firstName VARCHAR(20),
lastName VARCHAR(20),
email VARCHAR(20),
phoneNumber INT,
hireDate DATE,
jobId INT,
salary INT,
managerId INT,
departmentId INT,
PRIMARY KEY (employeeId),
FOREIGN KEY (jobId) REFERENCES Jobs (jobId),
FOREIGN KEY (departmentId) REFERENCES Departments (departmentId)
);

CREATE TABLE Dependents(
dependentId INT,
firstName VARCHAR(20),
lastName VARCHAR(20),
relationship VARCHAR(20),
employeeId INT,
PRIMARY KEY (dependentId),
FOREIGN KEY (employeeId) REFERENCES Employees (employeeId)
);

