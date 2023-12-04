-- Grant permsissions for employeeDB_dev
-- Employee User Permissions- Access to view their personal info, project details, and benefits
CREATE USER IF NOT EXISTS 'employee'@'%' IDENTIFIED BY 'employeepass';
GRANT SELECT ON employeeDB_dev.Employee TO 'employee'@'%';
GRANT SELECT ON employeeDB_dev.Project TO 'employee'@'%';
GRANT SELECT ON employeeDB_dev.Benefits TO 'employee'@'%';
GRANT SELECT ON employeeDB_dev.Training TO 'employee'@'%';
GRANT SELECT ON employeeDB_dev.PerformanceReview TO 'employee'@'%';

-- Manager User Permissions- Access to manage employee data, projects, tasks, and attendance
CREATE USER IF NOT EXISTS 'manager'@'%' IDENTIFIED BY 'managerpass';
GRANT SELECT, UPDATE ON employeeDB_dev.Employee TO 'manager'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON employeeDB_dev.Task TO 'manager'@'%';
GRANT SELECT, INSERT, UPDATE ON employeeDB_dev.Project TO 'manager'@'%';
GRANT SELECT ON employeeDB_dev.Attendance TO 'manager'@'%';

-- HR User Permissions- Full access to all employee related tables
CREATE USER IF NOT EXISTS 'hr'@'%' IDENTIFIED BY 'hrpass';
GRANT ALL PRIVILEGES ON employeeDB_dev.* TO 'hr'@'%';



-- Grant permssions for employeeDB_test
-- Employee User Permissions- Access to view their personal info, project details, and benefits
CREATE USER IF NOT EXISTS 'employee'@'%' IDENTIFIED BY 'employeepass';
GRANT SELECT ON employeeDB_test.Employee TO 'employee'@'%';
GRANT SELECT ON employeeDB_test.Project TO 'employee'@'%';
GRANT SELECT ON employeeDB_test.Benefits TO 'employee'@'%';
GRANT SELECT ON employeeDB_test.Training TO 'employee'@'%';
GRANT SELECT ON employeeDB_test.PerformanceReview TO 'employee'@'%';

-- Manager User Permissions- Access to manage employee data, projects, tasks, and attendance
CREATE USER IF NOT EXISTS 'manager'@'%' IDENTIFIED BY 'managerpass';
GRANT SELECT, UPDATE ON employeeDB_test.Employee TO 'manager'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON employeeDB_test.Task TO 'manager'@'%';
GRANT SELECT, INSERT, UPDATE ON employeeDB_test.Project TO 'manager'@'%';
GRANT SELECT ON employeeDB_test.Attendance TO 'manager'@'%';

-- HR User Permissions- Full access to all employee related tables
CREATE USER IF NOT EXISTS 'hr'@'%' IDENTIFIED BY 'hrpass';
GRANT ALL PRIVILEGES ON employeeDB_test.* TO 'hr'@'%';

FLUSH PRIVILEGES;