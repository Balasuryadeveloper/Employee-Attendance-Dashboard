
CREATE DATABASE HRMS;
USE HRMS;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    HireDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE LeaveTypes (
    LeaveTypeID INT PRIMARY KEY,
    LeaveTypeName VARCHAR(50)
);

CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT,
    AttendanceDate DATE,
    CheckIn TIME,
    CheckOut TIME,
    LeaveTypeID INT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (LeaveTypeID) REFERENCES LeaveTypes(LeaveTypeID)
);


INSERT INTO Departments VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Sales');


INSERT INTO LeaveTypes VALUES
(1, 'Sick Leave'),
(2, 'Casual Leave'),
(3, 'Paid Leave');

INSERT INTO Attendance VALUES
(1, 101, '2025-11-24', '09:00:00', '17:00:00', NULL),
(2, 102, '2025-11-24', '09:15:00', '17:30:00', NULL),
(3, 103, '2025-11-24', NULL, NULL, 1),
(4, 104, '2025-11-24', '08:45:00', '16:45:00', NULL),
(5, 101, '2025-11-25', '09:05:00', '17:10:00', NULL),
(6, 102, '2025-11-25', NULL, NULL, 2),
(7, 103, '2025-11-25', '09:00:00', '17:00:00', NULL),
(8, 104, '2025-11-25', '09:10:00', '17:20:00', NULL);
select * from dbo.Attendance;
select * from Departments;
Select * from Employees;
Select * from LeaveTypes;