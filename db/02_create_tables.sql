-- Create tables in employeeDB_dev
USE employeeDB_dev;

CREATE TABLE IF NOT EXISTS Department (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Position (
    PositionID INT AUTO_INCREMENT PRIMARY KEY,
    PositionName VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Project (
    ProjectID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentID INT NOT NULL,
    ProjectName VARCHAR(150) NOT NULL,
    ProjectDescription VARCHAR(255) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID)
);

CREATE TABLE IF NOT EXISTS Employee (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(64) NOT NULL,
    LastName VARCHAR(64) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Gender CHAR(1) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(64) NOT NULL,
    State VARCHAR(64) NOT NULL,
    ZipCode VARCHAR(20) NOT NULL,
    DepartmentID INT NOT NULL,
    PositionID INT NOT NULL,
    HireDate DATE NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    ProjectID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID),
    FOREIGN KEY (PositionID) REFERENCES Position (PositionID),
    FOREIGN KEY (ProjectID) REFERENCES Project (ProjectID)
);

CREATE TABLE IF NOT EXISTS Task (
    TaskID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    TaskDescription VARCHAR(255) NOT NULL,
    TaskDueDate DATE NOT NULL,
    TaskCompleted BOOLEAN,
    FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
);

CREATE TABLE IF NOT EXISTS Attendance (
    AttendanceID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    AttendanceDate DATE,
    StartTime TIME,
    EndTime TIME,
    FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
);

CREATE TABLE IF NOT EXISTS EmployeeLeave (
    LeaveID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    LeaveStartDate DATE NOT NULL,
    LeaveEndDate DATE NOT NULL,
    LeaveType VARCHAR(50) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
);

CREATE TABLE IF NOT EXISTS Training (
    TrainingID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    TrainingName VARCHAR(150) NOT NULL,
    TrainingDueDate DATE,
    TrainingCompleted BOOLEAN NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE IF NOT EXISTS PerformanceReview (
    ReviewID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    ReviewDate DATE NOT NULL,
    Reviewer VARCHAR(100) NOT NULL,
    Rating INT NOT NULL,
    Comments TEXT,
    FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
);

CREATE TABLE IF NOT EXISTS Benefits (
    BenefitID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    BenefitType VARCHAR(50) NOT NULL,
    BenefitStartDate DATE NOT NULL,
    BenefitEndDate DATE NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
);

CREATE TABLE IF NOT EXISTS EmployeeDocument (
    DocumentID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    DocumentName VARCHAR(100) NOT NULL,
    DocumentType VARCHAR(50) NOT NULL,
    UploadDate DATE NOT NULL,
    FilePath VARCHAR(255) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
);


-- Create tables in employeeDB_test
USE employeeDB_test;

CREATE TABLE IF NOT EXISTS Department (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Position (
    PositionID INT AUTO_INCREMENT PRIMARY KEY,
    PositionName VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Project (
    ProjectID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentID INT NOT NULL,
    ProjectName VARCHAR(150) NOT NULL,
    ProjectDescription VARCHAR(255) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID)
);

CREATE TABLE IF NOT EXISTS Employee (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(64) NOT NULL,
    LastName VARCHAR(64) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Gender CHAR(1) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(64) NOT NULL,
    State VARCHAR(64) NOT NULL,
    ZipCode VARCHAR(20) NOT NULL,
    DepartmentID INT NOT NULL,
    PositionID INT NOT NULL,
    HireDate DATE NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    ProjectID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID),
    FOREIGN KEY (PositionID) REFERENCES Position (PositionID),
    FOREIGN KEY (ProjectID) REFERENCES Project (ProjectID)
);

CREATE TABLE IF NOT EXISTS Task (
    TaskID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    TaskDescription VARCHAR(255) NOT NULL,
    TaskDueDate DATE NOT NULL,
    TaskCompleted BOOLEAN,
    FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
);

CREATE TABLE IF NOT EXISTS Attendance (
    AttendanceID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    AttendanceDate DATE,
    StartTime TIME,
    EndTime TIME,
    FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
);

CREATE TABLE IF NOT EXISTS EmployeeLeave (
    LeaveID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    LeaveStartDate DATE NOT NULL,
    LeaveEndDate DATE NOT NULL,
    LeaveType VARCHAR(50) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
);

CREATE TABLE IF NOT EXISTS Training (
    TrainingID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    TrainingName VARCHAR(150) NOT NULL,
    TrainingDueDate DATE,
    TrainingCompleted BOOLEAN NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE IF NOT EXISTS PerformanceReview (
    ReviewID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    ReviewDate DATE NOT NULL,
    Reviewer VARCHAR(100) NOT NULL,
    Rating INT NOT NULL,
    Comments TEXT,
    FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
);

CREATE TABLE IF NOT EXISTS Benefits (
    BenefitID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    BenefitType VARCHAR(50) NOT NULL,
    BenefitStartDate DATE NOT NULL,
    BenefitEndDate DATE NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
);

CREATE TABLE IF NOT EXISTS EmployeeDocument (
    DocumentID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    DocumentName VARCHAR(100) NOT NULL,
    DocumentType VARCHAR(50) NOT NULL,
    UploadDate DATE NOT NULL,
    FilePath VARCHAR(255) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
);
