-- Create views in employeeDB_dev
USE employeeDB_dev;
CREATE VIEW HR_employeeLeaveManagementView AS
SELECT
    e.FirstName,
    e.LastName,
    e.Email,
    e.Phone,
    e.Address,
    e.City,
    e.State,
    e.ZipCode,
    l.LeaveStartDate,
    l.LeaveEndDate,
    l.LeaveType
FROM
    Employee e
JOIN
    EmployeeLeave l ON e.EmployeeID = l.EmployeeID;

CREATE VIEW employeePositionManagement AS
SELECT 
    e.EmployeeID, 
    e.FirstName, 
    e.LastName, 
    e.HireDate, 
    e.Salary, 
    d.DepartmentID, 
    d.DepartmentName, 
    p.PositionID, 
    p.PositionName, 
    b.BenefitID, 
    b.BenefitType, 
    b.BenefitStartDate, 
    b.BenefitEndDate, 
    t.TrainingID, 
    t.TrainingName, 
    t.TrainingDueDate, 
    t.TrainingCompleted, 
    pr.ReviewDate, 
    pr.Reviewer, 
    pr.Rating, 
    pr.Comments
FROM 
    Employee e
JOIN Department d ON e.DepartmentID = d.DepartmentID
JOIN Position p ON e.PositionID = p.PositionID
JOIN Benefits b ON e.EmployeeID = b.EmployeeID
JOIN Training t ON e.EmployeeID = t.EmployeeID
JOIN PerformanceReview pr ON e.EmployeeID = pr.EmployeeID;

CREATE VIEW employeeProfileView AS 
SELECT 
    a.FirstName, 
    a.LastName, 
    a.DateOfBirth, 
    a.Gender, 
    a.Email, 
    a.Phone, 
    a.Address, 
    a.City, 
    a.State, 
    a.ZipCode, 
    b.BenefitType, 
    b.BenefitStartDate, 
    b.BenefitEndDate, 
    c.LeaveStartDate, 
    c.LeaveEndDate, 
    c.LeaveType
FROM 
    Employee a, Benefits b, EmployeeLeave c
WHERE 
    a.EmployeeID=b.EmployeeID
AND 
    a.EmployeeID=c.EmployeeID;

-- Create views in employeeDB_test
USE employeeDB_test;
CREATE VIEW HR_EmployeeLeaveManagement AS
SELECT
    e.FirstName,
    e.LastName,
    e.Email,
    e.Phone,
    e.Address,
    e.City,
    e.State,
    e.ZipCode,
    l.LeaveStartDate,
    l.LeaveEndDate,
    l.LeaveType
FROM
    Employee e
JOIN
    EmployeeLeave l ON e.EmployeeID = l.EmployeeID;

CREATE VIEW employeePositionManagement AS
SELECT 
    e.EmployeeID, 
    e.FirstName, 
    e.LastName, 
    e.HireDate, 
    e.Salary, 
    d.DepartmentID, 
    d.DepartmentName, 
    p.PositionID, 
    p.PositionName, 
    b.BenefitID, 
    b.BenefitType, 
    b.BenefitStartDate, 
    b.BenefitEndDate, 
    t.TrainingID, 
    t.TrainingName, 
    t.TrainingDueDate, 
    t.TrainingCompleted, 
    pr.ReviewDate, 
    pr.Reviewer, 
    pr.Rating, 
    pr.Comments
FROM 
    Employee e
JOIN Department d ON e.DepartmentID = d.DepartmentID
JOIN Position p ON e.PositionID = p.PositionID
JOIN Benefits b ON e.EmployeeID = b.EmployeeID
JOIN Training t ON e.EmployeeID = t.EmployeeID
JOIN PerformanceReview pr ON e.EmployeeID = pr.EmployeeID;

CREATE VIEW employeeProfileView AS 
SELECT 
    a.FirstName, 
    a.LastName, 
    a.DateOfBirth, 
    a.Gender, 
    a.Email, 
    a.Phone, 
    a.Address, 
    a.City, 
    a.State, 
    a.ZipCode, 
    b.BenefitType, 
    b.BenefitStartDate, 
    b.BenefitEndDate, 
    c.LeaveStartDate, 
    c.LeaveEndDate, 
    c.LeaveType
FROM 
    Employee a, Benefits b, EmployeeLeave c
WHERE 
    a.EmployeeID=b.EmployeeID
AND 
    a.EmployeeID=c.EmployeeID;